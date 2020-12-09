// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Linq;
using Dapper;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Helpers;
using EdFi.Ods.Utilities.Migration.Queries;
using EdFi.Ods.Utilities.Migration.VersionLevel;

namespace EdFi.Ods.Utilities.Migration.Providers
{
    public class SqlServerCurrentOdsApiVersionProvider : CurrentOdsApiVersionProviderBase
    {
        public SqlServerCurrentOdsApiVersionProvider(IDatabaseConnectionProvider databaseConnectionProvider)
            : base(databaseConnectionProvider)
        {
        }

        public override CurrentOdsApiVersion Get(string connectionString)
        {
            var result = new CurrentOdsApiVersion();
            /*
             * It is currently planned for API version to be made available
             * from a standardized location beginning in a future v3 release.
             * As a workaround, for earlier versions, this query will look
             * to the schema to determine the approximate version.
             *
             * This is used by the upgrade utility to determine if the ODS
             * is compatible for upgrade and select the correct migration manager.
             *
             * If required, this behavior may be overridden manually by explicitly
             * specifying the current API version at upgrade time.
             */

            using var connection = DatabaseConnectionProvider.CreateConnection(connectionString);


            var tables = GetTableEntries(connection);

            var edfiTableEntries = tables.Where(t => t.TableSchema == "edfi")
                .Select(t => t.TableName)
                .ToList();

            // Older check based on existence of tables, used pre v311
            var versionLevelCheckResult = new SchemaCheckResultForOlderVersionsOnly(edfiTableEntries).Result();

            // Only use newer version checks if the older version check found v31.
            if (versionLevelCheckResult == null || versionLevelCheckResult == EdFiOdsVersion.V31)
            {
                if (tables.Any(t => t.TableSchema == "dbo" && t.TableName == "DeployJournal"))
                {
                    var existingJournalScriptEntries = connection
                        .Query<string>(@"SELECT ScriptName FROM dbo.DeployJournal")
                        .ToHashSet();

                    result.ExistingFeatures = CheckForExistingFeatures(existingJournalScriptEntries);

                    var versionLevel34Check = new VersionCheckBasedOnVersionFunction(connection).Result();

                    versionLevelCheckResult = versionLevel34Check ??
                                              new VersionCheckBasedOnDeploymentJournal(existingJournalScriptEntries).Result();
                }
                else if (tables.Any(t => t.TableSchema == "dbo" && t.TableName == "VersionLevel"))
                {
                    var databaseVersionLevels = connection
                        .Query<DatabaseVersionLevel>(
                            @"SELECT ScriptSource, ScriptType, DatabaseType, SubType, VersionLevel FROM dbo.VersionLevel")
                        .ToList();

                    versionLevelCheckResult =
                        new VersionCheckBasedOnVersionLevelOnly(databaseVersionLevels).Result()
                        ?? versionLevelCheckResult;

                    var edFiOdsFeatures = EdFiOdsFeature.GetAll()
                        .Where(
                            sf => databaseVersionLevels
                                .Any(
                                    y => !string.IsNullOrEmpty(y.SubType)
                                         && y.SubType.Equals(
                                             sf.SubTypeFolderName,
                                             StringComparison.InvariantCultureIgnoreCase)))
                        .ToHashSet();

                    result.ExistingFeatures = edFiOdsFeatures;
                }
            }

            result.CurrentVersion = versionLevelCheckResult;

            return result;
        }

        protected override HashSet<EdFiOdsFeature> CheckForExistingFeatures(HashSet<string> existingJournalScriptEntries)
        {
            return EdFiOdsFeature.GetAll()
                .Where(feature => existingJournalScriptEntries
                    .Any(y => !string.IsNullOrEmpty(y) && y.ToLowerInvariant()
                        .Contains(feature.SubTypeJournalContainsExpressionMsSql.ToLowerInvariant())))
                .ToHashSet();
        }

        protected class DatabaseVersionLevel
        {
            public string ScriptSource { get; set; }

            public string ScriptType { get; set; }

            public string DatabaseType { get; set; }

            public string SubType { get; set; }

            public int VersionLevel { get; set; }
        }

        private class VersionCheckBasedOnVersionLevelOnly
        {
            private const string EdFiOdsScriptSource = "ED-FI-ODS";
            private const string StructureScriptType = "STRUCTURE";
            private const string DataScriptType = "DATA";
            private const string EdFiDatabaseType = "EDFI";

            private readonly int? _edfiStructureLevel;
            private readonly int? _edfiDataLevel;

            public VersionCheckBasedOnVersionLevelOnly(List<DatabaseVersionLevel> databaseVersionLevels)
            {
                _edfiStructureLevel = databaseVersionLevels
                    .Where(
                        dvl => dvl.ScriptSource == EdFiOdsScriptSource
                               && dvl.ScriptType == StructureScriptType
                               && dvl.DatabaseType == EdFiDatabaseType &&
                               string.IsNullOrWhiteSpace(dvl.SubType))
                    .Select(dvl => dvl.VersionLevel)
                    .SingleOrDefault();

                _edfiDataLevel = databaseVersionLevels
                    .Where(
                        dvl => dvl.ScriptSource == EdFiOdsScriptSource
                               && dvl.ScriptType == DataScriptType
                               && dvl.DatabaseType == EdFiDatabaseType
                               && string.IsNullOrWhiteSpace(dvl.SubType))
                    .Select(dvl => dvl.VersionLevel)
                    .SingleOrDefault();
            }

