// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v3;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v2_to_v3.StudentEducationOrganizationAssociationTests
{
    [TestFixture]
    public class StudentEducationOrganizationAssociationTests : V2ToV3MigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption => DatabaseRestoreSetupOption.RestoreDuringFixtureSetupOnly;
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V25;
        private static readonly List<StudentEducationOrganizationAssociationEnrollmentTestCase> AllTestCases =
            StudentEducationOrganizationAssociationEnrollmentTestCase.All.Value;

        private const string ExpectedVisualLearningIndicator = "1.1111";
        private const string ExpectedAuditioryLearningIndicator = "2.2222";
        private const string ExpectedTactileLearningIndicator = "3.3333";
        private const string SampleIndicatorName = "SampleIndicator";
        private const int CohortAssociationDistrictId = 255902;

        [OneTimeSetUp]
        public void TestFixtureSetup()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@edOrgId", StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithEdOrgAssociationOnly.ExpectedEducationOrganizationAssociationId, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@studentWithEdOrgAssociationUSI", StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithEdOrgAssociationOnly.StudentUSI, DbType.Int32, ParameterDirection.Input);

            parameters.Add("@schoolWithNoDistrictAssociationId", StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithSchoolAssociation.SchoolId, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@studentWithSchoolAssociationUSI", StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithSchoolAssociation.StudentUSI, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@studentWithSchoolAssociationEntryDate", StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithSchoolAssociation.ExpectedResponsibilityBeginDate, DbType.Date, ParameterDirection.Input);

            parameters.Add("@districtId1", StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithDualEnrollments[0].DistrictId, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@cohortAssociationDistrict", StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithDualEnrollments[1].DistrictId, DbType.Int32, ParameterDirection.Input);

            parameters.Add("@studentWithDistrictAssociationUSI", StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithDistrictAssociation.StudentUSI, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@schoolWithDistrictAssociationId", StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithDistrictAssociation.SchoolId, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@studentWithDistrictAssociationEntryDate", StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithDistrictAssociation.ExpectedResponsibilityBeginDate, DbType.Date, ParameterDirection.Input);

            parameters.Add("@studentWithSchoolAssociationButNoEdOrgAssociationUSI", StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithSchoolAssociationButNoEdOrgAssociation.StudentUSI, DbType.Int32, ParameterDirection.Input);

            parameters.Add("@studentWithDistrictAssociationButNoEdOrgAssociationUSI", StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithDistrictAssociationButNoEdOrgAssociation.StudentUSI, DbType.Int32, ParameterDirection.Input);

            parameters.Add("@studentWithDualEnrollmentsUSI", StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithDualEnrollments[0].StudentUSI, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@studentWithDualEnrollmentsSchool1", StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithDualEnrollments[0].SchoolId, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@studentWithDualEnrollmentsSchool2", StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithDualEnrollments[1].SchoolId, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@studentWithDualEnrollmentsEntryDateSchool1", StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithDualEnrollments[0].ExpectedResponsibilityBeginDate, DbType.Date, ParameterDirection.Input);
            parameters.Add("@studentWithDualEnrollmentsEntryDateSchool2", StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithDualEnrollments[1].ExpectedResponsibilityBeginDate, DbType.Date, ParameterDirection.Input);

            parameters.Add("@visualLearningIndicator", ExpectedVisualLearningIndicator, DbType.String, ParameterDirection.Input);
            parameters.Add("@auditoryLearningIndicator", ExpectedAuditioryLearningIndicator, DbType.String, ParameterDirection.Input);
            parameters.Add("@tactileLearningIndicator", ExpectedTactileLearningIndicator, DbType.String, ParameterDirection.Input);
            parameters.Add("@sampleIndicatorName", SampleIndicatorName, DbType.String, ParameterDirection.Input);

            var result = PerformTestMigration("StudentEducationOrganizationAssociationBeginDateResolution.sql", parameters, "StudentEducationOrganizationAssociationBeginDateResolution.csv");
            AssertUpgradeSucceeded(result);
        }

        [Test, TestCaseSource(nameof(AllTestCases))]
        public void StudentEducationOrganizationAssociation(StudentEducationOrganizationAssociationEnrollmentTestCase testCase)
        {
            GetAllStudentEducationOrganizationReferencesFromTable("edfi.StudentEducationOrganizationAssociation", testCase)
                .SingleOrDefault()
                .ShouldNotBeNull();
        }

        [Test, TestCaseSource(nameof(AllTestCases))]
        public void StudentEducationOrganizationAssociationAddress(StudentEducationOrganizationAssociationEnrollmentTestCase testCase)
        {
            GetAllStudentEducationOrganizationReferencesFromTable("edfi.StudentEducationOrganizationAssociationAddress", testCase)
                .SingleOrDefault()
                .ShouldNotBeNull();
        }

        [Test]
        public void ShouldSelectCorrectCohortEducationOrgWhenAvailable()
        {
            var studentWithCohortAssociation =
                StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithDualEnrollments[0];

            var dualEnrollmentStudentEducationOrganizationAssociationCohortYear = GetTableContents("edfi.StudentEducationOrganizationAssociationCohortYear")
                .Select(x => new StudentEducationOrganizationReference
                {
                    StudentUSI = x.StudentUSI,
                    EducationOrganizationId = x.EducationOrganizationId
                })
                .Where(x => x.StudentUSI == studentWithCohortAssociation.StudentUSI)
                .ToList();

            dualEnrollmentStudentEducationOrganizationAssociationCohortYear
                .Single()
                .EducationOrganizationId.ShouldBe(CohortAssociationDistrictId);
        }

        [Test]
        public void ShouldSelectDefaultCohortEducationOrgAssociationWhenStudentCohortAssociationUnavailable()
        {
            var studentWithCohortAssociation =
                StudentEducationOrganizationAssociationEnrollmentTestCase.StudentWithDualEnrollments[0];

            var allStudentEdorgReferences = GetTableContents("edfi.StudentEducationOrganizationAssociationCohortYear")
                .Select(x => new StudentEducationOrganizationReference
                {
                    StudentUSI = x.StudentUSI,
                    EducationOrganizationId = x.EducationOrganizationId
                })
                .ToList();

            foreach (var testCase in AllTestCases
                 .Where(x => x.StudentUSI != studentWithCohortAssociation.StudentUSI))
            {
                allStudentEdorgReferences.SingleOrDefault(
                    x =>
                        x.StudentUSI == testCase.StudentUSI &&
                        x.EducationOrganizationId == testCase.ExpectedEducationOrganizationAssociationId)
                    .ShouldNotBeNull();
            }
        }

        [Test, TestCaseSource(nameof(AllTestCases))]
        public void StudentEducationOrganizationAssociationElectronicMail(StudentEducationOrganizationAssociationEnrollmentTestCase testCase)
        {
            GetAllStudentEducationOrganizationReferencesFromTable("edfi.StudentEducationOrganizationAssociationElectronicMail", testCase)
                .SingleOrDefault()
                .ShouldNotBeNull();
        }

        [Test, TestCaseSource(nameof(AllTestCases))]
        public void StudentEducationOrganizationAssociationInternationalAddress(StudentEducationOrganizationAssociationEnrollmentTestCase testCase)
        {
            GetAllStudentEducationOrganizationReferencesFromTable("edfi.StudentEducationOrganizationAssociationInternationalAddress", testCase)
                .SingleOrDefault()
                .ShouldNotBeNull();
        }

        [Test, TestCaseSource(nameof(AllTestCases))]
        public void StudentEducationOrganizationAssociationLanguage(StudentEducationOrganizationAssociationEnrollmentTestCase testCase)
        {
            GetAllStudentEducationOrganizationReferencesFromTable("edfi.StudentEducationOrganizationAssociationLanguage", testCase)
                .SingleOrDefault()
                .ShouldNotBeNull();
        }

        [Test, TestCaseSource(nameof(AllTestCases))]
        public void StudentEducationOrganizationAssociationLanguageUse(StudentEducationOrganizationAssociationEnrollmentTestCase testCase)
        {
            GetAllStudentEducationOrganizationReferencesFromTable("edfi.StudentEducationOrganizationAssociationLanguageUse", testCase)
                .SingleOrDefault()
                .ShouldNotBeNull();
        }

        [Test, TestCaseSource(nameof(AllTestCases))]
        public void StudentEducationOrganizationAssociationRace(StudentEducationOrganizationAssociationEnrollmentTestCase testCase)
        {
            GetAllStudentEducationOrganizationReferencesFromTable("edfi.StudentEducationOrganizationAssociationRace", testCase)
                .SingleOrDefault()
                .ShouldNotBeNull();
        }

        [Test, TestCaseSource(nameof(AllTestCases))]
        public void StudentEducationOrganizationAssociationStudentIdentificationCode(StudentEducationOrganizationAssociationEnrollmentTestCase testCase)
        {
            GetAllStudentEducationOrganizationReferencesFromTable("edfi.StudentEducationOrganizationAssociationStudentIdentificationCode", testCase)
                .SingleOrDefault()
                .ShouldNotBeNull();
        }


        [Test, TestCaseSource(nameof(AllTestCases))]
        public void StudentEducationOrganizationAssociationTelephone(StudentEducationOrganizationAssociationEnrollmentTestCase testCase)
        {
            GetAllStudentEducationOrganizationReferencesFromTable("edfi.StudentEducationOrganizationAssociationTelephone", testCase)
                .SingleOrDefault()
                .ShouldNotBeNull();
        }

        [Test, TestCaseSource(nameof(AllTestCases))]
        public void StudentEducationOrganizationAssociationDisability(StudentEducationOrganizationAssociationEnrollmentTestCase testCase)
        {
            GetAllStudentEducationOrganizationReferencesFromTable("edfi.StudentEducationOrganizationAssociationDisability", testCase)
                .SingleOrDefault()
                .ShouldNotBeNull();
        }

        [Test, TestCaseSource(nameof(AllTestCases))]
        public void StudentEducationOrganizationAssociationDisabilityDesignation(StudentEducationOrganizationAssociationEnrollmentTestCase testCase)
        {
            GetAllStudentEducationOrganizationReferencesFromTable("edfi.StudentEducationOrganizationAssociationDisabilityDesignation", testCase)
                .SingleOrDefault()
                .ShouldNotBeNull();
        }

        [Test, TestCaseSource(nameof(AllTestCases))]
        public void StudentEducationOrganizationResponsibilityAssociation(StudentEducationOrganizationAssociationEnrollmentTestCase testCase)
        {
            var studentEducationOrganizationResponsibilityAssociationResult = GetV3UpgradeResult<StudentEducationOrganizationResponsibilityAssociation>().ToList();

            studentEducationOrganizationResponsibilityAssociationResult.Where(
                x =>
                    x.StudentUSI == testCase.StudentUSI &&
                    x.BeginDate == testCase.ExpectedResponsibilityBeginDate)
                .ToList()
                .Count
                .ShouldBe(testCase.ExpectedResponsibilityBeginDate == null ? 0 : 1);

            var expectedTotalNumberOfResponsibilityAssociationResultsForStudent =
                AllTestCases
                .Count(x => x.ExpectedResponsibilityBeginDate != null && x.StudentUSI == testCase.StudentUSI);

            studentEducationOrganizationResponsibilityAssociationResult.Count(x => x.StudentUSI == testCase.StudentUSI).ShouldBe(expectedTotalNumberOfResponsibilityAssociationResultsForStudent);
        }

        [Test, TestCaseSource(nameof(AllTestCases))]
        public void StudentProgramParticipation(StudentEducationOrganizationAssociationEnrollmentTestCase testCase)
        {
            GetV3UpgradeResult<StudentEducationOrganizationAssociationProgramParticipation>().Where(
                x =>
                    x.StudentUSI == testCase.StudentUSI &&
                    x.EducationOrganizationId == testCase.ExpectedEducationOrganizationAssociationId)
                .ToList()
                .Count
                .ShouldBe(1);

            GetV3UpgradeResult<StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic>()
                .Where(
                    x =>
                        x.StudentUSI == testCase.StudentUSI &&
                        x.EducationOrganizationId == testCase.ExpectedEducationOrganizationAssociationId)
                .ToList()
                .Count
                .ShouldBe(2);
        }

        [Test, TestCaseSource(nameof(AllTestCases))]
        public void StudentIndicator(StudentEducationOrganizationAssociationEnrollmentTestCase testCase)
        {
            GetIndicator(testCase.StudentUSI, testCase.ExpectedEducationOrganizationAssociationId, "VisualLearning").ShouldBe(ExpectedVisualLearningIndicator);
            GetIndicator(testCase.StudentUSI, testCase.ExpectedEducationOrganizationAssociationId, "AuditoryLearning").ShouldBe(ExpectedAuditioryLearningIndicator);
            GetIndicator(testCase.StudentUSI, testCase.ExpectedEducationOrganizationAssociationId, "TactileLearning").ShouldBe(ExpectedTactileLearningIndicator);
            GetIndicator(testCase.StudentUSI, testCase.ExpectedEducationOrganizationAssociationId, SampleIndicatorName).ShouldBe(SampleIndicatorName);
        }

        [Test, TestCaseSource(nameof(AllTestCases))]
        public void StudentCharacteristics(StudentEducationOrganizationAssociationEnrollmentTestCase testCase)
        {
            GetV3UpgradeResult<StudentEducationOrganizationAssociationStudentCharacteristic>().Where(
                x =>
                    x.StudentUSI == testCase.StudentUSI &&
                    x.EducationOrganizationId == testCase.ExpectedEducationOrganizationAssociationId)
                .ToList()
                .Count
                .ShouldBe(1);
        }

        private IEnumerable<StudentEducationOrganizationReference> GetAllStudentEducationOrganizationReferencesFromTable(string tableName, StudentEducationOrganizationAssociationEnrollmentTestCase testCase)
        {
            return
                GetTableContents(tableName)
                    .Select(x => new StudentEducationOrganizationReference
                    {
                        EducationOrganizationId = x.EducationOrganizationId,
                        StudentUSI = x.StudentUSI
                    })
                    .Where(
                        x =>
                            x.StudentUSI == testCase.StudentUSI &&
                            x.EducationOrganizationId == testCase.ExpectedEducationOrganizationAssociationId)
                    .ToList();
        }

        public class StudentEducationOrganizationAssociationEnrollmentTestCase
        {
            public string TestCaseName { get; set; }
            public int StudentUSI { get; set; }
            public int ExpectedEducationOrganizationAssociationId { get; set; }
            public int? SchoolId { get; set; }
            public int? DistrictId { get; set; }
            public DateTime? ExpectedResponsibilityBeginDate { get; set; }

            private static readonly List<StudentEducationOrganizationAssociationEnrollmentTestCase> _all = new List<StudentEducationOrganizationAssociationEnrollmentTestCase>();
            public static readonly Lazy<List<StudentEducationOrganizationAssociationEnrollmentTestCase>> All = new Lazy<List<StudentEducationOrganizationAssociationEnrollmentTestCase>>(() => _all);

            private StudentEducationOrganizationAssociationEnrollmentTestCase()
            {
                _all.Add(this);
            }

            public static StudentEducationOrganizationAssociationEnrollmentTestCase StudentWithEdOrgAssociationOnly = new StudentEducationOrganizationAssociationEnrollmentTestCase
            {
                TestCaseName = "Student with EdOrg association only and missing begin date resolved from calendar config",
                ExpectedEducationOrganizationAssociationId = 867530,
                DistrictId = null,
                SchoolId = null,
                StudentUSI = 1,
                ExpectedResponsibilityBeginDate = new DateTime(2000, 1, 1)
            };

            public static StudentEducationOrganizationAssociationEnrollmentTestCase StudentWithSchoolAssociation = new StudentEducationOrganizationAssociationEnrollmentTestCase
            {
                TestCaseName = "Student with EdOrg and School associations only",
                ExpectedEducationOrganizationAssociationId = 255901001,
                DistrictId = null,
                SchoolId = 255901001,
                StudentUSI = 2,
                ExpectedResponsibilityBeginDate = new DateTime(2000, 2, 2)
            };

            public static StudentEducationOrganizationAssociationEnrollmentTestCase StudentWithDistrictAssociation = new StudentEducationOrganizationAssociationEnrollmentTestCase
            {
                TestCaseName = "Student with EdOrg and resolvable district association",
                ExpectedEducationOrganizationAssociationId = 255901,
                DistrictId = 255901,
                SchoolId = 255901044,
                StudentUSI = 3,
                ExpectedResponsibilityBeginDate = new DateTime(2000, 3, 3)
            };

            public static StudentEducationOrganizationAssociationEnrollmentTestCase StudentWithSchoolAssociationButNoEdOrgAssociation = new StudentEducationOrganizationAssociationEnrollmentTestCase
            {
                TestCaseName = "Student with school-only association but no EdOrg association",
                ExpectedEducationOrganizationAssociationId = 255901001,
                DistrictId = null,
                SchoolId = 255901001,
                StudentUSI = 4,
                ExpectedResponsibilityBeginDate = null
            };

            public static StudentEducationOrganizationAssociationEnrollmentTestCase StudentWithDistrictAssociationButNoEdOrgAssociation = new StudentEducationOrganizationAssociationEnrollmentTestCase
            {
                TestCaseName = "Student with resolvable district association but no EdOrg association",
                ExpectedEducationOrganizationAssociationId = 255901,
                DistrictId = 255901,
                SchoolId = 255901044,
                StudentUSI = 5,
                ExpectedResponsibilityBeginDate = null
            };

            public static StudentEducationOrganizationAssociationEnrollmentTestCase[] StudentWithDualEnrollments = {
                new StudentEducationOrganizationAssociationEnrollmentTestCase
                {
                    TestCaseName = "Student with dual enrollments (1 of 2)",
                    ExpectedEducationOrganizationAssociationId = CohortAssociationDistrictId,
                    DistrictId = 255901,
                    SchoolId = 255901045,
                    StudentUSI = 6,
                    ExpectedResponsibilityBeginDate  = new DateTime(2000, 6, 1)
                },
                new StudentEducationOrganizationAssociationEnrollmentTestCase
                {
                    TestCaseName = "Student with dual enrollments (2 of 2)",
                    ExpectedEducationOrganizationAssociationId = CohortAssociationDistrictId,
                    DistrictId = CohortAssociationDistrictId,
                    SchoolId = 255901046,
                    StudentUSI = 6,
                    ExpectedResponsibilityBeginDate = new DateTime(2000, 6, 2)
                }
        };


            public override string ToString()
            {
                return TestCaseName;
            }
        }

        private class StudentEducationOrganizationReference
        {
            public int StudentUSI { get; set; }
            public int EducationOrganizationId { get; set; }
        }

        private string GetIndicator(int studentUSI, int educationOrgId, string indicatorName)
        {
            return GetV3UpgradeResult<StudentEducationOrganizationAssociationStudentIndicator>()
                .Where(x => x.StudentUSI == studentUSI &&
                            x.EducationOrganizationId == educationOrgId &&
                            x.IndicatorName == indicatorName)
                .Select(x => x.Indicator.ToString())
                .SingleOrDefault();
        }
    }
}