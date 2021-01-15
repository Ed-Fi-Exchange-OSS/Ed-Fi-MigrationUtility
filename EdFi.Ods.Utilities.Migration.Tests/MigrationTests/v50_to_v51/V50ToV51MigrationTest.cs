// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.IO;
using Dapper;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v51;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v50_to_v51
{
    public abstract class V50ToV51MigrationTest : MigrationTestBase
    {
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V50;
        protected override EdFiOdsVersion ToVersion => EdFiOdsVersion.V51;
        protected override string TestDataDirectoryName => "v50_to_v51";

        protected OdsUpgradeResult PerformTestMigration(string sourceDataScriptName = null, DynamicParameters scriptParameters = null, string calendarConfigurationFileName = null, string namespacePrefix = null)
        {
            if (sourceDataScriptName != null)
            {
                InsertTestRecords(sourceDataScriptName, scriptParameters);
            }

            var options = new Options {DatabaseConnectionString = ConnectionString};
            var versionConfiguration =
                MigrationTestsGlobalSetup.MigrationConfigurationProvider.Get(options, FromVersion.ToString(), ToVersion.ToString());

            var config = new MigrationConfigurationV50ToV51
            {
                DatabaseConnectionString = ConnectionString,
                BaseMigrationScriptFolderPath = Path.GetFullPath(MigrationTestSettingsProvider.GetConfigVariable("BaseMigrationScriptFolderPath")),
                BaseDescriptorXmlDirectoryPath = Path.GetFullPath(MigrationTestSettingsProvider.GetConfigVariable("BaseDescriptorXmlDirectoryPath")),
                BypassExtensionValidationCheck = false,
                Timeout = SqlCommandTimeout,
                Engine = DatabaseEngine.SQLServer
            };

            var migrationManager = new OdsMigrationManagerV50ToV51(config, versionConfiguration, MigrationTestsGlobalSetup.UpgradeEngineBuilderProvider);
            return RunMigration(migrationManager);
        }

        protected IEnumerable<T> GetV51UpgradeResult<T>() where T : Version51DbModel
        {
            return GetTableContents<T>(ToVersion);
        }
    }
}
