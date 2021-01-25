// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.IO;
using System.IO.Compression;
using System.Linq;
using System.Net;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.VersionLevel;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.PgSql.MigrationTests.Latest
{
    [TestFixture]
    public abstract class PostgresGlenDaleTests : PostgreSqlMigrationTestBase
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.RestoreDuringFixtureSetupOnly;
        protected override string TestDataDirectoryName => "Latest";

        protected OdsUpgradeResult UpgradeResult { get; private set; }

        protected override string OptionalTestSourceOdsBackupFullPath => EnsureTestGlenDaleBackupPathExists();

        protected override string PsqlExecutable => EnsurePsqlExecutablePathExists();

        protected override string TestDisabledReason => string.IsNullOrEmpty(GetFullGlendaleBackupPath())
            ? "Glendale tests are currently optional due to disk space/runtime requirements. A Glendale backup file was not supplied, so this test will be automatically disabled.  To enable, specify a valid backup file path in the application config"
            : string.Empty;

        protected string GetGlenDaleBackupDownloadUrl()
        {
            var grandBendBackupPathsByVersion = PostgreSqlMigrationTestSettingsProvider.GetGlenDaleBackupPaths();
            if (grandBendBackupPathsByVersion.ContainsKey(FromVersion))
            {
                return grandBendBackupPathsByVersion[FromVersion];
            }

            throw new ApplicationException($"No Grand Dale backup copy Path found for version {FromVersion.DisplayName}.");
        }

        private static string GetFullGlendaleBackupPath()
        {
            return string.IsNullOrEmpty(PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("GlendaleBackupPath"))
                ? null
                : Path.GetFullPath(PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("GlendaleBackupPath"));
        }
        
        protected string EnsureTestGlenDaleBackupPathExists()
        {
            var GlenDaleBackupDownloadUrl = GetGlenDaleBackupDownloadUrl();
            var GlenDaleBackupsDirectory = Path.Combine(TestContext.CurrentContext.TestDirectory, "GlenDaleBackups");

            if (!Directory.Exists(GlenDaleBackupsDirectory))
            {
                Directory.CreateDirectory(GlenDaleBackupsDirectory);
            }

            var tempDirectory = Path.Combine(GlenDaleBackupsDirectory, FromVersion.Value.ToString());
            var versionSpecificBackupFileName = $"EdFi_Ods_Glendale_{FromVersion.Value}_PG11.sql";
            var GlenDaleBackupFilePath = Path.Combine(tempDirectory, versionSpecificBackupFileName);
            if (File.Exists(GlenDaleBackupFilePath))
            {
                return GlenDaleBackupFilePath;
            }

            if (Directory.Exists(tempDirectory))
            {
                Directory.Delete(tempDirectory);
            }

            Directory.CreateDirectory(tempDirectory);

            File.Copy(GlenDaleBackupDownloadUrl, GlenDaleBackupFilePath, true);

            return GlenDaleBackupFilePath;
        }
        private string EnsurePsqlExecutablePathExists()
        {
            var toolsPath = Path.GetFullPath(Path.Combine(TestContext.CurrentContext.TestDirectory,
                PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("DbDeployPath")));

            var pslExecutable = Path.Combine(toolsPath, "psql.exe");

            if (File.Exists(pslExecutable))
            {
                return pslExecutable;
            }

            var tempDirectory = Path.Combine(TestContext.CurrentContext.TestDirectory, "temp");

            if (Directory.Exists(tempDirectory))
            {
                Directory.Delete(tempDirectory, true);
            }

            Directory.CreateDirectory(tempDirectory);

            var zipFileName = Path.Combine(tempDirectory,  $"psql.binaries.zip");

            // Download the nuget package as a .zip
            using (var webClient = new WebClient())
            {
                webClient.DownloadFile(PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("PsqlExecutable"), zipFileName);
            }

            ZipFile.ExtractToDirectory(zipFileName, tempDirectory);

            var files = Directory.GetFiles(Path.Combine(tempDirectory, "tools"));

            foreach (var file in files)
            {
                File.Move(file, Path.Combine(toolsPath, Path.GetFileName(file)));
            }

            File.Exists(pslExecutable).ShouldBeTrue();

            return pslExecutable;
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
                        "SampleCalendarConfig-GrandBend.csv")),
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
            var latestMigrationUtilityVersionJournal = new EdFiOdsVersionJournal(ToVersion);

            var latestVersionJournalEntries = latestMigrationUtilityVersionJournal.GetJournalEntries().ToHashSet();

            var odsApiFileSystemJournalEntries = latestVersionJournalEntries.
                Where(se => se.DatabaseEngine == "PgSql" && se.IsFeature == false)
                .Select(x => new
                {
                    ScriptName = x.JournalScriptEntry,
                })
                .ToList().ToHashSet();

            var deployJournalList = GetTableContents<DeployJournal>("public.\"DeployJournal\"").Select(
                x => new
                {
                    ScriptName = x.scriptname,
                }).ToList().ToHashSet();

            odsApiFileSystemJournalEntries.SetEquals(deployJournalList).ShouldBeTrue(
              $"The JournalEntries scripts did not match the scripts available to the Migration Utility for  {EdFiOdsVersion.ParseString(ToVersion.ToString()).DisplayName}.");
        }

    }

    public class DeployJournal
    {
        public string scriptname { get; }
    }
}