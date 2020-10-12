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
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v33;
namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v311_to_v33
{
    public abstract class V311ToV33MigrationTest : MigrationTestBase
    {
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V311;
        protected override EdFiOdsVersion ToVersion => EdFiOdsVersion.V33;
        protected override string TestDataDirectoryName => "v311_to_v33";

        protected OdsUpgradeResult PerformTestMigration(string sourceDataScriptName = null, DynamicParameters scriptParameters = null, string calendarConfigurationFileName = null, string namespacePrefix = null)
        {
            if (sourceDataScriptName != null)
            {
                InsertTestRecords(sourceDataScriptName, scriptParameters);
            }

            var versionConfiguration =
                UpgradeVersionConfiguration.BuildValidUpgradeConfiguration(ConnectionString,
                    FromVersion.ToString(), ToVersion.ToString());

            var v311ToV32Config = new MigrationConfigurationV311ToV32
            {
                DatabaseConnectionString = ConnectionString,
                BaseMigrationScriptFolderPath = Path.GetFullPath(MigrationTestSettingsProvider.GetConfigVariable("BaseMigrationScriptFolderPath")),
                BaseDescriptorXmlDirectoryPath = Path.GetFullPath(MigrationTestSettingsProvider.GetConfigVariable("BaseDescriptorXmlDirectoryPath")),
                BypassExtensionValidationCheck = false,
                Timeout = SqlCommandTimeout
            };

            var v32ToV33Config = new MigrationConfigurationV32ToV33
            {
                DatabaseConnectionString = ConnectionString,
                BaseMigrationScriptFolderPath = Path.GetFullPath(MigrationTestSettingsProvider.GetConfigVariable("BaseMigrationScriptFolderPath")),
                BaseDescriptorXmlDirectoryPath = Path.GetFullPath(MigrationTestSettingsProvider.GetConfigVariable("BaseDescriptorXmlDirectoryPath")),
                BypassExtensionValidationCheck = false,
                Timeout = SqlCommandTimeout
            };

            var migrationManager = new List<IOdsMigrationManager>
            {
                new OdsMigrationManagerV311ToV32(v311ToV32Config, versionConfiguration),
                new OdsMigrationManagerV32ToV33(v32ToV33Config, versionConfiguration)
            };
            return RunMigration(migrationManager);
        }

        protected IEnumerable<T> GetV33UpgradeResult<T>() where T : Version33DbModel
        {
            return GetTableContents<T>(ToVersion);
        }
    }
}
