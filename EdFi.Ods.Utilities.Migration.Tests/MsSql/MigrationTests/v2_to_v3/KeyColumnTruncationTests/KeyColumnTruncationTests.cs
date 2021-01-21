// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Data;
using System.Linq;
using Dapper;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MsSql.MigrationTests.v2_to_v3.KeyColumnTruncationTests
{
    [TestFixture]
    public class KeyColumnTruncationTests : V2ToV3SqlServerMigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption => DatabaseRestoreSetupOption.RestoreDuringFixtureSetupOnly;
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V25;
        private const string LongAuthorName = "This is a long author name that exceeds one hundred characters and will become a duplicate record after it gets truncated";
        private const string ShortAuthorName = "Not a duplicate";

        [OneTimeSetUp]
        public void TestFixtureSetup()
        {
            var parameters = new DynamicParameters();
            parameters.Add("@longAuthorName", $"{LongAuthorName} copy 1 of 2", DbType.String, ParameterDirection.Input);
            parameters.Add("@longAuthorNameDuplicate", $"{LongAuthorName} copy 2 of 2", DbType.String, ParameterDirection.Input);
            parameters.Add("@shortAuthorName", $"{ShortAuthorName}", DbType.String, ParameterDirection.Input);

            var upgradeResult = PerformTestMigration("KeyColumnTruncationTestCases.sql", parameters);
            AssertUpgradeSucceeded(upgradeResult);
        }

        [TestCase("edfi.AssessmentContentStandardAuthor")]
        [TestCase("edfi.EducationContentAuthor")]
        [TestCase("edfi.LearningObjectiveContentStandardAuthor")]
        [TestCase("edfi.LearningStandardContentStandardAuthor")]
        public void ShouldHandleDuplicateKeysWhenAuthorColumnIsTruncated(string tableName)
        {
            const int authorMaxColumnLength = 100;

            var authorResult = GetTableContents(tableName)
                              .Select(x => x.Author.ToString())
                              .ToArray();

            authorResult.Length.ShouldBe(2);
            authorResult.ShouldContain(LongAuthorName.Substring(0, authorMaxColumnLength));
            authorResult.ShouldContain(ShortAuthorName);
        }
    }
}
