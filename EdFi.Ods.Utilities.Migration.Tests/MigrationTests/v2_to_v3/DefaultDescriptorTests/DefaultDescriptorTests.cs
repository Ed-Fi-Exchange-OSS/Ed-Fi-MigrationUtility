// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using Dapper;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v3;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v2_to_v3._Shared;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v2_to_v3.DefaultDescriptorTests
{
    [TestFixture]
    public class DefaultDescriptorTests : V2ToV3MigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.RestoreDuringFixtureSetupOnly;
        private static readonly List<string> AllDescriptors = GetAllImportedDescriptorNames();
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V25;

        [OneTimeSetUp]
        public void TestFixtureSetup()
        {
            var upgradeResult = PerformTestMigration(null);
            AssertUpgradeSucceeded(upgradeResult);
        }

        [TestCase("AbsenceEventCategoryDescriptor.xml")]
        [TestCase("AcademicHonorCategoryDescriptor.xml")]
        [TestCase("AcademicSubjectDescriptor.xml")]
        [TestCase("AccommodationDescriptor.xml")]
        [TestCase("AccountClassificationDescriptor.xml")]
        [TestCase("AchievementCategoryDescriptor.xml")]
        [TestCase("AdditionalCreditTypeDescriptor.xml")]
        [TestCase("AddressTypeDescriptor.xml")]
        [TestCase("AdministrationEnvironmentDescriptor.xml")]
        [TestCase("AdministrativeFundingControlDescriptor.xml")]
        [TestCase("AssessmentCategoryDescriptor.xml")]
        [TestCase("AssessmentIdentificationSystemDescriptor.xml")]
        [TestCase("AssessmentItemCategoryDescriptor.xml")]
        [TestCase("AssessmentItemResultDescriptor.xml")]
        [TestCase("AssessmentPeriodDescriptor.xml")]
        [TestCase("AssessmentReportingMethodDescriptor.xml")]
        [TestCase("AttemptStatusDescriptor.xml")]
        [TestCase("AttendanceEventCategoryDescriptor.xml")]
        [TestCase("BehaviorDescriptor.xml")]
        [TestCase("CalendarEventDescriptor.xml")]
        [TestCase("CalendarTypeDescriptor.xml")]
        [TestCase("CareerPathwayDescriptor.xml")]
        [TestCase("CharterApprovalAgencyTypeDescriptor.xml")]
        [TestCase("CharterStatusDescriptor.xml")]
        [TestCase("CitizenshipStatusDescriptor.xml")]
        [TestCase("ClassroomPositionDescriptor.xml")]
        [TestCase("CohortScopeDescriptor.xml")]
        [TestCase("CohortTypeDescriptor.xml")]
        [TestCase("CohortYearTypeDescriptor.xml")]
        [TestCase("CompetencyLevelDescriptor.xml")]
        [TestCase("ContactTypeDescriptor.xml")]
        [TestCase("ContentClassDescriptor.xml")]
        [TestCase("ContinuationOfServicesReasonDescriptor.xml")]
        [TestCase("CostRateDescriptor.xml")]
        [TestCase("CountryDescriptor.xml")]
        [TestCase("CourseAttemptResultDescriptor.xml")]
        [TestCase("CourseDefinedByDescriptor.xml")]
        [TestCase("CourseGPAApplicabilityDescriptor.xml")]
        [TestCase("CourseIdentificationSystemDescriptor.xml")]
        [TestCase("CourseLevelCharacteristicDescriptor.xml")]
        [TestCase("CourseRepeatCodeDescriptor.xml")]
        [TestCase("CredentialFieldDescriptor.xml")]
        [TestCase("CredentialTypeDescriptor.xml")]
        [TestCase("CreditTypeDescriptor.xml")]
        [TestCase("CurriculumUsedDescriptor.xml")]
        [TestCase("DeliveryMethodDescriptor.xml")]
        [TestCase("DiagnosisDescriptor.xml")]
        [TestCase("DiplomaLevelDescriptor.xml")]
        [TestCase("DiplomaTypeDescriptor.xml")]
        [TestCase("DisabilityDescriptor.xml")]
        [TestCase("DisabilityDesignationDescriptor.xml")]
        [TestCase("DisabilityDeterminationSourceTypeDescriptor.xml")]
        [TestCase("DisciplineActionLengthDifferenceReasonDescriptor.xml")]
        [TestCase("DisciplineDescriptor.xml")]
        [TestCase("EducationalEnvironmentDescriptor.xml")]
        [TestCase("EducationOrganizationCategoryDescriptor.xml")]
        [TestCase("EducationOrganizationIdentificationSystemDescriptor.xml")]
        [TestCase("EducationPlanDescriptor.xml")]
        [TestCase("ElectronicMailTypeDescriptor.xml")]
        [TestCase("EmploymentStatusDescriptor.xml")]
        [TestCase("EntryGradeLevelReasonDescriptor.xml")]
        [TestCase("EntryTypeDescriptor.xml")]
        [TestCase("EventCircumstanceDescriptor.xml")]
        [TestCase("ExitWithdrawTypeDescriptor.xml")]
        [TestCase("GradebookEntryTypeDescriptor.xml")]
        [TestCase("GradeLevelDescriptor.xml")]
        [TestCase("GradeTypeDescriptor.xml")]
        [TestCase("GradingPeriodDescriptor.xml")]
        [TestCase("GraduationPlanTypeDescriptor.xml")]
        [TestCase("GunFreeSchoolsActReportingStatusDescriptor.xml")]
        [TestCase("HomelessPrimaryNighttimeResidenceDescriptor.xml")]
        [TestCase("HomelessProgramServiceDescriptor.xml")]
        [TestCase("IdentificationDocumentUseDescriptor.xml")]
        [TestCase("IncidentLocationDescriptor.xml")]
        [TestCase("InstitutionTelephoneNumberTypeDescriptor.xml")]
        [TestCase("InteractivityStyleDescriptor.xml")]
        [TestCase("InternetAccessDescriptor.xml")]
        [TestCase("InterventionClassDescriptor.xml")]
        [TestCase("InterventionEffectivenessRatingDescriptor.xml")]
        [TestCase("LanguageDescriptor.xml")]
        [TestCase("LanguageInstructionProgramServiceDescriptor.xml")]
        [TestCase("LanguageUseDescriptor.xml")]
        [TestCase("LearningStandardCategoryDescriptor.xml")]
        [TestCase("LevelOfEducationDescriptor.xml")]
        [TestCase("LicenseStatusDescriptor.xml")]
        [TestCase("LicenseTypeDescriptor.xml")]
        [TestCase("LimitedEnglishProficiencyDescriptor.xml")]
        [TestCase("LocaleDescriptor.xml")]
        [TestCase("LocalEducationAgencyCategoryDescriptor.xml")]
        [TestCase("MagnetSpecialProgramEmphasisSchoolDescriptor.xml")]
        [TestCase("MediumOfInstructionDescriptor.xml")]
        [TestCase("MethodCreditEarnedDescriptor.xml")]
        [TestCase("MigrantEducationProgramServiceDescriptor.xml")]
        [TestCase("MonitoredDescriptor.xml")]
        [TestCase("NeglectedOrDelinquentProgramDescriptor.xml")]
        [TestCase("NeglectedOrDelinquentProgramServiceDescriptor.xml")]
        [TestCase("NetworkPurposeDescriptor.xml")]
        [TestCase("OldEthnicityDescriptor.xml")]
        [TestCase("OperationalStatusDescriptor.xml")]
        [TestCase("OtherNameTypeDescriptor.xml")]
        [TestCase("ParticipationDescriptor.xml")]
        [TestCase("PerformanceBaseConversionDescriptor.xml")]
        [TestCase("PerformanceLevelDescriptor.xml")]
        [TestCase("PersonalInformationVerificationDescriptor.xml")]
        [TestCase("PopulationServedDescriptor.xml")]
        [TestCase("PostingResultDescriptor.xml")]
        [TestCase("PostSecondaryEventCategoryDescriptor.xml")]
        [TestCase("PostSecondaryInstitutionLevelDescriptor.xml")]
        [TestCase("ProficiencyDescriptor.xml")]
        [TestCase("ProgramAssignmentDescriptor.xml")]
        [TestCase("ProgramCharacteristicDescriptor.xml")]
        [TestCase("ProgramSponsorDescriptor.xml")]
        [TestCase("ProgramTypeDescriptor.xml")]
        [TestCase("ProgressDescriptor.xml")]
        [TestCase("ProgressLevelDescriptor.xml")]
        [TestCase("ProviderCategoryDescriptor.xml")]
        [TestCase("ProviderProfitabilityDescriptor.xml")]
        [TestCase("ProviderStatusDescriptor.xml")]
        [TestCase("PublicationStatusDescriptor.xml")]
        [TestCase("RaceDescriptor.xml")]
        [TestCase("ReasonExitedDescriptor.xml")]
        [TestCase("ReasonNotTestedDescriptor.xml")]
        [TestCase("RecognitionTypeDescriptor.xml")]
        [TestCase("RelationDescriptor.xml")]
        [TestCase("RepeatIdentifierDescriptor.xml")]
        [TestCase("ReporterDescriptionDescriptor.xml")]
        [TestCase("ResidencyStatusDescriptor.xml")]
        [TestCase("ResponseIndicatorDescriptor.xml")]
        [TestCase("ResponsibilityDescriptor.xml")]
        [TestCase("RestraintEventReasonDescriptor.xml")]
        [TestCase("ResultDatatypeTypeDescriptor.xml")]
        [TestCase("RetestIndicatorDescriptor.xml")]
        [TestCase("SchoolCategoryDescriptor.xml")]
        [TestCase("SchoolChoiceImplementStatusDescriptor.xml")]
        [TestCase("SchoolFoodServiceProgramServiceDescriptor.xml")]
        [TestCase("SchoolTypeDescriptor.xml")]
        [TestCase("SectionCharacteristicDescriptor.xml")]
        [TestCase("SeparationDescriptor.xml")]
        [TestCase("SeparationReasonDescriptor.xml")]
        [TestCase("ServiceDescriptor.xml")]
        [TestCase("SexDescriptor.xml")]
        [TestCase("SpecialEducationProgramServiceDescriptor.xml")]
        [TestCase("SpecialEducationSettingDescriptor.xml")]
        [TestCase("StaffClassificationDescriptor.xml")]
        [TestCase("StaffIdentificationSystemDescriptor.xml")]
        [TestCase("StaffLeaveEventCategoryDescriptor.xml")]
        [TestCase("StateAbbreviationDescriptor.xml")]
        [TestCase("StudentCharacteristicDescriptor.xml")]
        [TestCase("StudentIdentificationSystemDescriptor.xml")]
        [TestCase("StudentParticipationCodeDescriptor.xml")]
        [TestCase("TeachingCredentialBasisDescriptor.xml")]
        [TestCase("TeachingCredentialDescriptor.xml")]
        [TestCase("TechnicalSkillsAssessmentDescriptor.xml")]
        [TestCase("TelephoneNumberTypeDescriptor.xml")]
        [TestCase("TermDescriptor.xml")]
        [TestCase("TitleIPartAParticipantDescriptor.xml")]
        [TestCase("TitleIPartASchoolDesignationDescriptor.xml")]
        [TestCase("TribalAffiliationDescriptor.xml")]
        [TestCase("VisaDescriptor.xml")]
        [TestCase("WeaponDescriptor.xml")]
        public void ShouldLoadDefaultsForDescriptorsNewInV3(string xmlFileName)
        {
            var descriptorName = xmlFileName.Replace(".xml", "");
            var importer = new DescriptorXmlImporter(V2ToV3MigrationConstants.EdFiXmlImportNamespace);

            var expectedDescriptorResults = importer.GetDescriptorsFromXml(xmlFileName, descriptorName);

            expectedDescriptorResults.Count.ShouldBeGreaterThan(0);
            foreach (var descriptor in expectedDescriptorResults)
            {
                string.IsNullOrEmpty(descriptor.CodeValue).ShouldBe(false);
                string.IsNullOrEmpty(descriptor.Description).ShouldBe(false);
                string.IsNullOrEmpty(descriptor.ShortDescription).ShouldBe(false);
                descriptor.Namespace.ShouldStartWith(V2ToV3MigrationConstants.DefaultEdFiNamespacePrefix);
            }

            using (var connection = new SqlConnection(ConnectionString))
            {
                connection.Open();
                var actualDescriptorResults = connection.Query(
                    $@"SELECT [CodeValue], [Namespace], [Description], [ShortDescription]
                        FROM [edfi].[{descriptorName}]
                        INNER JOIN [edfi].[Descriptor]
                        ON edfi.[{descriptorName}].[{descriptorName}Id] = [edfi].[Descriptor].[DescriptorId]")
                    .Select(x => new Descriptor
                    {
                        CodeValue = x.CodeValue,
                        Description = x.Description,
                        Namespace = x.Namespace,
                        ShortDescription = x.ShortDescription
                    })
                    .ToList();

                actualDescriptorResults.ShouldBe(expectedDescriptorResults);
                connection.Close();
            }
        }

        [TestCase("AcademicHonorCategoryDescriptor", "Completion of requirement, but no units of value a", "Completion of requirement, but no units awarded")]
        [TestCase("DisciplineActionLengthDifferenceReasonDescriptor", "Student Completed Term Requirements Sooner Than Ex", "Completed Term Requirements Sooner Than Expected")]
        [TestCase("DisciplineActionLengthDifferenceReasonDescriptor", "Continuation Of Previous Year's Disciplinary Actio", "Continuation Of Prior Year's Disciplinary Action")]
        [TestCase("DisciplineActionLengthDifferenceReasonDescriptor", "Term Decreased Due To Extenuating Health-Related C", "Term Decreased Due To Health-Related Circumstances")]
        [TestCase("DisciplineActionLengthDifferenceReasonDescriptor", "Term Modified By Placement Program Due To Student ", "Term Modified By Placement Program Due To Behavior")]
        [TestCase("EventCircumstanceDescriptor", "Non-special education student used calculator on n", "Non-special ed student used calculator")]
        [TestCase("GunFreeSchoolsActReportingStatusDescriptor", "Yes, with reporting of one or more students for an", "Yes, with one or more student offenses")]
        [TestCase("OperationalStatusDescriptor", "Changed Agency", "Changed")]
        [TestCase("RaceDescriptor", "American Indian - Alaskan Native", "American Indian - Alaska Native")]
        [TestCase("TeachingCredentialBasisDescriptor", "Credentials based on reciprocation with another st", "Reciprocation with another state")]
        [TestCase("VisaDescriptor", "M1 - Foreign Student pursuing vocational or non-ac", "M1 - Foreign Student vocational/non-academic Visa")]
        [TestCase("TitleIPartASchoolDesignationDescriptor", "Not designated as a Title I Part A school", "Not A Title I School")]
        [TestCase("TitleIPartASchoolDesignationDescriptor", "Title I Part A Schoolwide Assistance Program Schoo", "Title I Schoolwide School")]
        [TestCase("TitleIPartASchoolDesignationDescriptor", "Title I Part A Targeted Assistance School", "Title I Targeted Assistance School")]
        [TestCase("TitleIPartASchoolDesignationDescriptor", "Title I targeted eligible school - no program", "Title I Targeted Assistance Eligible-No Program")]
        [TestCase("TitleIPartASchoolDesignationDescriptor", "Title I school wide eligible school - no program", "Title I Schoolwide Eligible School-No Program")]
        [TestCase("TitleIPartASchoolDesignationDescriptor", "Title I school wide eligible - Title I targeted pr", "Title I Schoolwide eligible-Target Assist Program")]
        public void CodeValuesMappingsThatAreHardCodedInScriptsShouldExist(string descriptorTableName, string oldTypeCodeValue, string newDescriptorCodeValue)
        {
            var matchingDescriptors = GetDescriptorsByCodeValue(descriptorTableName, newDescriptorCodeValue);
            matchingDescriptors.SingleOrDefault().ShouldNotBeNull($"{descriptorTableName}: Could not resolve mapping of old Type CodeValue {oldTypeCodeValue} to descriptor CodeValue {newDescriptorCodeValue}.  If the XML has recently changed, ensure mappings are updated in migration scripts and then update this test case.");
        }

        [TestCase("AssessmentReportingMethodDescriptor", "Not applicable")]
        public void OtherCodeValuesThatAreHardCodedInScriptsShouldExist(string descriptorTableName, string codeValue)
        {
            var matchingDescriptors = GetDescriptorsByCodeValue(descriptorTableName, codeValue);
            matchingDescriptors.SingleOrDefault().ShouldNotBeNull($"{descriptorTableName}: Could not find a descriptor with the code value {codeValue}.  A test failure has been triggered because this code value is hard coded in one ore more migration scripts.   If the XML has recently changed, please search for usages of this descriptor code value in migration scripts and update the references as required.");
        }

        private List<Descriptor> GetDescriptorsByCodeValue(string descriptorTableName, string codeValue)
        {
            var escapedCodeValue = codeValue.Replace("'", "''");

            using (var connection = new SqlConnection(ConnectionString))
            {
                connection.Open();
                return connection.Query<Descriptor>(
                   $@"SELECT d.*
                        FROM [edfi].[{descriptorTableName}] src
                        INNER JOIN [edfi].[Descriptor] d
                        ON d.DescriptorId = src.[{descriptorTableName}Id]
                        WHERE d.CodeValue = '{escapedCodeValue}'")
                   .ToList();
            }
        }

        private static List<string> GetAllImportedDescriptorNames()
        {
            var baseDirectory =
                Path.GetFullPath(MigrationTestSettingsProvider.GetConfigVariable("BaseDescriptorXmlDirectoryPath"));
            var xmlDirectory = Path.GetFullPath(Path.Combine(baseDirectory, "3.1"));
            return Directory.GetFiles(xmlDirectory, "*.xml").Select(f => Path.GetFileName(f).Replace(".xml", "")).ToList();
        }
    }
}