            public EdFiOdsVersion Result()
            {
                var v311VersionLevel = new EdFiOdsVersionLevel(EdFiOdsVersion.V311);

                if (_edfiStructureLevel == v311VersionLevel.GetStructureVersionLevel()
                    && _edfiDataLevel == v311VersionLevel.GetDataVersionLevel())
                {
                    return EdFiOdsVersion.V311;
                }

                return null;
            }
        }

        private class SchemaCheckResultForOlderVersionsOnly
        {
            public SchemaCheckResultForOlderVersionsOnly(List<string> edfiTableList)
            {
                _edfiTableList = edfiTableList;
                _containsV3Tables = edfiTableList.ContainsPartial(_descriptorTablesAddedInV3, .9);
                _containsV2Tables = edfiTableList.ContainsPartial(_typeTablesAddedInV2X, .9);
                _containsV1Tables = edfiTableList.ContainsPartial(_typeTablesOnlyIn1x, .9);
            }

            private readonly List<string> _edfiTableList;
            private readonly bool _containsV3Tables;
            private readonly bool _containsV2Tables;
            private readonly bool _containsV1Tables;

            public EdFiOdsVersion Result()
            {
                if (MajorVersionIsLikelyV3() && _edfiTableList.ContainsAll(_newAssessmentTablesAddedForV25AndV31))
                {
                    return EdFiOdsVersion.V31;
                }

                if (MajorVersionIsLikelyV3() && _edfiTableList.ContainsNone(_newAssessmentTablesAddedForV25AndV31))
                {
                    return EdFiOdsVersion.V30;
                }

                if (MajorVersionIsLikelyV2() && _edfiTableList.ContainsAll(_newAssessmentTablesAddedForV25AndV31))
                {
                    return EdFiOdsVersion.V25;
                }

                if (MajorVersionIsLikelyV2() && _edfiTableList.ContainsNone(_newAssessmentTablesAddedForV25AndV31))
                {
                    return EdFiOdsVersion.V2UpTo24;
                }

                return MajorVersionIsLikelyV1()
                    ? EdFiOdsVersion.V1
                    : null;
            }

            private bool MajorVersionIsLikelyV3()
            {
                return _containsV3Tables && !_containsV2Tables && !_containsV1Tables;
            }

            private bool MajorVersionIsLikelyV2()
            {
                return _containsV2Tables && !_containsV3Tables && !_containsV1Tables;
            }

            private bool MajorVersionIsLikelyV1()
            {
                return _containsV1Tables && !_containsV2Tables && !_containsV3Tables;
            }

            private readonly List<string> _newAssessmentTablesAddedForV25AndV31 = new List<string>
            {
                "AssessmentAcademicSubject",
                "AssessmentAssessedGradeLevel",
                "LearningObjectiveAcademicSubject",
                "LearningObjectiveGradeLevel"
            };

