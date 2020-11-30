// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using Dapper;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Helpers;
using EdFi.Ods.Utilities.Migration.Queries;
using EdFi.Ods.Utilities.Migration.VersionLevel;

namespace EdFi.Ods.Utilities.Migration.Providers
{
    public abstract class CurrentOdsApiVersionProviderBase : ICurrentOdsApiVersionProvider
    {
        protected readonly IDatabaseConnectionProvider DatabaseConnectionProvider;
        protected string DeployJournalSchema { get; set; }

        protected string SubTypeJournalContainsExpression { get; set; }

        protected CurrentOdsApiVersionProviderBase(IDatabaseConnectionProvider databaseConnectionProvider)
        {
            DatabaseConnectionProvider = databaseConnectionProvider;
        }

        public abstract CurrentOdsApiVersion Get(string connectionString);

        protected abstract HashSet<EdFiOdsFeature> CheckForExistingFeatures(HashSet<string> existingJournalScriptEntries);

        protected List<TableEntry> GetTableEntries(DbConnection connection) =>
            connection
                .Query<TableEntry>(@"
                    SELECT TABLE_SCHEMA AS TableSchema, TABLE_NAME AS TableName
                    FROM INFORMATION_SCHEMA.TABLES")
                .ToList();

        protected class TableEntry
        {
            public string TableSchema { get; set; }

            public string TableName { get; set; }
        }

        protected class DatabaseVersionLevel
        {
            public string ScriptSource { get; set; }

            public string ScriptType { get; set; }

            public string DatabaseType { get; set; }

            public string SubType { get; set; }

            public int VersionLevel { get; set; }
        }

        protected class VersionCheckBasedOnVersionFunction
        {
            private readonly DbConnection _connection;

            public VersionCheckBasedOnVersionFunction(DbConnection connection)
            {
                _connection = connection;
            }

            public EdFiOdsVersion Result()
            {
                long? objId = _connection.QueryFirstOrDefault<long?>(@"
                    SELECT 1
                    FROM INFORMATION_SCHEMA.ROUTINES
                    WHERE SPECIFIC_SCHEMA = 'util'
                    AND ROUTINE_NAME = 'getedfiodsversion'");

                if (!objId.HasValue)
                {
                    return null;
                }

                string version = _connection.QueryFirstOrDefault<string>(@"select util.getedfiodsversion()");

                return !string.IsNullOrEmpty(version)
                    ? EdFiOdsVersion.ParseString(version)
                    : null;
            }
        }

        protected class VersionCheckBasedOnDeploymentJournal
        {
            private readonly HashSet<string> _journalScriptEntries;

            public VersionCheckBasedOnDeploymentJournal(HashSet<string> journalScriptEntries)
            {
                _journalScriptEntries = journalScriptEntries;
            }

            public EdFiOdsVersion Result()
            {
                var v33VersionLevel = new EdFiOdsVersionJournal(EdFiOdsVersion.V33);

                if (v33VersionLevel.GetJournalEntriesWithoutFeatures()
                    .Select(je => je.JournalScriptEntry)
                    .ToHashSet()
                    .IsSubsetOf(_journalScriptEntries))
                {
                    return EdFiOdsVersion.V33;
                }

                return null;
            }
        }

        protected class VersionCheckBasedOnVersionLevelOnly
        {
            private const string EdFiOdsScriptSource = "ED-FI-ODS";
            private const string StructureScriptType = "STRUCTURE";
            private const string DataScriptType = "DATA";
            private const string EdFiDatabaseType = "EDFI";

            private readonly List<DatabaseVersionLevel> _databaseVersionLevels;
            private readonly int? _edfiStructureLevel;
            private readonly int? _edfiDataLevel;

            public VersionCheckBasedOnVersionLevelOnly(List<DatabaseVersionLevel> databaseVersionLevels)
            {
                _databaseVersionLevels = databaseVersionLevels;

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

        protected class SchemaCheckResultForOlderVersionsOnly
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