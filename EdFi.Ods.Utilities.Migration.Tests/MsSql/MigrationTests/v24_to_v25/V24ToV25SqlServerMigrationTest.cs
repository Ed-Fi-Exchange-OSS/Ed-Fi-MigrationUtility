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
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.Tests.Models;
using EdFi.Ods.Utilities.Migration.Tests.Models.v2;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MsSql.MigrationTests.v24_to_v25
{
    public abstract class V24ToV25SqlServerMigrationTest : SqlServerMigrationTestBase
    {
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V2UpTo24;
        protected override EdFiOdsVersion ToVersion => EdFiOdsVersion.V25;
        protected override string TestDataDirectoryName => "v24_to_v25";

        protected OdsUpgradeResult PerformTestMigration(string sourceDataScriptName = null, DynamicParameters scriptParameters = null, string calendarConfigurationFileName = null, string namespacePrefix = null)
        {
            if (sourceDataScriptName != null)
            {
                InsertTestRecords(sourceDataScriptName, scriptParameters);
            }

            var options = new Options {DatabaseConnectionString = ConnectionString, Engine = DatabaseEngine.SQLServer };
            var versionConfiguration =
                SqlServerMigrationTestsGlobalSetup.MigrationConfigurationProvider.Get(options, FromVersion.ToString(), ToVersion.ToString());

            var config = new MigrationConfigurationV24ToV25
            {
                Engine = DatabaseEngine.SQLServer,
                DatabaseConnectionString = ConnectionString,
                BaseMigrationScriptFolderPath = Path.GetFullPath(SqlServerMigrationTestSettingsProvider.GetConfigVariable("BaseMigrationScriptFolderPath")),
                BaseDescriptorXmlDirectoryPath = Path.GetFullPath(SqlServerMigrationTestSettingsProvider.GetConfigVariable("BaseDescriptorXmlDirectoryPath")),
                BypassExtensionValidationCheck = false,
                Timeout = SqlCommandTimeout
            };

            var migrationManager = new OdsMigrationManagerV24ToV25(config, versionConfiguration, SqlServerMigrationTestsGlobalSetup.UpgradeEngineBuilderProvider);
            return RunMigration(migrationManager);
        }

        protected IEnumerable<T> GetV25UpgradeResult<T>() where T : Version2DbModel
        {
            return GetTableContents<T>(ToVersion);
        }

        [Test]
        public void ValidateJournalEntries()
        {
            var databaseReferencesJournalEntries = FetchDatabaseReferencesJournalEntries().ToList();

            PerformTestMigration();

            var deployJournalFullList = GetTableContents<DeployJournal>("[dbo].[DeployJournal]").Select(
                x => new
                {
                    x.ScriptName,
                });

            var deployJournal34List = deployJournalFullList
                .Where(y => databaseReferencesJournalEntries
                    .Any(z => z.Contains(y.ScriptName, StringComparison.OrdinalIgnoreCase)))
                .Select(y => y.ScriptName)
                .ToList();

            databaseReferencesJournalEntries.ToHashSet().SetEquals(deployJournal34List.ToHashSet()).ShouldBeTrue(
                $"The JournalEntries scripts did not match the scripts available to the Migration Utility for  version {ToVersion.DisplayName}.");
        }
    }
}
