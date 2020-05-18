// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Extensions;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v3;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v2_to_v3.MeetingTimeTests
{
    [TestFixture]
    public class MeetingTimeTests : V2ToV3MigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption => DatabaseRestoreSetupOption.RestoreDuringFixtureSetupOnly;
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V25;
        private List<Models.v2.BellSchedule> V2BellScheduleTestCases { get; set; }
        private List<Models.v2.BellScheduleMeetingTime> V2BellScheduleMeetingTimeTestCases { get; set; }
        private MeetingTimeTestCaseData TestCaseInput { get; set; } = new MeetingTimeTestCaseData
        {
            BellScheduleNameWithOneResolvableAlternateDay = "BellSchedule-OneAlternateDay",
            BellScheduleNameWithConflictingAlternateDay = "BellSchedule-ConflictingAlternateDay",
            ValidAlternateDayName = "ValidDayName",
            AttendanceClassPeriod = "Homeroom",
            NonAttendanceClassPeriod = "NoAttendance",
            ConflictingAttendanceClassPeriod = "ConflictingValue"
        };


        [OneTimeSetUp]
        public void Setup()
        {
            var testCaseParameters = new DynamicParameters();
            testCaseParameters.Add("@BellScheduleNameWithOneResolvableAlternateDay", TestCaseInput.BellScheduleNameWithOneResolvableAlternateDay, DbType.String, ParameterDirection.Input);
            testCaseParameters.Add("@ValidAlternateDayName", TestCaseInput.ValidAlternateDayName, DbType.String, ParameterDirection.Input);
            testCaseParameters.Add("@AttendanceClassPeriod", TestCaseInput.AttendanceClassPeriod, DbType.String, ParameterDirection.Input);
            testCaseParameters.Add("@NonAttendanceClassPeriod", TestCaseInput.NonAttendanceClassPeriod, DbType.String, ParameterDirection.Input);
            testCaseParameters.Add("@ConflictingAttendanceClassPeriod", TestCaseInput.ConflictingAttendanceClassPeriod, DbType.String, ParameterDirection.Input);
            testCaseParameters.Add("@BellScheduleNameWithConflictingAlternateDay", TestCaseInput.BellScheduleNameWithConflictingAlternateDay, DbType.String, ParameterDirection.Input);

            InsertTestRecords("MeetingTimeTests.sql", testCaseParameters);
            V2BellScheduleTestCases = GetV2SourceTableContents<Models.v2.BellSchedule>().ToList();
            V2BellScheduleTestCases.Any().ShouldBe(true);

            V2BellScheduleMeetingTimeTestCases = GetV2SourceTableContents<Models.v2.BellScheduleMeetingTime>().ToList();
            V2BellScheduleMeetingTimeTestCases.Any().ShouldBe(true);

            var migrationResult = PerformTestMigration(calendarConfigurationFileName: "MeetingTimeTestsCalendar.csv");
            AssertUpgradeSucceeded(migrationResult);
        }

        [Test]
        public void BellScheduleKey()
        {
            var expectedBellScheduleResults = V2BellScheduleTestCases
                .GroupBy(x => new { x.BellScheduleName, x.SchoolId })
                .Select(x => new BellSchedule
                {
                    BellScheduleName = x.Key.BellScheduleName,
                    SchoolId = x.Key.SchoolId
                })
                .ToList();

            var actualBellScheduleResults = GetV3UpgradeResult<BellSchedule>()
                .ToList();

            actualBellScheduleResults.Any().ShouldBe(true);
            actualBellScheduleResults.ShouldHaveTheSameKeysAs(expectedBellScheduleResults);
        }

        [Test]
        public void BellScheduleAlternateDay()
        {
            var allBellScheduleResults = GetV3UpgradeResult<BellSchedule>().ToList();
            allBellScheduleResults.Select(x => x.AlternateDayName).ShouldAllBe(x => x == TestCaseInput.ValidAlternateDayName);
        }

        [Test]
        public void ClassPeriodMeetingTime()
        {
            var expectedClassPeriodMeetingTimes = V2BellScheduleMeetingTimeTestCases
                .GroupBy(x => new { x.ClassPeriodName, x.SchoolId, x.StartTime, x.EndTime })
                .Select(x => new ClassPeriodMeetingTime
                {
                    SchoolId = x.Key.SchoolId,
                    ClassPeriodName = x.Key.ClassPeriodName,
                    StartTime = x.Key.StartTime,
                    EndTime = x.Key.EndTime
                })
                .ToList();

            var actualClassPeriodMeetingTimes = GetV3UpgradeResult<ClassPeriodMeetingTime>().ToList();
            actualClassPeriodMeetingTimes.Any().ShouldBe(true);
            actualClassPeriodMeetingTimes.ShouldHaveTheSameKeysAs(expectedClassPeriodMeetingTimes);
        }

        [Test]
        public void BellScheduleClassPeriod()
        {
            var expectedBellScheduleClassPeriods = V2BellScheduleMeetingTimeTestCases
                .GroupBy(x => new { x.ClassPeriodName, x.SchoolId, x.BellScheduleName })
                .Select(x => new BellScheduleClassPeriod
                {
                    SchoolId = x.Key.SchoolId,
                    ClassPeriodName = x.Key.ClassPeriodName,
                    BellScheduleName = x.Key.BellScheduleName,
                })
                .ToList();

            var actualBellScheduleClassPeriods = GetV3UpgradeResult<BellScheduleClassPeriod>().ToList();
            actualBellScheduleClassPeriods.Any().ShouldBe(true);
            actualBellScheduleClassPeriods.ShouldHaveTheSameKeysAs(expectedBellScheduleClassPeriods);
        }

        [Test]
        public void ClassPeriodOfficialAttendancePeriod()
        {
            var allClassPeriods = GetV3UpgradeResult<ClassPeriod>().ToList();

            var officialAttendancePeriods =
                allClassPeriods.Where(x => x.OfficialAttendancePeriod == true)
                    .Select(x => x.ClassPeriodName)
                    .ToList();

            var nonOfficialAttendancePeriods =
                allClassPeriods.Where(x => x.OfficialAttendancePeriod == false)
                    .Select(x => x.ClassPeriodName)
                    .ToList();

            var unknownOfficialAttendancePeriods =
                allClassPeriods.Where(x => x.OfficialAttendancePeriod == null)
                    .Select(x => x.ClassPeriodName)
                    .ToList();

            nonOfficialAttendancePeriods.ShouldAllBe(x => x == TestCaseInput.NonAttendanceClassPeriod);
            unknownOfficialAttendancePeriods.ShouldBeEmpty();
            officialAttendancePeriods.ShouldAllBe(x => x == TestCaseInput.AttendanceClassPeriod || x == TestCaseInput.ConflictingAttendanceClassPeriod);
        }

        [Test]
        public void BellScheduleGradeLevel()
        {
            var expectedBellScheduleGradeLevelResults = V2BellScheduleTestCases
                .GroupBy(x => new { x.BellScheduleName, x.SchoolId, x.GradeLevelDescriptorId })
                .Select(x => new BellScheduleGradeLevel
                {
                    BellScheduleName = x.Key.BellScheduleName,
                    SchoolId = x.Key.SchoolId,
                    GradeLevelDescriptorId = x.Key.GradeLevelDescriptorId
                })
                .ToList();

            var allBellScheduleGradeLevels = GetV3UpgradeResult<BellScheduleGradeLevel>().ToList();
            allBellScheduleGradeLevels.Any().ShouldBe(true);
            allBellScheduleGradeLevels.ShouldHaveTheSameKeysAs(expectedBellScheduleGradeLevelResults);
        }

        [Test]
        public void BellScheduleDate()
        {
            var expectedBellScheduleDates = V2BellScheduleTestCases
                .GroupBy(x => new { x.BellScheduleName, x.SchoolId, x.Date })
                .Select(x => new BellScheduleDate
                {
                    BellScheduleName = x.Key.BellScheduleName,
                    SchoolId = x.Key.SchoolId,
                    Date = x.Key.Date
                })
                .ToList();

            var allBellScheduleDates = GetV3UpgradeResult<BellScheduleDate>().ToList();
            allBellScheduleDates.Any().ShouldBe(true);
            allBellScheduleDates.ShouldHaveTheSameKeysAs(expectedBellScheduleDates);
        }

        private class MeetingTimeTestCaseData
        {
            public string BellScheduleNameWithOneResolvableAlternateDay { get; set; }
            public string BellScheduleNameWithConflictingAlternateDay { get; set; }
            public string ValidAlternateDayName { get; set; }
            public string AttendanceClassPeriod { get; set; }
            public string NonAttendanceClassPeriod { get; set; }
            public string ConflictingAttendanceClassPeriod { get; set; }
        }
    }
}