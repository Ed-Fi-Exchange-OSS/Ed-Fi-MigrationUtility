// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Linq;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v3;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v2_to_v3.GradingPeriodTests
{
    [TestFixture]
    public class GradingPeriodTests : V2ToV3MigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption => DatabaseRestoreSetupOption.RestoreDuringFixtureSetupOnly;
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V25;

        [OneTimeSetUp]
        public void GradingPeriodTestFixtureSetup()
        {
            var upgradeResult = PerformTestMigration("GradingPeriodSampleData.sql", null, "GradingPeriodSampleDataCalendar.csv");
            AssertUpgradeSucceeded(upgradeResult);
        }

        [TestCase("edfi.Grade")]
        [TestCase("edfi.ReportCard")]
        [TestCase("edfi.ReportCardGrade")]
        [TestCase("edfi.ReportCardStudentCompetencyObjective")]
        [TestCase("edfi.ReportCardStudentLearningObjective")]
        [TestCase("edfi.StudentAcademicRecordReportCard")]
        [TestCase("edfi.StudentCompetencyObjective")]
        [TestCase("edfi.StudentCompetencyObjectiveStudentSectionAssociation")]
        [TestCase("edfi.StudentLearningObjective")]
        [TestCase("edfi.SessionGradingPeriod")]
        [TestCase("edfi.GradebookEntry")]
        [TestCase("edfi.StudentCompetencyObjectiveGeneralStudentProgramAssociation")]
        [TestCase("edfi.StudentLearningObjectiveStudentSectionAssociation")]
        public void GradingPeriodReferences(string tableName)
        {
            var actualGradingPeriod = GetTableContents(tableName).Select(
                                                                      x => new GradingPeriod
                                                                           {
                                                                               GradingPeriodDescriptorId = x.GradingPeriodDescriptorId,
                                                                               PeriodSequence = x.GradingPeriodSequence ?? x.PeriodSequence,
                                                                               SchoolId = x.GradingPeriodSchoolId ?? x.SchoolId,
                                                                               SchoolYear = x.GradingPeriodSchoolYear ?? x.SchoolYear
                                                                           })
                                                                 .Single();

            var expectedGradingPeriod = new GradingPeriod
                                        {
                                            GradingPeriodDescriptorId = 26, SchoolId = 1, PeriodSequence = 1, SchoolYear = 2001
                                        };

            actualGradingPeriod.ShouldHaveTheSameKeyAs(expectedGradingPeriod);
        }

        [Test]
        public void GradingPeriodKey()
        {
            var allGradingPeriods = GetV3UpgradeResult<GradingPeriod>().ToList();
            allGradingPeriods.Count.ShouldBe(3);

            allGradingPeriods.GroupBy(
                x => new
                     {
                         x.GradingPeriodDescriptorId, x.PeriodSequence, x.SchoolId, x.SchoolYear
                     }).Count().ShouldBe(3);

            allGradingPeriods.GroupBy(x => x.SchoolYear).Count().ShouldBe(2);
            allGradingPeriods.GroupBy(x => x.PeriodSequence).Count().ShouldBe(2);
        }
    }
}
