// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Data;
using Dapper;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using NUnit.Framework;

namespace EdFi.Ods.Utilities.Migration.Tests.MsSql.MigrationTests.v2_to_v3.CalendarConfigErrorTests
{
    [TestFixture]
    public class CalendarConfigErrorTests : V2ToV3SqlServerMigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.EraseEdfiDataOnly;
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V25;

        [TestCase("Grand Bend Calendar Modified.sql", MigrationErrorCode.CalendarConfigMissingSessionDates, "CalendarConfigMissingSessionDate.csv")]
        [TestCase("Grand Bend Calendar Modified.sql", MigrationErrorCode.CalendarConfigMissingCalendarDates, "CalendarConfigMissingCalendarDate.csv")]
        [TestCase(
            "Grand Bend Calendar Modified.sql", MigrationErrorCode.CalendarConfigSessionSchoolYearMismatch, "CalendarConfigIncorrectSchoolYear.csv")]
        [TestCase("Grand Bend Calendar Modified.sql", MigrationErrorCode.CalendarConfigInvalidSchoolId, "CalendarConfigIncorrectSchoolId.csv")]
        public void CalendarConfigErrorExpected(string sourceDataScriptName, MigrationErrorCode expectedErrorCode,
                                                string calendarConfigurationFileName)
        {
            var result = PerformTestMigration(sourceDataScriptName, null, calendarConfigurationFileName);
            AssertUpgradeFailed(result, expectedErrorCode);
        }

        [TestCase(
            "GradingPeriodCalendarTest.sql", "CalendarConfig1999-2001.csv", "1900-01-01",
            MigrationErrorCode.CalendarConfigMissingGradingPeriodBeginDate)]
        [TestCase(
            "GradingPeriodCalendarTest.sql", "CalendarConfig1999-2001.csv", "2999-01-01",
            MigrationErrorCode.CalendarConfigMissingGradingPeriodBeginDate)]
        [TestCase(
            "GradingPeriodCalendarTest.sql", "CalendarConfig1999-2001.csv", "2000-05-01",
            MigrationErrorCode.CalendarConfigAmbiguousYearForGradingPeriodBeginDate)]
        [TestCase(
            "GradingPeriodCalendarTest.sql", "CalendarConfig1999-2001.csv", "2001-01-01",
            MigrationErrorCode.CalendarConfigGradebookEntrySchoolYearMismatch)]
        [TestCase(
            "GradingPeriodCalendarTest.sql", "CalendarConfig1999-2001.csv", "1999-05-01",
            MigrationErrorCode.CalendarConfigSessionGradingPeriodSchoolYearMismatch)]
        [TestCase("GradingPeriodDuplicateKeyTest.sql", "CalendarConfig1999-2001.csv", "2000-11-15", MigrationErrorCode.GradingPeriodDuplicateKey)]
        public void CalendarConfigGradingPeriodErrorExpected(string sourceDataScriptName, string calendarConfigurationFileName,
                                                             string session1999To2000GradingPeriodBeginDate, MigrationErrorCode expectedError)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@GradingPeriodBeginDate", session1999To2000GradingPeriodBeginDate, DbType.Date, ParameterDirection.Input);

            var result = PerformTestMigration(sourceDataScriptName, parameters, calendarConfigurationFileName);
            AssertUpgradeFailed(result, expectedError);
        }
    }
}
