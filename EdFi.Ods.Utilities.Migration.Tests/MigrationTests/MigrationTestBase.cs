// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using Autofac;
using Autofac.Extensions.DependencyInjection;
using Dapper;
using DatabaseSchemaReader;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Factories;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.Providers;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models;
using EdFi.Ods.Utilities.Migration.Tests.Utilities;
using EdFi.Ods.Utilities.Migration.VersionLevel;
using Microsoft.Extensions.DependencyInjection;
using NUnit.Framework;
using Respawn;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests
{
    public abstract class MigrationTestBase : DatabaseIntegrationTestBase
    {
        private IContainer _container;

        protected IOdsMigrationManagerResolver OdsMigrationManagerResolver;
        protected IUpgradeEngineBuilderProvider UpgradeEngineBuilderProvider;
        protected IMigrationConfigurationProvider MigrationConfigurationProvider;
        protected IOdsMigrationManagerFactory OdsMigrationManagerFactory;

        protected abstract DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; }
        protected abstract string TestDataDirectoryName { get; }
        protected virtual string OptionalTestSourceOdsBackupFullPath { get; } = null;
        protected virtual string TestDisabledReason { get; } = null;
        protected abstract EdFiOdsVersion FromVersion { get; }
        protected abstract EdFiOdsVersion ToVersion { get; }
        protected virtual List<EdFiOdsFeature> FeaturesBeforeUpgrade => new List<EdFiOdsFeature>();

        protected TestSchemaVersion TestFromVersion => new TestSchemaVersion(FromVersion, FeaturesBeforeUpgrade);
        protected TestSchemaVersion TestToVersion => new TestSchemaVersion(ToVersion, FeaturesBeforeUpgrade);

        private EdFiOdsVersion CurrentSchemaVersion { get; set; }

        private bool IsPreDbDeploy(EdFiOdsVersion version)
        {
            return version.ApiVersion < EdFiOdsVersion.V33.ApiVersion;
        }

        [OneTimeSetUp]
        public void BaseTestFixtureSetup()
        {
            var containerBuilder = new ContainerBuilder();
            containerBuilder.RegisterModule(new MigrationUtilityModule());
            containerBuilder.Populate(new ServiceCollection());

            _container = containerBuilder.Build();

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

            OdsMigrationManagerResolver = _container.Resolve<IOdsMigrationManagerResolver>();
            UpgradeEngineBuilderProvider = _container.Resolve<IUpgradeEngineBuilderProvider>();
            MigrationConfigurationProvider = _container.Resolve<IMigrationConfigurationProvider>();
            OdsMigrationManagerFactory = _container.Resolve<IOdsMigrationManagerFactory>();
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
                SchemasToInclude = new[] {"edfi", "dbo"},
                TablesToIgnore = journalTablesToIgnore.ToArray()
            };

            ShowStatusMessage("Erasing all data written on source database");
            checkpoint.Reset(ConnectionString).GetAwaiter().GetResult();
        }

        protected void InsertTestRecords(string scriptName, SqlMapper.IDynamicParameters parameters)
        {
            ShowStatusMessage($"Inserting test records from script: {scriptName}");
            var scriptDirectory = GetTestDataDirectory();
            var insertScriptFullPath = Path.Combine(scriptDirectory, scriptName);
            File.Exists(insertScriptFullPath).ShouldBe(true, $"Insert script not found: {insertScriptFullPath}");
            ExecuteSqlScript(insertScriptFullPath, parameters);
        }

        protected string GetTestDataDirectory()
        {
            var testFixtureName = GetType().Name;
            return Path.Combine(Directory.GetCurrentDirectory(), "MigrationTests", TestDataDirectoryName,
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
                schemaMetadata.AssertSchemaContainsAllExpectedObjects(ConnectionString, TestToVersion.Version);
            }
        }

        protected virtual void AssertUpgradeFailed(OdsUpgradeResult result, MigrationErrorCode expectedErrorCode)
        {
            result.Successful.ShouldBe(false);
            result.Error.ShouldBeAssignableTo<SqlException>();
            (result.Error as SqlException)?.Number.ShouldBe((int) expectedErrorCode, result.Error.Message);
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

            using (var conn = new SqlConnection(ConnectionString))
            {
                var reader = new DatabaseReader(conn);
                DatabaseSchemaCache.SetDatabaseSchema(testVersion, reader.ReadAll());
            }

            ShowStatusMessage($"Schema {testVersion} metadata created");
        }

        private void CreateDefaultOds(TestSchemaVersion testVersion, string optionalTestSourceOdsBackupFullPath = null)
        {
            DropTestDatabase();
            CreateEmptyTestDatabase();

            if (string.IsNullOrEmpty(optionalTestSourceOdsBackupFullPath))
            {
                ShowStatusMessage("Restoring default source schema");
                ExecuteOdsScripts(testVersion.Version);
                ShowStatusMessage("Default schema restore complete");
            }
            else
            {
                ShowStatusMessage($"Restoring from backup {optionalTestSourceOdsBackupFullPath}");
                RestoreBackup(optionalTestSourceOdsBackupFullPath);
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
            if (IsPreDbDeploy(version))
            {
                ExecuteOdsScriptsPreDbDeploy(version);
                return;
            }

            var dbDeploy = new DatabaseDeploymentProvider();

            dbDeploy.Deploy(version.DisplayName, "Deploy", "SQLServer", "ODS", ConnectionString);
        }

        private void LogScriptsDeployed(IEnumerable<DatabaseScriptJournalEntry> deployedDatabaseScriptJournalEntries)
        {
            using (var conn = new SqlConnection(ConnectionString))
            {
                var hasJournalTable = conn.QueryFirstOrDefault<int?>(
                    "select 1 from INFORMATION_SCHEMA.TABLES where TABLE_NAME = 'DeployJournal' and TABLE_SCHEMA='dbo'");

                if (!hasJournalTable.HasValue || hasJournalTable == 0)
                {
                    conn.Execute(
                        @"CREATE TABLE dbo.DeployJournal (
                            Id int IDENTITY(1,1) NOT NULL,
                            ScriptName nvarchar(255) NOT NULL,
                            Applied datetime NOT NULL,
                            CONSTRAINT PK_DeployJournal_Id PRIMARY KEY CLUSTERED ([Id] ASC)
                            )");
                }

                var existingDeployedScripts = conn.Query<string>("select ScriptName from dbo.DeployJournal").ToArray();

                foreach (DatabaseScriptJournalEntry deployedDatabaseScriptJournalEntry in
                    deployedDatabaseScriptJournalEntries)
                {
                    if (!existingDeployedScripts.Contains(deployedDatabaseScriptJournalEntry.JournalScriptEntry))
                    {
                        conn.Execute(
                            $"insert into dbo.DeployJournal (ScriptName, Applied) values ('{deployedDatabaseScriptJournalEntry.JournalScriptEntry}', getdate());");
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
            if (IsPreDbDeploy(version))
            {
                ExecuteOdsScriptPreDbDeployForFeature(version, feature);
                return;
            }

            var versionLevel = new EdFiOdsVersionJournal(version);

            var allJournalEntries = versionLevel.GetJournalEntries();

            var structureScriptPaths = allJournalEntries
                .Where(je => je.ScriptType == "Structure" && je.Feature == feature.SubTypeFolderName)
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
                .Where(je => je.ScriptType == "Data" && je.Feature == feature.SubTypeFolderName)
                .Select(
                    je => new KeyValuePair<string, string>(
                        je.RelativeFilePath,
                        new FileInfo(Path.Combine(versionLevel.BaseVersionScriptPath, je.RelativeFilePath))
                            .DirectoryName))

                // Feature directories aren't all required to exist, so avoid breaking the upgrade
                .Where(x => Directory.Exists(x.Value))
                .Distinct().ToArray();

            ExecuteOdsScriptsFromScriptPaths(dataScriptPaths.Select(x => x.Value).Distinct().ToArray());
            LogScriptsDeployed(GetDeployedDatabaseScriptJournalEntries(dataScriptPaths, allJournalEntries));
        }

        private void ExecuteOdsScriptsPreDbDeploy(EdFiOdsVersion version)
        {
            var versionLevel = new EdFiOdsVersionLevel(version);

            ExecuteOdsScriptsFromScriptPaths(versionLevel.StructureScriptPath, versionLevel.DataScriptPath);
        }

        private void ExecuteOdsScriptPreDbDeployForFeature(EdFiOdsVersion version, EdFiOdsFeature feature)
        {
            if (feature != EdFiOdsFeature.ChangeQueries)
            {
                throw new ApplicationException(
                    "Unable to support features other than change queries for pre db deploy testing.");
            }

            var paths = new[]
                {
                    EdFiOdsVersionLevel.GetDefaultStructureFeatureScriptPath(version, feature),
                    EdFiOdsVersionLevel.GetDefaultDataFeatureScriptPath(version, feature)
                }
                // Feature directories aren't all required to exist, so avoid breaking the upgrade
                .Where(Directory.Exists)
                .ToArray();
            ExecuteOdsScriptsFromScriptPaths(paths);

            // Hard coded max version to support change queries for older versions
            LegacyVersionLevelSetupForFeatures(feature.SubTypeFolderName, 1010);
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

        /// <summary>
        /// This is necessary to set up VersionLevel for testing of features on pre Db Deploy scenarios
        /// For all testing of migrations past v3.3 the comparison database should be built using Db Deploy
        /// to ensure the journal tables are built the same as a real ODS
        /// </summary>
        private void LegacyVersionLevelSetupForFeatures(string subType, int versionLevel)
        {
            using (var connection = new SqlConnection(ConnectionString))
            {
                connection.Execute(@"IF OBJECT_ID(N'[dbo].[VersionLevel]', 'U') IS NULL
                CREATE TABLE[dbo].[VersionLevel]
                    (
                    [ScriptSource][varchar](256) NOT NULL,
                    [ScriptType][varchar](256) NOT NULL,
                    [DatabaseType][varchar](256) NOT NULL,
                    [SubType][varchar](1024) NULL,
                    [VersionLevel][int] NOT NULL
                    )
                ");

                connection.Execute(
                    $"INSERT INTO [dbo].[VersionLevel] (ScriptSource, ScriptType, DatabaseType, SubType, VersionLevel) VALUES ('ED-FI-ODS', 'STRUCTURE', 'EDFI', '{subType}', {versionLevel})");
            }
        }

        private bool SchemaMetadataCheckEnabled()
        {
            var versionsNotYetComplete =
                MigrationTestSettingsProvider
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
                var fromVersionConfigSetting = MigrationTestSettingsProvider.GetConfigVariable("FromVersion");
                var toVersionConfigSetting = MigrationTestSettingsProvider.GetConfigVariable("ToVersion");

                Assert.Ignore("Test ignored due to configuration setting. Current test configuration: "
                              + $"[FromVersion: {(string.IsNullOrEmpty(fromVersionConfigSetting) ? "No restriction (empty)" : fromVersionConfigSetting)}],"
                              + $"[ToVersion: {(string.IsNullOrEmpty(toVersionConfigSetting) ? "No restriction  (empty)" : toVersionConfigSetting)}]");
            }
        }
    }
}