// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.IO;
using System.IO.Compression;
using System.Linq;
using System.Net;
using Dapper;
using DatabaseSchemaReader;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.Providers;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Utilities;
using EdFi.Ods.Utilities.Migration.VersionLevel;
using Npgsql;
using NUnit.Framework;
using Respawn;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.PgSql.MigrationTests
{
    public abstract class PostgreSqlMigrationTestBase : PostgreSqlDatabaseIntegrationTestBase
    {
        protected abstract DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; }
        protected abstract string TestDataDirectoryName { get; }
        protected virtual string OptionalTestSourceOdsBackupFullPath => EnsureTestGlendaleBackupPathExists();
        protected virtual string TestDisabledReason { get; } = null;
        protected abstract EdFiOdsVersion FromVersion { get; }
        protected abstract EdFiOdsVersion ToVersion { get; }
        protected virtual List<EdFiOdsFeature> FeaturesBeforeUpgrade => new List<EdFiOdsFeature>();

        protected TestSchemaVersion TestFromVersion => new TestSchemaVersion(FromVersion, FeaturesBeforeUpgrade);
        protected TestSchemaVersion TestToVersion => new TestSchemaVersion(ToVersion, FeaturesBeforeUpgrade);

        private EdFiOdsVersion CurrentSchemaVersion { get; set; }
        private string PsqlExecutable => EnsurePsqlExecutablePathExists();

        [OneTimeSetUp]
        public void BaseTestFixtureSetup()
        {
            if (!string.IsNullOrEmpty(TestDisabledReason))
            {
                Assert.Ignore(TestDisabledReason);
            }

            DisableTestIfFilteredByVersionConfiguration();

            if (!string.IsNullOrEmpty(OptionalTestSourceOdsBackupFullPath))
            {
                File.Exists(OptionalTestSourceOdsBackupFullPath).ShouldBe(true);
            }

            if (SchemaMetadataCheckEnabled())
            {
                BuildSchemaMetadata(TestToVersion);
            }

            if (DatabaseRestoreSetupOption == DatabaseRestoreSetupOption.EraseEdfiDataOnly ||
                DatabaseRestoreSetupOption == DatabaseRestoreSetupOption.RestoreDuringFixtureSetupOnly)
            {
                CreateDefaultOds(TestFromVersion, OptionalTestSourceOdsBackupFullPath);
            }
        }

        [SetUp]
        public void BaseTestSetup()
        {
            if (DatabaseRestoreSetupOption == DatabaseRestoreSetupOption.FullRestoreBeforeEveryTest)
            {
                CreateDefaultOds(TestFromVersion, OptionalTestSourceOdsBackupFullPath);
            }

            if (DatabaseRestoreSetupOption == DatabaseRestoreSetupOption.EraseEdfiDataOnly)
            {
                EraseAllEdFiData();
            }
        }

        protected void EraseAllEdFiData()
        {
            var journalTablesToIgnore = EdFiOdsVersion.GetAll().Select(x => x.UpgradeJournalTableName).ToList();
            const string dbUpDefaultJournalTableNameUsedInIntegrationTests = "SchemaVersions";
            journalTablesToIgnore.Add(dbUpDefaultJournalTableNameUsedInIntegrationTests);

            var checkpoint = new Checkpoint
            {
                SchemasToInclude = new[] {"edfi", "dbo", "public"},
                TablesToIgnore = journalTablesToIgnore.ToArray()
            };

            ShowStatusMessage("Erasing all data written on source database");
            checkpoint.Reset(ConnectionString).GetAwaiter().GetResult();
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

            var zipFileName = Path.Combine(tempDirectory, $"psql.binaries.zip");

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

        protected string GetGlendaleSourceLocationPath()
        {
            var grandBendBackupPathsByVersion = PostgreSqlMigrationTestSettingsProvider.GetGlendaleBackupPaths();

            if (grandBendBackupPathsByVersion.ContainsKey(FromVersion))
            {
                string filePath = grandBendBackupPathsByVersion[FromVersion];
                string extension =Path.GetExtension(filePath);

                if (extension.Equals(".sql") && File.Exists(filePath))
                {
                    return filePath;
                }
            }

            return string.Empty;
        }

        protected string EnsureTestGlendaleBackupPathExists()
        {
            var glendaleSourceLocationPath = GetGlendaleSourceLocationPath();
            var glendaleBackupsDirectory = Path.Combine(TestContext.CurrentContext.TestDirectory, "GlendaleBackups");

            if (!Directory.Exists(glendaleBackupsDirectory))
            {
                Directory.CreateDirectory(glendaleBackupsDirectory);
            }

            var tempDirectory = Path.Combine(glendaleBackupsDirectory, FromVersion.Value.ToString());
            var versionSpecificBackupFileName = $"EdFi_Ods_Glendale_{FromVersion.Value}_PG11.sql";
            var glendaleBackupFilePath = Path.Combine(tempDirectory, versionSpecificBackupFileName);

            if (File.Exists(glendaleBackupFilePath))
            {
                return glendaleBackupFilePath;
            }

            if (Directory.Exists(tempDirectory))
            {
                Directory.Delete(tempDirectory);
            }

            Directory.CreateDirectory(tempDirectory);

            File.Copy(glendaleSourceLocationPath, glendaleBackupFilePath, true);

            return glendaleBackupFilePath;
        }

        protected string GetTestDataDirectory()
        {
            var testFixtureName = GetType().Name;
            return Path.Combine(TestContext.CurrentContext.WorkDirectory,
                "PgSql",
                "MigrationTests",
                TestDataDirectoryName,
                testFixtureName);
        }

        protected IEnumerable<T> GetTableContents<T>(EdFiOdsVersion targetSchema) where T : DbModelBase
        {
            var baseModel = Activator.CreateInstance<T>();

            if (baseModel.Version == null)
            {
                throw new InvalidOperationException($"Model type {typeof(T).Name} has no target schema specified");
            }

            if (baseModel.Version != targetSchema)
            {
                throw new InvalidOperationException(
                    $"Attempted to query schema version {targetSchema} with a model that targets version {baseModel.Version}");
            }

            if (baseModel.Version != CurrentSchemaVersion)
            {
                throw new InvalidOperationException(
                    $"Attempted to query schema version {targetSchema} but database status is currently version {CurrentSchemaVersion}");
            }

            var fullTableName = baseModel.FullTableName;

            return GetTableContents<T>(fullTableName);
        }

        protected virtual void AssertUpgradeSucceeded(OdsUpgradeResult result)
        {
            result.Successful.ShouldBe(true, result.Error?.Message);
            result.ScriptsExecuted.Any().ShouldBe(true);

            if (SchemaMetadataCheckEnabled())
            {
                var schemaMetadata = DatabaseSchemaCache.GetDatabaseSchema(TestToVersion);
                schemaMetadata.AssertSchemaContainsAllExpectedObjects(new PostgreSqlDatabaseConnectionProvider(),
                    ConnectionString, TestToVersion.Version);
            }
        }

        protected List<string> FetchDatabaseReferencesJournalEntries()
        {
            var migrationUtilityVersionJournal = new EdFiOdsVersionJournal(ToVersion);

            var journalEntries = migrationUtilityVersionJournal.GetJournalEntries().ToHashSet();

            var databaseReferencesJournalEntries = journalEntries
                .Where(se => se.DatabaseEngine == "PgSql" && se.IsFeature == false)
                .Select(x => x.JournalScriptEntry)
                .ToList();

            foreach (var feature in FeaturesBeforeUpgrade)
            {
                databaseReferencesJournalEntries.AddRange(journalEntries.Where(se => se.DatabaseEngine == "PgSql" && se.IsFeature && se.Feature == feature.SubTypeFolderName)
                .Select(x => x.JournalScriptEntry).ToList());
            }

            return databaseReferencesJournalEntries;
        }

        protected OdsUpgradeResult RunMigration(IOdsVersionSpecificMigrationManager manager)
        {
            ShowStatusMessage(
                $"Starting migration: {manager.UpgradeVersionConfiguration.VersionBeforeUpgrade} => {manager.UpgradeVersionConfiguration.RequestedFinalUpgradeVersion}");
            var result = manager.PerformUpgrade();

            ShowStatusMessage(result.Error != null
                ? $"Migration completed with an error:{manager.UpgradeVersionConfiguration.VersionBeforeUpgrade} => {manager.UpgradeVersionConfiguration.RequestedFinalUpgradeVersion}"
                : $"Migration complete: {manager.UpgradeVersionConfiguration.VersionBeforeUpgrade} => {manager.UpgradeVersionConfiguration.RequestedFinalUpgradeVersion}");

            CurrentSchemaVersion = ToVersion;
            return result;
        }

        protected OdsUpgradeResult RunMigration(List<IOdsVersionSpecificMigrationManager> managers)
        {
            var upgradeResult = new OdsUpgradeResult();
            foreach (var manager in managers)
            {
                upgradeResult.AddUpgradeResult(RunMigration(manager));
                if (!upgradeResult.Successful)
                {
                    break;
                }
            }

            return upgradeResult;
        }

        private void BuildSchemaMetadata(TestSchemaVersion testVersion)
        {
            ShowStatusMessage($"Building {testVersion} schema metadata");
            CreateDefaultOds(testVersion);

            NpgsqlConnection.ClearAllPools();

            using (var conn = new NpgsqlConnection(ConnectionString))
            {
                var reader = new DatabaseReader(conn);
                var schema = reader.ReadAll();

                DatabaseSchemaCache.SetDatabaseSchema(testVersion, schema);
            }

            ShowStatusMessage($"Schema {testVersion} metadata created");
        }

        private void CreateDefaultOds(TestSchemaVersion testVersion, string optionalTestSourceOdsBackupFullPath = null)
        {
            using (var connection =
                new NpgsqlConnection(PostgreSqlMigrationTestSettingsProvider.GetConnectionString("RestoreBackupOnly")))
            {
                DropTestDatabase(connection);
                CreateEmptyTestDatabase(connection);
            }

            NpgsqlConnection.ClearAllPools();

            if (string.IsNullOrEmpty(optionalTestSourceOdsBackupFullPath))
            {
                ShowStatusMessage("Restoring default source schema");
                ExecuteOdsScripts(testVersion.Version);
                ShowStatusMessage("Default schema restore complete");
            }
            else
            {
                ShowStatusMessage($"Restoring from backup {optionalTestSourceOdsBackupFullPath}");
                RestoreBackup(optionalTestSourceOdsBackupFullPath, PsqlExecutable);
                ShowStatusMessage("Default schema restore complete");
            }

            // Apply any expected features, must run for both fresh databases and from backups
            foreach (var feature in testVersion.Features ?? Enumerable.Empty<EdFiOdsFeature>())
            {
                ExecuteOdsScriptsForFeature(testVersion.Version, feature);
            }

            CurrentSchemaVersion = FromVersion;
        }

        private void ExecuteOdsScripts(EdFiOdsVersion version)
        {
            string dbDeployName = PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("DbDeployName");
            string dbDeployVersion = PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("DbDeployVersion");
            string dbDeployPath = PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("DbDeployPath");
            string dbDeploySource = PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("DbDeploySource");

            var dbDeploy = new DatabaseDeploymentProvider(dbDeployName, dbDeployVersion, dbDeployPath, dbDeploySource);

            dbDeploy.Deploy(version.DisplayName, "Deploy", DatabaseEngine.PostgreSQL, "ODS", ConnectionString);
        }

        private void LogScriptsDeployed(IEnumerable<DatabaseScriptJournalEntry> deployedDatabaseScriptJournalEntries)
        {
            using (var conn = new NpgsqlConnection(ConnectionString))
            {
                var hasJournalTable = conn.QueryFirstOrDefault<int?>(
                    "select 1 from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'DeployJournal' and TABLE_SCHEMA='public'");

                if (!hasJournalTable.HasValue || hasJournalTable == 0)
                {
                    string sql =
                        "CREATE TABLE public.\"DeployJournal\"" +
                        "(" +
                        "    schemaversionsid integer NOT NULL DEFAULT nextval('\"DeployJournal_schemaversionsid_seq\"'::regclass)," +
                        "    scriptname character varying(255) COLLATE pg_catalog.\"default\" NOT NULL," +
                        "    applied timestamp without time zone NOT NULL," +
                        "    CONSTRAINT \"PK_DeployJournal_Id\" PRIMARY KEY (schemaversionsid)" +
                        ")" +
                        "TABLESPACE pg_default;" +
                        "ALTER TABLE public.\"DeployJournal\"" +
                        "    OWNER to postgres;";

                    conn.Execute(sql);
                }

                var existingDeployedScripts =
                    conn.Query<string>("select ScriptName from public.\"DeployJournal\"").ToArray();

                foreach (DatabaseScriptJournalEntry deployedDatabaseScriptJournalEntry in
                    deployedDatabaseScriptJournalEntries)
                {
                    if (!existingDeployedScripts.Contains(deployedDatabaseScriptJournalEntry.JournalScriptEntry))
                    {
                        conn.Execute(
                            $"insert into public.\"DeployJournal\" (ScriptName, Applied) values ('{deployedDatabaseScriptJournalEntry.JournalScriptEntry}', current_timestamp);");
                    }
                }
            }
        }

        private static IEnumerable<DatabaseScriptJournalEntry> GetDeployedDatabaseScriptJournalEntries(
            KeyValuePair<string, string>[] structureScriptPaths, HashSet<DatabaseScriptJournalEntry> allJournalEntries)
        {
            var entries = new List<DatabaseScriptJournalEntry>();

            foreach (KeyValuePair<string, string> structureScriptPath in structureScriptPaths)
            {
                entries.AddRange(allJournalEntries.Where(je => je.RelativeFilePath == structureScriptPath.Key));
            }

            return entries;
        }

        // TODO: ODS-3930 - Update to use DbDeploy tool
        private void ExecuteOdsScriptsForFeature(EdFiOdsVersion version, EdFiOdsFeature feature)
        {
            var versionLevel = new EdFiOdsVersionJournal(version);

            var allJournalEntries = versionLevel.GetJournalEntries();

            var structureScriptPaths = allJournalEntries
                .Where(je => je.ScriptType == "Structure"
                             && je.Feature == feature.SubTypeFolderName
                             && je.DatabaseEngine == DatabaseEngine.Postgres.ScriptsFolderName)
                .Select(
                    je => new KeyValuePair<string, string>(
                        je.RelativeFilePath,
                        new FileInfo(Path.Combine(versionLevel.BaseVersionScriptPath, je.RelativeFilePath))
                            .DirectoryName))

                // Feature directories aren't all required to exist, so avoid breaking the upgrade
                .Where(x => Directory.Exists(x.Value))
                .ToArray();

            ExecuteOdsScriptsFromScriptPaths(structureScriptPaths.Select(x => x.Value).Distinct().ToArray());

            LogScriptsDeployed(GetDeployedDatabaseScriptJournalEntries(structureScriptPaths, allJournalEntries));

            var dataScriptPaths = allJournalEntries
                .Where(je => je.ScriptType == "Data"
                             && je.Feature == feature.SubTypeFolderName
                             && je.DatabaseEngine == DatabaseEngine.Postgres.ScriptsFolderName)
                .Select(
                    je => new KeyValuePair<string, string>(
                        je.RelativeFilePath,
                        new FileInfo(Path.Combine(versionLevel.BaseVersionScriptPath, je.RelativeFilePath))
                            .DirectoryName))

                // Feature directories aren't all required to exist, so avoid breaking the upgrade
                .Where(x => Directory.Exists(x.Value))
                .Distinct()
                .ToArray();

            ExecuteOdsScriptsFromScriptPaths(dataScriptPaths.Select(x => x.Value).Distinct().ToArray());
            LogScriptsDeployed(GetDeployedDatabaseScriptJournalEntries(dataScriptPaths, allJournalEntries));
        }

        private void ExecuteOdsScriptsFromScriptPaths(params string[] scriptPaths)
        {
            if (!scriptPaths.Any()) return;

            foreach (var scriptPath in scriptPaths)
            {
                var scriptResult = ExecuteAllSqlScriptsInDirectory(scriptPath);
                scriptResult.Successful.ShouldBe(true);
                scriptResult.Scripts.Any().ShouldBe(true);
            }
        }

        private bool SchemaMetadataCheckEnabled()
        {
            var versionsNotYetComplete =
                PostgreSqlMigrationTestSettingsProvider
                    .GetConfigVariable("DisablePostUpgradeSchemaTestForVersionsUnderDevelopment")
                    .Split(',')
                    .Select(EdFiOdsVersion.ParseString);

            return !versionsNotYetComplete.Contains(ToVersion);
        }

        private void DisableTestIfFilteredByVersionConfiguration()
        {
            var testIsEnabled = FromVersionIsUnderTest(FromVersion) && ToVersionIsUnderTest(ToVersion);

            if (!testIsEnabled)
            {
                var fromVersionConfigSetting = PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("FromVersion");
                var toVersionConfigSetting = PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("ToVersion");

                Assert.Ignore("Test ignored due to configuration setting. Current test configuration: "
                              + $"[FromVersion: {(string.IsNullOrEmpty(fromVersionConfigSetting) ? "No restriction (empty)" : fromVersionConfigSetting)}],"
                              + $"[ToVersion: {(string.IsNullOrEmpty(toVersionConfigSetting) ? "No restriction  (empty)" : toVersionConfigSetting)}]");
            }
        }
    }
}