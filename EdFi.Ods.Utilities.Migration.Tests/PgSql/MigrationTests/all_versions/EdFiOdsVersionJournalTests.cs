// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.IO;
using System.Linq;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.VersionLevel;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.PgSql.MigrationTests.all_versions
{
    [TestFixture]
    public class EdFiOdsVersionJournalTests : PostgreSqlDatabaseIntegrationTestBase
    {
        private static readonly List<EdFiOdsVersion> VersionLevelConfigurationsUnderTest = GetVersionLevelConfigurationsUnderTest();

        // TODO - Re-enable after tag support is added.
        [Test]
        [Ignore("Temporarily disabled due to we are not testing against the tag")]
        public void MigrationUtilityScriptsShouldBeUpToDateWithCurrentEdFiOdsBuild()
        {
            var odsMigrationManagerResolver = new OdsMigrationManagerResolver();

            var latestVersionOverride = PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("LatestEdFiOdsUpgradeVersion");
            var latestVersion = string.IsNullOrEmpty(latestVersionOverride)
                ? odsMigrationManagerResolver.GetLatestSupportedUpgradeVersion(DatabaseEngine.PostgreSQL)
                : EdFiOdsVersion.ParseString(
                    PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("LatestEdFiOdsUpgradeVersion"));

            if (!VersionLevelConfigurationsUnderTest.Contains(latestVersion))
            {
                Assert.Ignore($"Test is ignored due to version configuration: v{latestVersion} not currently under test");
            }

            var currentEdFiOdsScriptDirectoryRoot =
                PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("CurrentEdFiOdsScriptDirectory");
            if (string.IsNullOrEmpty(currentEdFiOdsScriptDirectoryRoot))
            {
                Assert.Ignore($"Validation of current Ed-Fi ODS scripts is currently disabled.  To re-enable, point the CurrentEdFiOdsDataScriptDirectory and CurrentEdFiOdsStructureScriptDirectory configuration options toward the latest set of scripts for comparison");
            }

            // CurrentEdFiOdsScriptDirectory has to point to EdFi.Ods.Standard to narrow the scripts, but we need that folder name as part of the relevant relative path.
            var allScripts = Directory.GetFiles(currentEdFiOdsScriptDirectoryRoot, "*.sql", SearchOption.AllDirectories).OrderBy(f => f);
            int relativePathStartIndex = new DirectoryInfo(currentEdFiOdsScriptDirectoryRoot).Parent.FullName.Length;

            var odsApiFileSystemJournalEntries = allScripts.Select(
                    s => DatabaseScriptJournalEntry.FromRelativeFilePath(Path.GetFullPath(s).Substring(relativePathStartIndex)))
                // Only worrying about MsSql for now
                .Where(se => se.DatabaseEngine == "PgSql")
                .ToHashSet();

            var latestMigrationUtilityVersionJournal = new EdFiOdsVersionJournal(latestVersion);

            var latestVersionJournalEntries = latestMigrationUtilityVersionJournal.GetJournalEntries().ToHashSet();

            latestVersionJournalEntries.SetEquals(odsApiFileSystemJournalEntries).ShouldBeTrue(
                $"The scripts found in {currentEdFiOdsScriptDirectoryRoot} did not match the scripts available to the Migration Utility for latest version {latestVersion.DisplayName}.  The scripts missing were:\n{string.Join("\n", odsApiFileSystemJournalEntries.Except(latestVersionJournalEntries).Select(je => je.RelativeFilePath))}\nThe migration utility may no longer be up to date.  Please ensure that the latest referenced ODS version set in this test ({latestVersion}) is still correct, and then ensure that the migration utility has been brought up to date with the latest Ed-Fi-ODS changes.  Finally, bring the migration utility's scripts ({EdFiOdsVersionJournal.DefaultRelativeBaseScriptPath}) up to date with the Ed-Fi-ODS build to ensure that the [dbo].[DeploymentJournal] table will be updated with the correct script information.");
        }

        private static List<EdFiOdsVersion> GetVersionLevelConfigurationsUnderTest()
        {
            var odsMigrationManagerResolver = new OdsMigrationManagerResolver();
            return EdFiOdsVersion.GetAll()
                .Where(fromVersion =>
                    odsMigrationManagerResolver.VersionCanBeUpgraded(fromVersion, DatabaseEngine.PostgreSQL)
                    && FromVersionIsUnderTest(fromVersion))
                .SelectMany(fromVersion => odsMigrationManagerResolver.GetSupportedUpgradeVersions(fromVersion, DatabaseEngine.PostgreSQL)
                    .Where(ToVersionIsUnderTest))
                .Distinct()
                .ToList();
        }
    }
}