            private readonly List<string> _descriptorTablesAddedInV3 = new List<string>
            {
                "AbsenceEventCategoryDescriptor",
                "AcademicHonorCategoryDescriptor",
                "AccountClassificationDescriptor",
                "AdditionalCreditTypeDescriptor",
                "AddressTypeDescriptor",
                "AdministrationEnvironmentDescriptor",
                "AssessmentItemCategoryDescriptor",
                "AssessmentItemResultDescriptor",
                "AssessmentReportingMethodDescriptor",
                "AttemptStatusDescriptor",
                "CalendarTypeDescriptor",
                "CareerPathwayDescriptor",
                "CharterApprovalAgencyTypeDescriptor",
                "CharterStatusDescriptor",
                "CitizenshipStatusDescriptor",
                "CohortScopeDescriptor",
                "CohortTypeDescriptor",
                "CohortYearTypeDescriptor",
                "ContactTypeDescriptor",
                "ContentClassDescriptor",
                "CostRateDescriptor",
                "CourseAttemptResultDescriptor",
                "CourseDefinedByDescriptor",
                "CourseGPAApplicabilityDescriptor",
                "CourseLevelCharacteristicDescriptor",
                "CourseRepeatCodeDescriptor",
                "CredentialTypeDescriptor",
                "CreditTypeDescriptor",
                "CurriculumUsedDescriptor",
                "DeliveryMethodDescriptor",
                "DiplomaLevelDescriptor",
                "DiplomaTypeDescriptor",
                "DisabilityDesignationDescriptor",
                "DisabilityDeterminationSourceTypeDescriptor",
                "DisciplineActionLengthDifferenceReasonDescriptor",
                "EducationalEnvironmentDescriptor",
                "EducationOrganizationCategoryDescriptor",
                "EducationPlanDescriptor",
                "ElectronicMailTypeDescriptor",
                "EntryGradeLevelReasonDescriptor",
                "EventCircumstanceDescriptor",
                "GradebookEntryTypeDescriptor",
                "GradeTypeDescriptor",
                "GunFreeSchoolsActReportingStatusDescriptor",
                "HomelessPrimaryNighttimeResidenceDescriptor",
                "HomelessProgramServiceDescriptor",
                "IdentificationDocumentUseDescriptor",
                "IncidentLocationDescriptor",
                "InstitutionTelephoneNumberTypeDescriptor",
                "InteractivityStyleDescriptor",
                "InternetAccessDescriptor",
                "InterventionClassDescriptor",
                "InterventionEffectivenessRatingDescriptor",
                "LanguageInstructionProgramServiceDescriptor",
                "LanguageUseDescriptor",
                "LearningStandardCategoryDescriptor",
                "LicenseStatusDescriptor",
                "LicenseTypeDescriptor",
                "LocalEducationAgencyCategoryDescriptor",
                "MagnetSpecialProgramEmphasisSchoolDescriptor",
                "MediumOfInstructionDescriptor",
                "MethodCreditEarnedDescriptor",
                "MigrantEducationProgramServiceDescriptor",
                "MonitoredDescriptor",
                "NeglectedOrDelinquentProgramDescriptor",
                "NeglectedOrDelinquentProgramServiceDescriptor",
                "NetworkPurposeDescriptor",
                "OldEthnicityDescriptor",
                "OperationalStatusDescriptor",
                "OtherNameTypeDescriptor",
                "ParticipationDescriptor",
                "PerformanceBaseConversionDescriptor",
                "PersonalInformationVerificationDescriptor",
                "PopulationServedDescriptor",
                "PostingResultDescriptor",
                "PostSecondaryEventCategoryDescriptor",
                "PostSecondaryInstitutionLevelDescriptor",
                "ProficiencyDescriptor",
                "ProgramSponsorDescriptor",
                "ProgramTypeDescriptor",
                "ProgressDescriptor",
                "ProgressLevelDescriptor",
                "ProviderCategoryDescriptor",
                "ProviderProfitabilityDescriptor",
                "ProviderStatusDescriptor",
                "PublicationStatusDescriptor",
                "RaceDescriptor",
                "ReasonNotTestedDescriptor",
                "RecognitionTypeDescriptor",
                "RelationDescriptor",
                "RepeatIdentifierDescriptor",
                "ResponseIndicatorDescriptor",
                "RestraintEventReasonDescriptor",
                "ResultDatatypeTypeDescriptor",
                "RetestIndicatorDescriptor",
                "SchoolCategoryDescriptor",
                "SchoolChoiceImplementStatusDescriptor",
                "SchoolFoodServiceProgramServiceDescriptor",
                "SchoolTypeDescriptor",
                "SeparationDescriptor",
                "SexDescriptor",
                "SpecialEducationProgramServiceDescriptor",
                "StaffLeaveEventCategoryDescriptor",
                "StateAbbreviationDescriptor",
                "StudentParticipationCodeDescriptor",
                "TeachingCredentialBasisDescriptor",
                "TechnicalSkillsAssessmentDescriptor",
                "TelephoneNumberTypeDescriptor",
                "TitleIPartAParticipantDescriptor",
                "TitleIPartASchoolDesignationDescriptor",
                "TribalAffiliationDescriptor",
                "VisaDescriptor"
            };

            private readonly List<string> _typeTablesAddedInV2X = new List<string>
            {
                "AcademicHonorCategoryType",
                "AchievementCategoryType",
                "AdditionalCreditType",
                "AssessmentItemCategoryType",
                "BehaviorType",
                "CharterApprovalAgencyType",
                "CourseIdentificationSystemType",
                "CourseLevelCharacteristicType",
                "DisabilityDeterminationSourceType",
                "EducationOrganizationIdentificationSystemType",
                "EducationPlanType",
                "IntegratedTechnologyStatusType",
                "LanguageType",
                "LocalEducationAgencyCategoryType",
                "MeetingDayType",
                "PerformanceBaseConversionType",
                "PersonalInformationVerificationType",
                "RestraintEventReasonType",
                "SectionCharacteristicType",
                "StudentCharacteristicType",
                "WeaponType"
            };

            private readonly List<string> _typeTablesOnlyIn1x = new List<string>
            {
                "AcademicHonorsType",
                "BehaviorCategoryType",
                "CountryCodeType",
                "CourseCodeSystemType",
                "CourseLevelCharacteristicsType",
                "DocumentCategoryType",
                "EducationOrgIdentificationSystemType",
                "EducationPlansType",
                "InterventionPopulationServedType",
                "InterventionPrescriptionDiagnosisType",
                "InterventionPrescriptionPopulationServedType",
                "InterventionStudyGradeLevelType",
                "InterventionStudyPopulationServedType",
                "InterventionStudySexType",
                "InterventionStudyStateAbbreviationType",
                "ItemCategoryType",
                "LanguagesType",
                "LEACategoryType",
                "MeetingDaysType",
                "PerformanceBaseType",
                "RestraintEventReasonsType",
                "SectionCharacteristicsType",
                "StudentCharacteristicsType"
            };
        }
    }
}