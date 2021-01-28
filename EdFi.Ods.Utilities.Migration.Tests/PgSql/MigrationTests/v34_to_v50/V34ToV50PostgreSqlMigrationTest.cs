// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.IO;
using System.Linq;
using Dapper;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.Tests.Models;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.PgSql.MigrationTests.v34_to_v50
{
    public abstract class V34ToV50PostgreSqlMigrationTest : PostgreSqlMigrationTestBase
    {
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V34;
        protected override EdFiOdsVersion ToVersion => EdFiOdsVersion.V50;
        protected override string TestDataDirectoryName => "v34_to_v50";

        protected OdsUpgradeResult PerformTestMigration(string sourceDataScriptName = null, DynamicParameters scriptParameters = null, string calendarConfigurationFileName = null, string namespacePrefix = null)
        {

            var options = new Options {DatabaseConnectionString = ConnectionString, Engine = DatabaseEngine.PostgreSQL };
            var versionConfiguration =
                PostgreSqlMigrationTestsGlobalSetup.MigrationConfigurationProvider.Get(options, FromVersion.ToString(), ToVersion.ToString());

            var config = new MigrationConfigurationV34ToV50
            {
                DatabaseConnectionString = ConnectionString,
                BaseMigrationScriptFolderPath = Path.GetFullPath(PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("BaseMigrationScriptFolderPath")),
                BaseDescriptorXmlDirectoryPath = Path.GetFullPath(PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("BaseDescriptorXmlDirectoryPath")),
                BypassExtensionValidationCheck = false,
                Timeout = SqlCommandTimeout,
                Engine = DatabaseEngine.PostgreSQL
            };

            var migrationManager = new OdsMigrationManagerV34ToV50(config, versionConfiguration, PostgreSqlMigrationTestsGlobalSetup.UpgradeEngineBuilderProvider);
            return RunMigration(migrationManager);
        }

        [Test]
        public void ValidateJournalEntries()
        {
            var databaseReferencesJournalEntries = FetchDatabaseReferencesJournalEntries().ToList();

            PerformTestMigration();

            var deployJournalFullList = GetTableContents<DeployJournal>("public.\"DeployJournal\"").Select(
                x => x.ScriptName);

            var deployJournal50List = deployJournalFullList.Where(y => databaseReferencesJournalEntries
                    .Any(z => z.Contains(y, StringComparison.OrdinalIgnoreCase)))
                .ToList();

            databaseReferencesJournalEntries.ToHashSet().SetEquals(deployJournal50List.ToHashSet()).ShouldBeTrue(
                $"The JournalEntries scripts did not match the scripts available to the Migration Utility for  version {ToVersion.DisplayName}.");
        }
    }
}
