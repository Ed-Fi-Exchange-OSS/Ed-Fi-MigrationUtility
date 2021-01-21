// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Models.v2;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MsSql.MigrationTests.v24_to_v25.LearningObjectiveTests
{
    [TestFixture]
    public class LearningObjectiveTests : V24ToV25SqlServerMigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption => DatabaseRestoreSetupOption.RestoreDuringFixtureSetupOnly;
        private static readonly HashSet<string> TestCases = LearningObjectiveTestCase.AllTestCaseNames.Value;

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
        public void ShouldMigrateLearningObjectives(string testCaseName)
        {
            var testCases = LearningObjectiveTestCase.GetByTestCaseName(testCaseName);
            var expectedTestCaseResults = testCases.SelectMany(x => x.ExpectedResults).ToList();
            expectedTestCaseResults.Any().ShouldBe(true);

            var allResults = GetV25UpgradeResult<LearningObjective>()
                .ToList();

            foreach (var expectedResult in expectedTestCaseResults)
            {
                if (!expectedResult.ShouldHaveRandomlyGeneratedLearningObjectiveId)
                {
                    var matchingResult = allResults.Where(x =>
                        x.LearningObjectiveId == expectedResult.LearningObjective.LearningObjectiveId
                        && x.Namespace == expectedResult.LearningObjective.Namespace);
                    matchingResult.Count().ShouldBe(1);
                }
                else
                {
                    var matchingResult = allResults.Where(x =>
                        x.Description == expectedResult.LearningObjective.Description
                        && x.Namespace == expectedResult.LearningObjective.Namespace
                        && x.Objective == expectedResult.LearningObjective.Objective);
                    matchingResult.Count().ShouldBe(1);
                }
            }
        }

        [Test, TestCaseSource(nameof(TestCases))]
        public void ShouldMigrateLearningObjectiveSubjects(string testCaseName)
        {
            var expectedResults = LearningObjectiveTestCase
                .GetByTestCaseName(testCaseName)
                .SelectMany(x => x.ExpectedResults)
                .Where(x => x.Subject != null && !x.ShouldHaveRandomlyGeneratedLearningObjectiveId)
                .Select(x => new LearningObjectiveAcademicSubject
                {
                    LearningObjectiveId = x.LearningObjective.LearningObjectiveId,
                    Namespace = x.LearningObjective.Namespace,
                    AcademicSubjectDescriptorId = x.Subject.Value
                }).ToList();

            var allResults = GetV25UpgradeResult<LearningObjectiveAcademicSubject>()
                .ToList();

            foreach (var result in expectedResults)
            {
                allResults.Count
                    (x => x.LearningObjectiveId == result.LearningObjectiveId &&
                          x.AcademicSubjectDescriptorId == result.AcademicSubjectDescriptorId)
                    .ShouldBe(1);
            }
        }

        [Test, TestCaseSource(nameof(TestCases))]
        public void ShouldMigrateLearningObjectiveGradeLevels(string testCaseName)
        {
            var expectedResults = LearningObjectiveTestCase
                .GetByTestCaseName(testCaseName)
                .SelectMany(x => x.ExpectedResults)
                .Where(x => x.GradeLevel != null && !x.ShouldHaveRandomlyGeneratedLearningObjectiveId)
                .Select(x => new LearningObjectiveGradeLevel
                {
                    LearningObjectiveId = x.LearningObjective.LearningObjectiveId,
                    Namespace = x.LearningObjective.Namespace,
                    GradeLevelDescriptorId = x.GradeLevel.Value
                }).ToList();

            var allResults = GetV25UpgradeResult<LearningObjectiveGradeLevel>()
                .ToList();

            foreach (var result in expectedResults)
            {
                allResults.Count
                    (x => x.LearningObjectiveId == result.LearningObjectiveId &&
                          x.GradeLevelDescriptorId == result.GradeLevelDescriptorId)
                    .ShouldBe(1);
            }
        }

        private void InsertTestCaseRecords(string testCaseName)
        {
            foreach (var testCase in LearningObjectiveTestCase.GetByTestCaseName(testCaseName))
            {
                var parameters = new DynamicParameters();
                parameters.Add("@Description", testCase.Description, DbType.String, ParameterDirection.Input);
                parameters.Add("@LearningObjectiveId", testCase.InsertedLearningObjectiveId, DbType.String, ParameterDirection.Input);
                parameters.Add("@Namespace", testCase.Namespace, DbType.String, ParameterDirection.Input);
                parameters.Add("@Objective", testCase.Objective, DbType.String, ParameterDirection.Input);
                parameters.Add("@AcademicSubjectDescriptorId", testCase.AcademicSubjectDescriptorId, DbType.Int32, ParameterDirection.Input);
                parameters.Add("@ObjectiveGradeLevelDescriptorId", testCase.ObjectiveGradeLevelDescriptorId, DbType.Int32, ParameterDirection.Input);
                parameters.Add("@ParentObjective", testCase.InsertedParentObjective, DbType.String, ParameterDirection.Input);
                parameters.Add("@ParentAcademicSubjectDescriptorId", testCase.ParentAcademicSubjectDescriptorId, DbType.Int32, ParameterDirection.Input);
                parameters.Add("@ParentObjectiveGradeLevelDescriptorId", testCase.ParentObjectiveGradeLevelDescriptorId, DbType.Int32, ParameterDirection.Input);
                parameters.Add("@CreateDate", testCase.CreateDate, DbType.Date, ParameterDirection.Input);
                parameters.Add("@InvalidDescriptorId", LearningObjectiveTestCase.InvalidDescriptorId, DbType.Int32, ParameterDirection.Input);

                InsertTestRecords("SampleLearningObjective.sql", parameters);
            }
        }
    }
}
