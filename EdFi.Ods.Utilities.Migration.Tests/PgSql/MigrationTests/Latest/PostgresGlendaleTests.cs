// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.IO;
using System.Linq;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.VersionLevel;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.PgSql.MigrationTests.Latest
{
    [TestFixture]
    public abstract class PostgresGlendaleTests : PostgreSqlMigrationTestBase
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.RestoreDuringFixtureSetupOnly;
        protected override string TestDataDirectoryName => "Latest";

        protected OdsUpgradeResult UpgradeResult { get; private set; }

        protected override string TestDisabledReason => string.IsNullOrEmpty(GetFullGlendaleBackupPath())
            ? "Glendale tests are currently optional due to disk space/runtime requirements. A Glendale backup file was not supplied, so this test will be automatically disabled.  To enable, specify a valid backup file path in the application config"
            : string.Empty;

        private static string GetFullGlendaleBackupPath()
        {
            return string.IsNullOrEmpty(PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("GlendaleBackupPath"))
                ? null
                : Path.GetFullPath(PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("GlendaleBackupPath"));
        }
        
        [OneTimeSetUp]
        public void Setup()
        {
            UpdateBackupData();

            var options = new Options
            {
                Engine = DatabaseEngine.PostgreSQL,
                DatabaseConnectionString = ConnectionString,
                BaseMigrationScriptFolderPath =
                    Path.GetFullPath(PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("BaseMigrationScriptFolderPath")),
                BaseDescriptorXmlDirectoryPath =
                    Path.GetFullPath(PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("BaseDescriptorXmlDirectoryPath")),
                CalendarConfigFilePath = Path.GetFullPath(
                    Path.Combine(
                        PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("BaseCalendarConfigPath"),
                        "SampleCalendarConfig-Glendale.csv")),
                BypassExtensionValidationCheck = false,
                Timeout = SqlCommandTimeout,
                DescriptorNamespacePrefix = "uri://ed-fi.org/",
                CredentialNamespacePrefix = "uri://ed-fi.org/"
            };

            var upgradeConfiguration =
                PostgreSqlMigrationTestsGlobalSetup.MigrationConfigurationProvider.Get(options, null,
                    ToVersion.ToString());

            upgradeConfiguration.VersionBeforeUpgrade.ShouldBe(FromVersion);
            upgradeConfiguration.RequestedFinalUpgradeVersion.ShouldBe(ToVersion);

            var migrationManager = PostgreSqlMigrationTestsGlobalSetup.OdsMigrationManagerFactory(options, upgradeConfiguration)
                .CreateManagers();

            UpgradeResult = RunMigration(migrationManager);
        }

        protected virtual void UpdateBackupData()
        {
        }

        [Test]
        public void ShouldPassGrandBendDefaultValidationWithNoErrors()
        {
            AssertUpgradeSucceeded(UpgradeResult);
        }

        [Test]
        public void ShouldPassJournalEntriesWithNoErrors()
        {
            var databaseReferencesJournalEntries = FetchDatabaseReferencesJournalEntries().ToList().ToHashSet();

            var deployJournalFullList = GetTableContents<DeployJournal>("public.\"DeployJournal\"")
                .Select(x => x.scriptname).ToList().ToHashSet();

            bool isSubset = databaseReferencesJournalEntries.IsSubsetOf(deployJournalFullList);

            isSubset.ShouldBeTrue(
              $"The JournalEntries scripts did not match the scripts available to the Migration Utility for  {EdFiOdsVersion.ParseString(ToVersion.ToString()).DisplayName}.");
        }
    }

    public class DeployJournal
    {
        public string scriptname { get; }
    }
}