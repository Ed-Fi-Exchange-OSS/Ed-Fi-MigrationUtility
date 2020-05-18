// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Data;
using Dapper;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using NUnit.Framework;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v2_to_v3.CalendarDefaultSchoolYearErrorTests
{
    [TestFixture]
    public class CalendarDefaultSchoolYearErrorTests : V2ToV3MigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.EraseEdfiDataOnly;
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V25;
        private static readonly List<DefaultSchoolYearTestCase> AllTestCases = DefaultSchoolYearTestCase.All.Value;

        [Test]
        [TestCaseSource(nameof(AllTestCases))]
        public void ErrorExpectedCannotUseDefaultSchoolYear(DefaultSchoolYearTestCase testCase)
        {
            var parameters = new DynamicParameters();
            parameters.Add("@Session1SchoolYear", testCase.Session1Year, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@Session2SchoolYear", testCase.Session2Year, DbType.Int32, ParameterDirection.Input);
            parameters.Add("@Session1BeginDate", testCase.Session1BeginDate, DbType.DateTime, ParameterDirection.Input);
            parameters.Add("@Session2BeginDate", testCase.Session2BeginDate, DbType.DateTime, ParameterDirection.Input);
            parameters.Add("@Session1EndDate", testCase.Session1EndDate, DbType.DateTime, ParameterDirection.Input);
            parameters.Add("@Session2EndDate", testCase.Session2EndDate, DbType.DateTime, ParameterDirection.Input);
            parameters.Add("@CalendarDate", testCase.CalendarDate, DbType.DateTime, ParameterDirection.Input);
            parameters.Add("@GradingPeriodBeginDate", testCase.GradingPeriodBeginDate, DbType.DateTime, ParameterDirection.Input);
            var result = PerformTestMigration("CalendarDefaultSchoolYearErrorTests.sql", parameters);
            AssertUpgradeFailed(result, testCase.ExpectedErrorCode);
        }
    }

    public class DefaultSchoolYearTestCase
    {
        private static readonly List<DefaultSchoolYearTestCase> _all = new List<DefaultSchoolYearTestCase>();
        public static readonly Lazy<List<DefaultSchoolYearTestCase>> All = new Lazy<List<DefaultSchoolYearTestCase>>(() => _all);

        public static DefaultSchoolYearTestCase MultiYearODS = new DefaultSchoolYearTestCase
                                                               {
                                                                   TestCaseName = "Multi year ODS", Session1Year = 2018,
                                                                   Session1BeginDate = new DateTime(2018, 8, 12),
                                                                   Session1EndDate = new DateTime(2019, 6, 26), Session2Year = 2019,
                                                                   Session2BeginDate = new DateTime(2019, 8, 12),
                                                                   Session2EndDate = new DateTime(2020, 6, 26),
                                                                   CalendarDate = new DateTime(2018, 8, 12),
                                                                   GradingPeriodBeginDate = new DateTime(2018, 8, 12),
                                                                   ExpectedErrorCode = MigrationErrorCode.CalendarConfigRequiredMultiYearSession
                                                               };

        public static DefaultSchoolYearTestCase CalendarDateNotInSession = new DefaultSchoolYearTestCase
                                                                           {
                                                                               TestCaseName = "Calendar date not in session", Session1Year = 2018,
                                                                               Session1BeginDate = new DateTime(2018, 8, 12),
                                                                               Session1EndDate = new DateTime(2018, 9, 7), Session2Year = 2018,
                                                                               Session2BeginDate = new DateTime(2018, 9, 7),
                                                                               Session2EndDate = new DateTime(2018, 6, 26),
                                                                               CalendarDate = new DateTime(1999, 1, 1),
                                                                               GradingPeriodBeginDate = new DateTime(2018, 8, 12),
                                                                               ExpectedErrorCode = MigrationErrorCode
                                                                                  .CalendarConfigRequiredCalendarDateNotInSession
                                                                           };

        public static DefaultSchoolYearTestCase GradingPeriodBeginDateNotInSession = new DefaultSchoolYearTestCase
                                                                                     {
                                                                                         TestCaseName = "Grading Period BeginDate not in session",
                                                                                         Session1Year = 2018,
                                                                                         Session1BeginDate = new DateTime(2018, 8, 12),
                                                                                         Session1EndDate = new DateTime(2018, 9, 7),
                                                                                         Session2Year = 2018,
                                                                                         Session2BeginDate = new DateTime(2018, 9, 7),
                                                                                         Session2EndDate = new DateTime(2018, 6, 26),
                                                                                         CalendarDate = new DateTime(2018, 8, 12),
                                                                                         GradingPeriodBeginDate = new DateTime(1999, 1, 1),
                                                                                         ExpectedErrorCode = MigrationErrorCode
                                                                                            .CalendarConfigRequiredGradingPeriodBeginDateNotInSession
                                                                                     };

        private DefaultSchoolYearTestCase()
        {
            _all.Add(this);
        }

        public string TestCaseName { get; set; }

        public int Session1Year { get; set; }

        public DateTime Session1BeginDate { get; set; }

        public DateTime Session1EndDate { get; set; }

        public int Session2Year { get; set; }

        public DateTime Session2BeginDate { get; set; }

        public DateTime Session2EndDate { get; set; }

        public DateTime CalendarDate { get; set; }

        public DateTime GradingPeriodBeginDate { get; set; }

        public MigrationErrorCode ExpectedErrorCode { get; set; }

        public override string ToString()
        {
            return TestCaseName;
        }
    }
}
