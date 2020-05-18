// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v2;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v24_to_v25.AssessmentTests
{
    [TestFixture]
    public class AssessmentTests : V24ToV25MigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption =>
            DatabaseRestoreSetupOption.RestoreDuringFixtureSetupOnly;

        private static readonly HashSet<string> TestCases = AssessmentTestCase.AllTestCaseNames.Value;

        [OneTimeSetUp]
        public void TestFixtureSetup()
        {
            foreach (var testCase in TestCases)
            {
                InsertTestCaseRecords(testCase);
            }
            PerformTestMigration();
        }

        [Test, TestCaseSource(nameof(TestCases))]
        public void ShouldMigrateAssessments(string testCaseName)
        {
            var testCase = AssessmentTestCase.GetByTestCaseName(testCaseName);

            var assessmentUpgradeResult = GetV25UpgradeResult<Assessment>()
                .Single(x => x.Id == testCase.ExpectedResult.Assessment.Id);

            assessmentUpgradeResult.AssessmentTitle.ShouldBe(testCase.ExpectedResult.Assessment.AssessmentTitle);
            assessmentUpgradeResult.Namespace.ShouldBe(testCase.ExpectedResult.Assessment.Namespace);

            if (testCase.ExpectedResult.ExpectedAssessmentIdentifierType == AssessmentIdentifierType.HumanReadable)
            {
                assessmentUpgradeResult.AssessmentIdentifier.ShouldBe(testCase.ExpectedResult.Assessment.AssessmentIdentifier);
            }
        }

        [Test, TestCaseSource(nameof(TestCases))]
        public void ShouldMigrateAssessmentSubjects(string testCaseName)
        {
            var testCase = AssessmentTestCase.GetByTestCaseName(testCaseName);

            var assessmentUpgradeResult = GetV25UpgradeResult<Assessment>()
                .Single(x => x.Id == testCase.ExpectedResult.Assessment.Id);

            var assessmentSubject = GetV25UpgradeResult<AssessmentAcademicSubject>()
                .Single(x =>
                    x.AssessmentIdentifier == assessmentUpgradeResult.AssessmentIdentifier &&
                    x.Namespace == assessmentUpgradeResult.Namespace);

            assessmentSubject.AcademicSubjectDescriptorId.ShouldBe(testCase.ExpectedResult.Subject);
        }

        [Test, TestCaseSource(nameof(TestCases))]
        public void ShouldMigrateAssessmentGradeLevels(string testCaseName)
        {
            var testCase = AssessmentTestCase.GetByTestCaseName(testCaseName);

            var assessmentUpgradeResult = GetV25UpgradeResult<Assessment>()
                .Single(x => x.Id == testCase.ExpectedResult.Assessment.Id);

            var assessmentGrade = GetV25UpgradeResult<AssessmentAssessedGradeLevel>()
                .Single(x =>
                    x.AssessmentIdentifier == assessmentUpgradeResult.AssessmentIdentifier &&
                    x.Namespace == assessmentUpgradeResult.Namespace);

            assessmentGrade.GradeLevelDescriptorId.ShouldBe(testCase.ExpectedResult.GradeLevel);
        }

        [Test, TestCaseSource(nameof(TestCases))]
        public void ShouldMigrateStudentAssessments(string testCaseName)
        {
            var testCase = AssessmentTestCase.GetByTestCaseName(testCaseName);

            var assessmentUpgradeResult = GetV25UpgradeResult<Assessment>()
                .Single(x => x.Id == testCase.ExpectedResult.Assessment.Id);

            var studentAssessments = GetV25UpgradeResult<StudentAssessment>()
                .Where(x =>
                    x.AssessmentIdentifier == assessmentUpgradeResult.AssessmentIdentifier &&
                    x.Namespace == assessmentUpgradeResult.Namespace)
                .ToList();

            studentAssessments.Count.ShouldBe(2);
            foreach (var studentAssessment in studentAssessments)
            {
                studentAssessment.StudentAssessmentIdentifier.ShouldBe($"{assessmentUpgradeResult.AssessmentIdentifier}_{studentAssessment.AdministrationDate:yyyy-MM-dd}");
            }
        }

        private void InsertTestCaseRecords(string testCaseName)
        {
            var testCase = AssessmentTestCase.GetByTestCaseName(testCaseName);

            var parameters = new DynamicParameters();
            parameters.Add("@AssessmentTitle", testCase.AssessmentTitle, DbType.String, ParameterDirection.Input);
            parameters.Add("@Namespace", testCase.Namespace, DbType.String, ParameterDirection.Input);
            parameters.Add("@AssessmentVersion", testCase.AssessmentVersion, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@AcademicSubjectDescriptorId", testCase.AcademicSubjectDescriptorId, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@GradeLevelDescriptorId", testCase.GradeLevelDescriptorId, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@CreateDate", testCase.CreateDate, DbType.Date, ParameterDirection.Input);
            parameters.Add("@AssessmentFamilyTitle", AssessmentTestCase.DefaultAssessmentFamilyTitle, DbType.String, ParameterDirection.Input);
            parameters.Add("@AssessmentFamilyNamespace", AssessmentTestCase.DefaultAssessmentFamilyNamespace, DbType.String, ParameterDirection.Input);
            parameters.Add("@Id", testCase.Id, DbType.Guid, ParameterDirection.Input);
            parameters.Add("@DefaultSampleAssessmentCategoryDescriptor", 1234567, DbType.Int32, ParameterDirection.Input);

            InsertTestRecords("SampleAssessment.sql", parameters);
        }
    }
}
