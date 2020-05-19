// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;
using Dapper;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using log4net;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v2_to_v3.DescriptorToTypeConversionTests
{
    [TestFixture]
    public class DescriptorToTypeConversionTests : V2ToV3MigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } =
            DatabaseRestoreSetupOption.RestoreDuringFixtureSetupOnly;

        private ILog _logger = LogManager.GetLogger(typeof(DescriptorToTypeConversionTests));

        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V25;

        private SqlConnection _connection;

        [OneTimeSetUp]
        public void SetUp()
        {
            EraseAllEdFiData();
            var upgradeResult = PerformTestMigration("DescriptorToTypeConversionTest.sql", null,
                "DescriptorToTypeTestCalendar.csv",
                V2ToV3MigrationConstants.UserProvidedNamespaceForUnresolvableTypes);
            AssertUpgradeSucceeded(upgradeResult);

            _connection = new SqlConnection(ConnectionString);
            _connection.OpenAsync();
        }

        [OneTimeTearDown]
        public void TearDown()
        {
            if (_connection.State != ConnectionState.Closed)
                _connection.Close();

            _connection.Dispose();
        }

        [TestCaseSource(nameof(DescriptorsToMigrate))]
        public async Task ShouldConvertFromTypeToDescriptor(string tableName, string descriptorName,
            string descriptorIdColumnName, string newCodeValue)
        {
            _logger.Debug($"Testing use case: TableName = {tableName}, DescriptorName = {descriptorName}, DescriptorIdColumnName = {descriptorIdColumnName}, NewCodeValue = {newCodeValue}");
            var sql = $@"
                       SELECT descriptor.[CodeValue], descriptor.[Namespace]
                       FROM [edfi].[{tableName}] test_table
                       LEFT JOIN [edfi].[Descriptor] descriptor
                            ON test_table.[{descriptorIdColumnName}] = descriptor.[DescriptorId]
                            AND EXISTS
                            (
                                SELECT 1 from [edfi].[{descriptorName}] descriptor_reference
                                WHERE descriptor_reference.[{descriptorName}Id] = descriptor.[DescriptorId]
                            )
                       WHERE descriptor.[CodeValue] in ('Test-CodeValue', '{newCodeValue}')";

            var results = await _connection.QueryAsync<QueryResult>(sql);

            foreach (var result in results)
                if (result.CodeValue == "Test-CodeValue")
                    result.Namespace.ShouldBe(
                        $"{V2ToV3MigrationConstants.UserProvidedNamespaceForUnresolvableTypes}{descriptorName}");
                else
                    Assert.Multiple(() =>
                    {
                        result.CodeValue.ShouldBe(newCodeValue);
                        result.Namespace.ShouldBe(
                            $"{V2ToV3MigrationConstants.DefaultEdFiNamespacePrefix}{descriptorName}");
                    });
        }

        private class QueryResult
        {
            public string CodeValue { get; set; }
            public string Namespace { get; set; }
        }

        private static IEnumerable<string[]> DescriptorsToMigrate()
        {
            yield return new[]
            {
                "AssessmentContentStandard", "PublicationStatusDescriptor", "PublicationStatusDescriptorId",
                "Adopted"
            };
            yield return new[]
            {
                "AssessmentItem", "AssessmentItemCategoryDescriptor", "AssessmentItemCategoryDescriptorId",
                "Analytic"
            };
            yield return new[]
            {
                "AssessmentPerformanceLevel", "AssessmentReportingMethodDescriptor",
                "AssessmentReportingMethodDescriptorId", "Achievement/proficiency level"
            };
            yield return new[]
            {
                "AssessmentScore", "AssessmentReportingMethodDescriptor", "AssessmentReportingMethodDescriptorId",
                "Achievement/proficiency level"
            };
            yield return new[] {"Cohort", "CohortScopeDescriptor", "CohortScopeDescriptorId", "District"};
            yield return new[]
            {
                "Course", "CareerPathwayDescriptor", "CareerPathwayDescriptorId",
                "Agriculture, Food and Natural Resources"
            };
            yield return new[] {"Course", "CourseDefinedByDescriptor", "CourseDefinedByDescriptorId", "LEA"};
            yield return new[]
                {"Course", "CourseGPAApplicabilityDescriptor", "CourseGPAApplicabilityDescriptorId", "Applicable"};
            yield return new[]
            {
                "CourseLevelCharacteristic", "CourseLevelCharacteristicDescriptor",
                "CourseLevelCharacteristicDescriptorId",
                "Accepted as high school equivalent"
            };
            yield return new[]
            {
                "CourseOfferingCurriculumUsed", "CurriculumUsedDescriptor", "CurriculumUsedDescriptorId",
                "Creative curriculum infants/toddlers"
            };

            yield return new[]
            {
                "CourseTranscript", "CourseAttemptResultDescriptor", "CourseAttemptResultDescriptorId", "Pass"
            };
            yield return new[]
            {
                "CourseTranscript", "CourseRepeatCodeDescriptor", "CourseRepeatCodeDescriptorId", "Repeat Counted"
            };

            yield return new[]
            {
                "CourseTranscript", "MethodCreditEarnedDescriptor", "MethodCreditEarnedDescriptorId",
                "Classroom credit"
            };

            yield return new[]
            {
                "CourseTranscriptEarnedAdditionalCredits", "CourseAttemptResultDescriptor",
                "CourseAttemptResultDescriptorId", "Pass"
            };
            yield return new[]
            {
                "CourseTranscriptEarnedAdditionalCredits", "AdditionalCreditTypeDescriptor",
                "AdditionalCreditTypeDescriptorId", "Advanced Placement"
            };

            yield return new[]
            {
                "DisciplineAction", "DisciplineActionLengthDifferenceReasonDescriptor",
                "DisciplineActionLengthDifferenceReasonDescriptorId",
                "No Difference"
            };

            yield return new[]
            {
                "DisciplineIncident", "IncidentLocationDescriptor", "IncidentLocationDescriptorId", "On campus"
            };

            yield return new[]
            {
                "EducationContent", "ContentClassDescriptor", "ContentClassDescriptorId", "Presentation"
            };

            yield return new[] {"EducationContent", "CostRateDescriptor", "CostRateDescriptorId", "Flat Fee"};
            yield return new[]
            {
                "EducationContent", "InteractivityStyleDescriptor", "InteractivityStyleDescriptorId",
                "Active"
            };
            yield return new[] {"EducationContentAppropriateSex", "SexDescriptor", "SexDescriptorId", "Female"};
            yield return new[]
                {"EducationOrganization", "OperationalStatusDescriptor", "OperationalStatusDescriptorId", "Active"};
            yield return new[]
            {
                "EducationOrganizationAddress", "StateAbbreviationDescriptor",
                "StateAbbreviationDescriptorId", "AA"
            };
            yield return new[]
            {
                "EducationOrganizationCategory", "EducationOrganizationCategoryDescriptor",
                "EducationOrganizationCategoryDescriptorId", "Education Organization Network"
            };
            yield return new[]
            {
                "EducationOrganizationNetwork", "NetworkPurposeDescriptor",
                "NetworkPurposeDescriptorId", "Shared Services"
            };
            yield return new[]
            {
                "Grade", "PerformanceBaseConversionDescriptor", "PerformanceBaseConversionDescriptorId",
                "Advanced"
            };
            yield return new[]
            {
                "GraduationPlanRequiredAssessmentScore", "AssessmentReportingMethodDescriptor",
                "AssessmentReportingMethodDescriptorId", "Achievement/proficiency level"
            };
            yield return new[]
            {
                "Intervention", "DeliveryMethodDescriptor", "DeliveryMethodDescriptorId", "Individual"
            };
            yield return new[]
            {
                "Intervention", "InterventionClassDescriptor", "InterventionClassDescriptorId",
                "Curriculum"
            };
            yield return new[]
            {
                "InterventionAppropriateSex", "SexDescriptor", "SexDescriptorId", "Female"
            };
            yield return new[]
            {
                "InterventionPopulationServed", "PopulationServedDescriptor",
                "PopulationServedDescriptorId", "Regular Students"
            };
            yield return new[]
            {
                "InterventionPrescription", "DeliveryMethodDescriptor", "DeliveryMethodDescriptorId",
                "Individual"
            };
            yield return new[]
            {
                "InterventionPrescription", "InterventionClassDescriptor",
                "InterventionClassDescriptorId", "Curriculum"
            };
            yield return new[]
            {
                "InterventionPrescriptionAppropriateSex", "SexDescriptor", "SexDescriptorId", "Female"
            };
            yield return new[]
            {
                "InterventionPrescriptionPopulationServed", "PopulationServedDescriptor",
                "PopulationServedDescriptorId", "Regular Students"
            };
            yield return new[]
            {
                "InterventionStudy", "DeliveryMethodDescriptor", "DeliveryMethodDescriptorId",
                "Individual"
            };
            yield return new[]
            {
                "InterventionStudy", "InterventionClassDescriptor", "InterventionClassDescriptorId",
                "Curriculum"
            };
            yield return new[]
            {
                "InterventionStudyAppropriateSex", "SexDescriptor", "SexDescriptorId", "Female"
            };
            yield return new[]
            {
                "InterventionStudyInterventionEffectiveness",
                "InterventionEffectivenessRatingDescriptor", "InterventionEffectivenessRatingDescriptorId",
                "Positive Effects"
            };
            yield return new[]
            {
                "InterventionStudyInterventionEffectiveness", "PopulationServedDescriptor",
                "PopulationServedDescriptorId", "Regular Students"
            };
            yield return new[]
            {
                "InterventionStudyPopulationServed", "PopulationServedDescriptor",
                "PopulationServedDescriptorId", "Regular Students"
            };
            yield return new[]
            {
                "InterventionStudyStateAbbreviation", "StateAbbreviationDescriptor",
                "StateAbbreviationDescriptorId", "AA"
            };
            yield return new[]
            {
                "LearningObjectiveContentStandard", "PublicationStatusDescriptor",
                "PublicationStatusDescriptorId", "Adopted"
            };
            yield return new[]
            {
                "LearningStandardContentStandard", "PublicationStatusDescriptor",
                "PublicationStatusDescriptorId", "Adopted"
            };
            yield return new[]
            {
                "LocalEducationAgency", "CharterStatusDescriptor", "CharterStatusDescriptorId",
                "School Charter"
            };
            yield return new[]
            {
                "LocalEducationAgency", "LocalEducationAgencyCategoryDescriptor",
                "LocalEducationAgencyCategoryDescriptorId", "Independent"
            };
            yield return new[]
            {
                "LocalEducationAgencyAccountability", "GunFreeSchoolsActReportingStatusDescriptor",
                "GunFreeSchoolsActReportingStatusDescriptorId", "Yes, with one or more student offenses"
            };
            yield return new[]
            {
                "LocalEducationAgencyAccountability", "SchoolChoiceImplementStatusDescriptor",
                "SchoolChoiceImplementStatusDescriptorId", "Implemented at all grade levels"
            };
            yield return new[]
            {
                "OpenStaffPosition", "PostingResultDescriptor", "PostingResultDescriptorId",
                "Position Filled"
            };
            yield return new[]
            {
                "Parent", "SexDescriptor", "SexDescriptorId", "Female"
            };
            yield return new[]
            {
                "ParentAddress", "StateAbbreviationDescriptor", "StateAbbreviationDescriptorId", "AA"
            };
            yield return new[]
            {
                "PostSecondaryEvent", "PostSecondaryEventCategoryDescriptor",
                "PostSecondaryEventCategoryDescriptorId", "Certification Received"
            };
            yield return new[]
            {
                "PostSecondaryInstitution", "PostSecondaryInstitutionLevelDescriptor",
                "PostSecondaryInstitutionLevelDescriptorId", "Four or more years"
            };
            yield return new[]
            {
                "PostSecondaryInstitutionMediumOfInstruction", "MediumOfInstructionDescriptor",
                "MediumOfInstructionDescriptorId", "Center-based instruction"
            };
            yield return new[]
            {
                "RestraintEvent", "EducationalEnvironmentDescriptor",
                "EducationalEnvironmentDescriptorId", "Classroom"
            };
            yield return new[]
            {
                "RestraintEventReason", "RestraintEventReasonDescriptor",
                "RestraintEventReasonDescriptorId", "Imminent Serious Physical Harm To Themselves"
            };
            yield return new[]
            {
                "School", "CharterStatusDescriptor", "CharterStatusDescriptorId", "School Charter"
            };
            yield return new[]
            {
                "School", "InternetAccessDescriptor", "InternetAccessDescriptorId", "High Speed"
            };
            yield return new[]
            {
                "School", "MagnetSpecialProgramEmphasisSchoolDescriptor",
                "MagnetSpecialProgramEmphasisSchoolDescriptorId", "All students participate"
            };
            yield return new[]
            {
                "School", "TitleIPartASchoolDesignationDescriptor",
                "TitleIPartASchoolDesignationDescriptorId", "Not A Title I School"
            };
            yield return new[]
            {
                "SchoolCategory", "SchoolCategoryDescriptor", "SchoolCategoryDescriptorId",
                "All Levels"
            };
            yield return new[]
            {
                "Section", "EducationalEnvironmentDescriptor", "EducationalEnvironmentDescriptorId",
                "Classroom"
            };
            yield return new[]
            {
                "Section", "MediumOfInstructionDescriptor", "MediumOfInstructionDescriptorId",
                "Center-based instruction"
            };
            yield return new[]
            {
                "Section", "PopulationServedDescriptor", "PopulationServedDescriptorId",
                "Regular Students"
            };
            yield return new[]
            {
                "Staff", "CitizenshipStatusDescriptor", "CitizenshipStatusDescriptorId", "US Citizen"
            };
            yield return new[]
            {
                "Staff", "OldEthnicityDescriptor", "OldEthnicityDescriptorId",
                "American Indian Or Alaskan Native"
            };
            yield return new[]
            {
                "Staff", "SexDescriptor", "SexDescriptorId", "Female"
            };
            yield return new[]
            {
                "StaffAddress", "StateAbbreviationDescriptor", "StateAbbreviationDescriptorId", "AA"
            };
            yield return new[]
            {
                "StaffCredential", "StateAbbreviationDescriptor",
                "StateOfIssueStateAbbreviationDescriptorId", "AA"
            };
            yield return new[]
            {
                "StaffEducationOrganizationEmploymentAssociation", "SeparationDescriptor",
                "SeparationDescriptorId", "Voluntary separation"
            };
            yield return new[]
            {
                "StaffIdentificationDocument", "IdentificationDocumentUseDescriptor",
                "IdentificationDocumentUseDescriptorId", "US Citizenship Identification"
            };
            yield return new[]
            {
                "StaffIdentificationDocument", "IdentificationDocumentUseDescriptor",
                "IdentificationDocumentUseDescriptorId", "Foreign Citizenship Identification"
            };
            yield return new[]
            {
                "StaffIdentificationDocument", "PersonalInformationVerificationDescriptor",
                "PersonalInformationVerificationDescriptorId", "Baptismal or church certificate"
            };
            yield return new[]
            {
                "StaffPersonalIdentificationDocument", "IdentificationDocumentUseDescriptor",
                "IdentificationDocumentUseDescriptorId", "Personal Information Verification"
            };
            yield return new[]
            {
                "StaffPersonalIdentificationDocument", "PersonalInformationVerificationDescriptor",
                "PersonalInformationVerificationDescriptorId", "Baptismal or church certificate"
            };
            yield return new[]
            {
                "StaffLanguageUse", "LanguageUseDescriptor", "LanguageUseDescriptorId", "Home language"
            };
            yield return new[]
            {
                "StaffRace", "RaceDescriptor", "RaceDescriptorId", "American Indian - Alaska Native"
            };
            yield return new[]
            {
                "StaffVisa", "VisaDescriptor", "VisaDescriptorId", "F1 - Foreign Student Visa"
            };
            yield return new[]
            {
                "Student", "StateAbbreviationDescriptor", "BirthStateAbbreviationDescriptorId", "AA"
            };
            yield return new[]
            {
                "Student", "CitizenshipStatusDescriptor", "CitizenshipStatusDescriptorId", "US Citizen"
            };
            yield return new[]
            {
                "StudentEducationOrganizationAssociation", "OldEthnicityDescriptor",
                "OldEthnicityDescriptorId", "American Indian Or Alaskan Native"
            };
            yield return new[]
            {
                "StudentEducationOrganizationAssociation", "SexDescriptor", "SexDescriptorId", "Female"
            };
            yield return new[]
            {
                "StudentAcademicRecordAcademicHonor", "AcademicHonorCategoryDescriptor",
                "AcademicHonorCategoryDescriptorId", "Attendance award"
            };
            yield return new[]
            {
                "StudentAcademicRecordDiploma", "DiplomaLevelDescriptor", "DiplomaLevelDescriptorId",
                "Minimum"
            };
            yield return new[]
            {
                "StudentEducationOrganizationAssociationAddress", "StateAbbreviationDescriptor",
                "StateAbbreviationDescriptorId", "AA"
            };
            yield return new[]
            {
                "StudentAssessment", "AdministrationEnvironmentDescriptor",
                "AdministrationEnvironmentDescriptorId", "Classroom"
            };
            yield return new[]
            {
                "StudentAssessment", "EventCircumstanceDescriptor", "EventCircumstanceDescriptorId",
                "Long-term suspension - non-special education"
            };
            yield return new[]
            {
                "StudentAssessment", "ReasonNotTestedDescriptor", "ReasonNotTestedDescriptorId",
                "Absent"
            };
            yield return new[]
            {
                "StudentAssessment", "RetestIndicatorDescriptor", "RetestIndicatorDescriptorId",
                "Primary Administration"
            };
            yield return new[]
            {
                "StudentAssessmentItem", "AssessmentItemResultDescriptor",
                "AssessmentItemResultDescriptorId", "Correct"
            };
            yield return new[]
            {
                "StudentAssessmentItem", "ResponseIndicatorDescriptor", "ResponseIndicatorDescriptorId",
                "Nonscorable response"
            };
            yield return new[]
            {
                "StudentAssessmentPerformanceLevel", "AssessmentReportingMethodDescriptor",
                "AssessmentReportingMethodDescriptorId", "Achievement/proficiency level"
            };
            yield return new[]
            {
                "StudentAssessmentScoreResult", "AssessmentReportingMethodDescriptor",
                "AssessmentReportingMethodDescriptorId", "Achievement/proficiency level"
            };
            yield return new[]
            {
                "StudentCTEProgramAssociationCTEProgram", "CareerPathwayDescriptor",
                "CareerPathwayDescriptorId", "Agriculture, Food and Natural Resources"
            };
            yield return new[]
            {
                "StudentDisciplineIncidentAssociation", "StudentParticipationCodeDescriptor",
                "StudentParticipationCodeDescriptorId", "Victim"
            };
            yield return new[]
            {
                "StudentIdentificationDocument", "IdentificationDocumentUseDescriptor",
                "IdentificationDocumentUseDescriptorId", "US Citizenship Identification"
            };
            yield return new[]
            {
                "StudentIdentificationDocument", "IdentificationDocumentUseDescriptor",
                "IdentificationDocumentUseDescriptorId", "Foreign Citizenship Identification"
            };
            yield return new[]
            {
                "StudentIdentificationDocument", "PersonalInformationVerificationDescriptor",
                "PersonalInformationVerificationDescriptorId", "Baptismal or church certificate"
            };
            yield return new[]
            {
                "StudentPersonalIdentificationDocument", "IdentificationDocumentUseDescriptor",
                "IdentificationDocumentUseDescriptorId", "Personal Information Verification"
            };
            yield return new[]
            {
                "StudentPersonalIdentificationDocument", "PersonalInformationVerificationDescriptor",
                "PersonalInformationVerificationDescriptorId", "Baptismal or church certificate"
            };
            yield return new[]
            {
                "StudentInterventionAssociationInterventionEffectiveness",
                "InterventionEffectivenessRatingDescriptor", "InterventionEffectivenessRatingDescriptorId",
                "Positive Effects"
            };
            yield return new[]
            {
                "StudentInterventionAssociationInterventionEffectiveness", "PopulationServedDescriptor",
                "PopulationServedDescriptorId", "Regular Students"
            };
            yield return new[]
            {
                "StudentInterventionAttendanceEvent", "EducationalEnvironmentDescriptor",
                "EducationalEnvironmentDescriptorId", "Classroom"
            };
            yield return new[]
            {
                "StudentEducationOrganizationAssociationLanguageUse", "LanguageUseDescriptor",
                "LanguageUseDescriptorId", "Home language"
            };
            yield return new[]
            {
                "StudentParentAssociation", "RelationDescriptor", "RelationDescriptorId", "Aunt"
            };
            yield return new[]
            {
                "StudentProgramAttendanceEvent", "EducationalEnvironmentDescriptor",
                "EducationalEnvironmentDescriptorId", "Classroom"
            };
            yield return new[]
            {
                "StudentEducationOrganizationAssociationRace", "RaceDescriptor", "RaceDescriptorId",
                "American Indian - Alaska Native"
            };
            yield return new[]
            {
                "StudentSchoolAssociation", "EntryGradeLevelReasonDescriptor",
                "EntryGradeLevelReasonDescriptorId", "Promotion - Accelerated promotion"
            };
            yield return new[]
            {
                "StudentSchoolAssociationEducationPlan", "EducationPlanDescriptor",
                "EducationPlanDescriptorId", "504 Plan"
            };
            yield return new[]
            {
                "StudentSchoolAttendanceEvent", "EducationalEnvironmentDescriptor",
                "EducationalEnvironmentDescriptorId", "Classroom"
            };
            yield return new[]
            {
                "StudentSectionAssociation", "RepeatIdentifierDescriptor",
                "RepeatIdentifierDescriptorId", "Repeated, counted in grade point average"
            };
            yield return new[]
            {
                "StudentSectionAttendanceEvent", "EducationalEnvironmentDescriptor",
                "EducationalEnvironmentDescriptorId", "Classroom"
            };
            yield return new[]
            {
                "StudentTitleIPartAProgramAssociation", "TitleIPartAParticipantDescriptor",
                "TitleIPartAParticipantDescriptorId", "Public Targeted Assistance Program"
            };
            yield return new[]
            {
                "StudentVisa", "VisaDescriptor", "VisaDescriptorId", "F1 - Foreign Student Visa"
            };
            yield return new[]
            {
                "Credential", "CredentialTypeDescriptor", "CredentialTypeDescriptorId", "Certification"
            };
            yield return new[]
            {
                "StaffAbsenceEvent", "AbsenceEventCategoryDescriptor",
                "AbsenceEventCategoryDescriptorId", "Vacation"
            };
            yield return new[]
            {
                "ProgramSponsor", "ProgramSponsorDescriptor", "ProgramSponsorDescriptorId", "Business"
            };
            yield return new[]
            {
                "CohortProgram", "ProgramTypeDescriptor", "ProgramTypeDescriptorId",
                "Adult/Continuing Education"
            };
            yield return new[]
            {
                "ProgramCharacteristic", "ProgramTypeDescriptor", "ProgramTypeDescriptorId",
                "Adult/Continuing Education"
            };
            yield return new[]
            {
                "StudentProgramAssociation", "ProgramTypeDescriptor", "ProgramTypeDescriptorId",
                "Adult/Continuing Education"
            };
            yield return new[]
            {
                "ProgramLearningObjective", "ProgramTypeDescriptor", "ProgramTypeDescriptorId",
                "Adult/Continuing Education"
            };
            yield return new[]
            {
                "StudentCTEProgramAssociation", "ProgramTypeDescriptor", "ProgramTypeDescriptorId",
                "Adult/Continuing Education"
            };
            yield return new[]
            {
                "StudentSpecialEducationProgramAssociation", "ProgramTypeDescriptor",
                "ProgramTypeDescriptorId", "Adult/Continuing Education"
            };
            yield return new[]
            {
                "StudentCTEProgramAssociationCTEProgram", "ProgramTypeDescriptor",
                "ProgramTypeDescriptorId", "Adult/Continuing Education"
            };
            yield return new[]
            {
                "ProgramLearningStandard", "ProgramTypeDescriptor", "ProgramTypeDescriptorId",
                "Adult/Continuing Education"
            };
            yield return new[]
            {
                "StudentSpecialEducationProgramAssociationServiceProvider", "ProgramTypeDescriptor",
                "ProgramTypeDescriptorId", "Adult/Continuing Education"
            };
            yield return new[]
            {
                "ProgramService", "ProgramTypeDescriptor", "ProgramTypeDescriptorId",
                "Adult/Continuing Education"
            };
            yield return new[]
            {
                "StudentTitleIPartAProgramAssociation", "ProgramTypeDescriptor",
                "ProgramTypeDescriptorId", "Adult/Continuing Education"
            };
            yield return new[]
            {
                "StaffProgramAssociation", "ProgramTypeDescriptor", "ProgramTypeDescriptorId",
                "Adult/Continuing Education"
            };
            yield return new[]
            {
                "SectionProgram", "ProgramTypeDescriptor", "ProgramTypeDescriptorId",
                "Adult/Continuing Education"
            };
            yield return new[]
            {
                "StudentMigrantEducationProgramAssociation", "ProgramTypeDescriptor",
                "ProgramTypeDescriptorId", "Adult/Continuing Education"
            };
            yield return new[]
            {
                "StudentProgramAssociationService", "ProgramTypeDescriptor", "ProgramTypeDescriptorId",
                "Adult/Continuing Education"
            };
            yield return new[]
            {
                "StudentProgramAttendanceEvent", "ProgramTypeDescriptor", "ProgramTypeDescriptorId",
                "Adult/Continuing Education"
            };
            yield return new[]
            {
                "RestraintEventProgram", "ProgramTypeDescriptor", "ProgramTypeDescriptorId",
                "Adult/Continuing Education"
            };
            yield return new[]
            {
                "Program", "ProgramTypeDescriptor", "ProgramTypeDescriptorId",
                "Adult/Continuing Education"
            };
        }
    }
}