// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.Linq;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v50_to_v51;
using EdFi.Ods.Utilities.Migration.VersionLevel;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.all_versions
{
    [TestFixture]
    public class EdFiOdsVersionJournalLatestVersionTests : V50ToV51MigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.FullRestoreBeforeEveryTest;

        private static readonly List<EdFiOdsVersion> VersionLevelConfigurationsUnderTest = GetVersionLevelConfigurationsUnderTest();

        [Test]
        public void MigrationUtilityScriptsShouldBeUpToDateWithLatestVersionJournalEntries()
        {
            var odsMigrationManagerResolver = new OdsMigrationManagerResolver();
            var latestVersionOverride = MigrationTestSettingsProvider.GetConfigVariable("LatestEdFiOdsUpgradeVersion");
            var latestVersion = string.IsNullOrEmpty(latestVersionOverride)
                ? odsMigrationManagerResolver.GetLatestSupportedUpgradeVersion()
                : EdFiOdsVersion.ParseString(
                    MigrationTestSettingsProvider.GetConfigVariable("LatestEdFiOdsUpgradeVersion"));

            if (!VersionLevelConfigurationsUnderTest.Contains(latestVersion))
            {
                Assert.Ignore($"Test is ignored due to version configuratioBaseVersionScriptPathn: v{latestVersion} not currently under test");
            }

            var latestMigrationUtilityVersionJournal = new EdFiOdsVersionJournal(latestVersion);

            var latestVersionJournalEntries = latestMigrationUtilityVersionJournal.GetJournalEntries().ToHashSet();

            var odsApiFileSystemJournalEntries = latestVersionJournalEntries.
                Where(se => se.DatabaseEngine == "MsSql" && se.IsFeature == false)
                .Select(x => new
                {
                    ScriptName = x.JournalScriptEntry,
                })
                .ToList().ToHashSet();

            PerformTestMigration();

            var deployJournalList = GetTableContents("[dbo].[DeployJournal]").Select(
                x => new
                {
                    ScriptName = (string)x.ScriptName,
                }).ToList().ToHashSet();

            odsApiFileSystemJournalEntries.SetEquals(deployJournalList).ShouldBeTrue(
              $"The JournalEntries scripts did not match the scripts available to the Migration Utility for latest version {latestVersion.DisplayName}.");
        }

        private static List<EdFiOdsVersion> GetVersionLevelConfigurationsUnderTest()
        {
            var odsMigrationManagerResolver = new OdsMigrationManagerResolver();
            return EdFiOdsVersion.GetAll()
                .Where(fromVersion =>
                    odsMigrationManagerResolver.VersionCanBeUpgraded(fromVersion)
                    && FromVersionIsUnderTest(fromVersion))
                .SelectMany(fromVersion => odsMigrationManagerResolver.GetSupportedUpgradeVersions(fromVersion)
                    .Where(ToVersionIsUnderTest))
                .Distinct()
                .ToList();
        }
    }
}