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
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v2;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v3;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v2_to_v3
{
    public abstract class V2ToV3MigrationTest : MigrationTestBase
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
                DatabaseConnectionString = ConnectionString,
                BaseMigrationScriptFolderPath =
                    Path.GetFullPath(MigrationTestSettingsProvider.GetConfigVariable("BaseMigrationScriptFolderPath")),
                CalendarConfigFilePath = calendarConfigurationFilePath,
                BaseDescriptorXmlDirectoryPath =
                    Path.GetFullPath(MigrationTestSettingsProvider.GetConfigVariable("BaseDescriptorXmlDirectoryPath")),
                BypassExtensionValidationCheck = false,
                Timeout = SqlCommandTimeout,
                DescriptorNamespacePrefix = string.IsNullOrEmpty(namespacePrefix)
                    ? V2ToV3MigrationConstants.DefaultEdFiNamespacePrefix
                    : namespacePrefix,
                CredentialNamespacePrefix = V2ToV3MigrationConstants.DefaultEdFiNamespacePrefix
            };

            var versionConfiguration =
                MigrationTestsGlobalSetup.MigrationConfigurationProvider.Get(options, FromVersion.ToString(), ToVersion.ToString());

            var migrationManagers = MigrationTestsGlobalSetup.OdsMigrationManagerFactory(options, versionConfiguration)
                .CreateManagers();

            return RunMigration(migrationManagers);
        }

        protected IEnumerable<T> GetV2SourceTableContents<T>()
            where T : Version2DbModel => GetTableContents<T>(FromVersion);

        protected IEnumerable<T> GetV3UpgradeResult<T>()
            where T : Version3DbModel => GetTableContents<T>(ToVersion);
    }
}