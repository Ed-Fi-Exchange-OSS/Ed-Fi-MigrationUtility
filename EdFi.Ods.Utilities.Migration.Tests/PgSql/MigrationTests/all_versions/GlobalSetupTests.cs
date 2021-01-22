// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using Dapper;
using DbUp;
using DbUp.Helpers;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Logging;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.Providers;
using EdFi.Ods.Utilities.Migration.Queries;
using log4net;
using Npgsql;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.PgSql.MigrationTests.all_versions
{
    [TestFixture]
    public class GlobalSetupTests : PostgreSqlDatabaseIntegrationTestBase
    {
        private readonly ILog _logger = LogManager.GetLogger(typeof(GlobalSetupTests));

        private static readonly List<GlobalVersionUpgradeTestCase> AllVersionUpgradesUnderTest =
            new OdsMigrationManagerResolver()
                .GetAllUpgradableVersions(DatabaseEngine.PostgreSQL)
                .Where(FromVersionIsUnderTest)
                .SelectMany(GetAllUpgradesUnderTest)
                .ToList();

        [TestCaseSource(nameof(AllVersionUpgradesUnderTest))]
        public void ShouldSetupCorrectVersionAndCleanUp(GlobalVersionUpgradeTestCase testCase)
        {
            using (var connection = new NpgsqlConnection(PostgreSqlMigrationTestSettingsProvider.GetConnectionString("RestoreBackupOnly")))
            {
                DropTestDatabase(connection);
                CreateEmptyTestDatabase(connection);
            }

            var upgradeStatusQuery = new GetStatusOfUpgradeInProgress(new PostgreSqlDatabaseConnectionProvider());
            Setup(testCase.FromVersion, testCase.ToVersion);

            var upgradeStatus = upgradeStatusQuery.Execute(ConnectionString);
            upgradeStatus.InProgress.ShouldBe(true);

            CleanUp();

            upgradeStatus = upgradeStatusQuery.Execute(ConnectionString);
            upgradeStatus.InProgress.ShouldBe(false);
        }

        private void Setup(EdFiOdsVersion fromVersion, EdFiOdsVersion toVersion)
        {
            try
            {
                string scriptsPath = Path.GetFullPath(Path.Combine(
                    PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("BaseMigrationScriptFolderPath"),
                    DatabaseEngine.Postgres.ScriptsFolderName,
                    MigrationStep.Setup.FolderName));

                var upgradeEngine = DeployChanges.To
                    .PostgresqlDatabase(ConnectionString)
                    .WithScriptsFromFileSystem(scriptsPath, Encoding.UTF8)
                    .LogScriptOutput()
                    .JournalTo(new NullJournal())
                    .LogTo(new DbUpLogger(_logger))
                    .Build();

                upgradeEngine.PerformUpgrade();
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }

        private void CleanUp()
        {
            using var connection = new NpgsqlConnection(ConnectionString);
            connection.Execute("DROP SCHEMA IF EXISTS migration_tempdata CASCADE;");
        }

        public static List<GlobalVersionUpgradeTestCase> GetAllUpgradesUnderTest(EdFiOdsVersion fromVersion)
        {
            return new OdsMigrationManagerResolver()
                .GetSupportedUpgradeVersions(fromVersion, DatabaseEngine.PostgreSQL)
                .Select(toVersion => new GlobalVersionUpgradeTestCase
                {
                    FromVersion = fromVersion,
                    ToVersion = toVersion
                })
                .Where(upgrade => ToVersionIsUnderTest(upgrade.ToVersion))
                .ToList();
        }

        public class GlobalVersionUpgradeTestCase
        {
            public EdFiOdsVersion FromVersion { get; set; }
            public EdFiOdsVersion ToVersion { get; set; }

            public override string ToString()
            {
                return $"v{FromVersion} => v{ToVersion}";
            }
        }
    }
}