// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Dapper;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Models;
using EdFi.Ods.Utilities.Migration.Tests.Models.v2;
using EdFi.Ods.Utilities.Migration.Tests.Models.v3;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MsSql.MigrationTests.v2_to_v3
{
    public abstract class V2ToV3SqlServerMigrationTest : SqlServerMigrationTestBase
    {
        protected override EdFiOdsVersion ToVersion => EdFiOdsVersion.V31;
        protected override string TestDataDirectoryName => "v2_to_v3";

        protected OdsUpgradeResult PerformTestMigration(string sourceDataScriptName = null,
            DynamicParameters scriptParameters = null, string calendarConfigurationFileName = null,
            string namespacePrefix = null)
        {
            if (sourceDataScriptName != null) InsertTestRecords(sourceDataScriptName, scriptParameters);

            var calendarConfigurationFilePath = calendarConfigurationFileName == null
                ? ""
                : Path.Combine(GetTestDataDirectory(), calendarConfigurationFileName);

            var options = new Options
            {
                Engine = DatabaseEngine.SQLServer,
                DatabaseConnectionString = ConnectionString,
                BaseMigrationScriptFolderPath =
                    Path.GetFullPath(SqlServerMigrationTestSettingsProvider.GetConfigVariable("BaseMigrationScriptFolderPath")),
                CalendarConfigFilePath = calendarConfigurationFilePath,
                BaseDescriptorXmlDirectoryPath =
                    Path.GetFullPath(SqlServerMigrationTestSettingsProvider.GetConfigVariable("BaseDescriptorXmlDirectoryPath")),
                BypassExtensionValidationCheck = false,
                Timeout = SqlCommandTimeout,
                DescriptorNamespacePrefix = string.IsNullOrEmpty(namespacePrefix)
                    ? V2ToV3MigrationConstants.DefaultEdFiNamespacePrefix
                    : namespacePrefix,
                CredentialNamespacePrefix = V2ToV3MigrationConstants.DefaultEdFiNamespacePrefix
            };

            var versionConfiguration =
                SqlServerMigrationTestsGlobalSetup.MigrationConfigurationProvider.Get(options, FromVersion.ToString(), ToVersion.ToString());

            var migrationManagers = SqlServerMigrationTestsGlobalSetup.OdsMigrationManagerFactory(options, versionConfiguration)
                .CreateManagers();

            return RunMigration(migrationManagers);
        }

        protected IEnumerable<T> GetV2SourceTableContents<T>()
            where T : Version2DbModel => GetTableContents<T>(FromVersion);

        protected IEnumerable<T> GetV3UpgradeResult<T>()
            where T : Version3DbModel => GetTableContents<T>(ToVersion);

        [Test]
        public void ValidateJournalEntries()
        {
            var databaseReferencesJournalEntries = FetchDatabaseReferencesJournalEntries().ToList();

            PerformTestMigration();

            var deployJournalFullList = GetTableContents<DeployJournal>("[dbo].[DeployJournal]").Select(
                x => x.ScriptName).ToList();

            var deployJournal3List = deployJournalFullList
                .Where(y => databaseReferencesJournalEntries
                 .Any(z => z.Contains(y, StringComparison.OrdinalIgnoreCase)))
                .ToList();

            databaseReferencesJournalEntries.ToHashSet().SetEquals(deployJournal3List.ToHashSet()).ShouldBeTrue(
                $"The JournalEntries scripts did not match the scripts available to the Migration Utility for  version {ToVersion.DisplayName}.");
        }
    }
}