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
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Latest
{
    [TestFixture]
    public abstract class GrandBendTests : MigrationTestBase
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.RestoreDuringFixtureSetupOnly;
        protected override string TestDataDirectoryName => "Latest";

        protected OdsUpgradeResult UpgradeResult { get; private set; }

        protected override string TestDisabledReason
            => FromVersionIsUnderTest(FromVersion) && ToVersionIsUnderTest(ToVersion)
                ? string.Empty
                : $"Skipping due to version configuration:  Upgrade from {FromVersion} to {ToVersion} not currently under test";

        protected string GetGrandBendBackupDownloadUrl()
        {
            var grandBendBackupPathsByVersion = MigrationTestSettingsProvider.GetGrandBendBackupPaths();
            if (grandBendBackupPathsByVersion.ContainsKey(FromVersion))
            {
                return grandBendBackupPathsByVersion[FromVersion];
            }

            throw new ApplicationException($"No Grand Bend backup download url found for version {FromVersion.DisplayName}.");
        }

        protected override string OptionalTestSourceOdsBackupFullPath => EnsureTestGrandBendBackupPathExists();

        protected string EnsureTestGrandBendBackupPathExists()
        {
            var grandBendBackupDownloadUrl = GetGrandBendBackupDownloadUrl();
            var grandBendBackupsDirectory = Path.Combine(TestContext.CurrentContext.TestDirectory, "GrandBendBackups");

            if (!Directory.Exists(grandBendBackupsDirectory))
            {
                Directory.CreateDirectory(grandBendBackupsDirectory);
            }

            var tempDirectory = Path.Combine(grandBendBackupsDirectory, FromVersion.Value.ToString());
            var versionSpecificBackupFileName = $"EdFi.Samples.Ods_{FromVersion.Value}.bak";
            var grandBendBackupFilePath = Path.Combine(grandBendBackupsDirectory, versionSpecificBackupFileName);
            if (File.Exists(grandBendBackupFilePath))
            {
                return grandBendBackupFilePath;
            }

            if (Directory.Exists(tempDirectory))
            {
                Directory.Delete(tempDirectory);
            }
            Directory.CreateDirectory(tempDirectory);

            var zipFileName = Path.Combine(tempDirectory, "EdFi.Samples.Ods.zip");

            // Download the nuget package as a .zip
            using (var webClient = new WebClient())
            {
                webClient.DownloadFile(grandBendBackupDownloadUrl, zipFileName);
            }

            // Extract the zip file
            ZipFile.ExtractToDirectory(zipFileName, tempDirectory);

            var potentialBackupFiles = Directory.GetFiles(tempDirectory, "*.bak");
            if (potentialBackupFiles.Length == 0)
            {
                throw new ApplicationException($"Unable to acquire Grand Bend backup from {grandBendBackupDownloadUrl} as part of test setup.  No backup files were found in download zip {zipFileName}.");
            }
            if (potentialBackupFiles.Length > 1)
            {
                throw new ApplicationException($"Unable to acquire Grand Bend backup from {grandBendBackupDownloadUrl} as part of test setup.  More than one backup file was found in download zip {zipFileName}.");
            }

            File.Move(potentialBackupFiles.Single(), grandBendBackupFilePath);

            Directory.Delete(tempDirectory, true);

            return grandBendBackupFilePath;
        }

        [OneTimeSetUp]
        public void Setup()
        {
            UpdateBackupData();

            var options = new Options
            {
                DatabaseConnectionString = ConnectionString,
                BaseMigrationScriptFolderPath =
                    Path.GetFullPath(MigrationTestSettingsProvider.GetConfigVariable("BaseMigrationScriptFolderPath")),
                BaseDescriptorXmlDirectoryPath =
                    Path.GetFullPath(MigrationTestSettingsProvider.GetConfigVariable("BaseDescriptorXmlDirectoryPath")),
                CalendarConfigFilePath = Path.GetFullPath(
                    Path.Combine(
                        MigrationTestSettingsProvider.GetConfigVariable("BaseCalendarConfigPath"),
                        "SampleCalendarConfig-GrandBend.csv")),
                BypassExtensionValidationCheck = false,
                Timeout = SqlCommandTimeout,
                DescriptorNamespacePrefix = "uri://ed-fi.org/",
                CredentialNamespacePrefix = "uri://ed-fi.org/"
            };

            var upgradeConfiguration =
                MigrationConfigurationProvider.Get(options, null,
                    ToVersion.ToString());

            upgradeConfiguration.VersionBeforeUpgrade.ShouldBe(FromVersion);
            upgradeConfiguration.RequestedFinalUpgradeVersion.ShouldBe(ToVersion);

            var migrationManager = OdsMigrationManagerFactory.Create(options, upgradeConfiguration)
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
    }
}