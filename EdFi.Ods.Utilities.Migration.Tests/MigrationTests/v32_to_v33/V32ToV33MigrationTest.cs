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

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v32_to_v33
{
    public abstract class V32ToV33MigrationTest : MigrationTestBase
    {
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V32;
        protected override EdFiOdsVersion ToVersion => EdFiOdsVersion.V33;
        protected override string TestDataDirectoryName => "v32_to_v33";

        protected OdsUpgradeResult PerformTestMigration(string sourceDataScriptName = null, DynamicParameters scriptParameters = null, string calendarConfigurationFileName = null, string namespacePrefix = null)
        {
            if (sourceDataScriptName != null)
            {
                InsertTestRecords(sourceDataScriptName, scriptParameters);
            }

            var versionConfiguration =
                UpgradeVersionConfiguration.BuildValidUpgradeConfiguration(ConnectionString,
                    FromVersion.ToString(), ToVersion.ToString());

            var config = new MigrationConfigurationV32ToV33
            {
                DatabaseConnectionString = ConnectionString,
                BaseMigrationScriptFolderPath = Path.GetFullPath(MigrationTestSettingsProvider.GetConfigVariable("BaseMigrationScriptFolderPath")),
                BaseDescriptorXmlDirectoryPath = Path.GetFullPath(MigrationTestSettingsProvider.GetConfigVariable("BaseDescriptorXmlDirectoryPath")),
                BypassExtensionValidationCheck = false,
                Timeout = SqlCommandTimeout
            };

            var migrationManager = new OdsMigrationManagerV32ToV33(config, versionConfiguration);
            return RunMigration(migrationManager);
        }

        protected IEnumerable<T> GetV33UpgradeResult<T>() where T : Version33DbModel
        {
            return GetTableContents<T>(ToVersion);
        }
    }
}
