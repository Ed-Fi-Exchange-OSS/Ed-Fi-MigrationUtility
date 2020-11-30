// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Linq;
using Dapper;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Queries;

namespace EdFi.Ods.Utilities.Migration.Providers
{
    public class SqlServerCurrentOdsApiVersionProvider : CurrentOdsApiVersionProviderBase
    {
        public SqlServerCurrentOdsApiVersionProvider(IDatabaseConnectionProvider databaseConnectionProvider)
            : base(databaseConnectionProvider)
        {
            DeployJournalSchema = "dbo";
        }

        public override CurrentOdsApiVersion Get(string connectionString)
        {
            var result = new CurrentOdsApiVersion();
            /*
             * It is currently planned for API version to be made available
             * from a standardized location beginning in a future v3 release.
             * As a workaround, for earlier versions, this query will look
             * to the schema to determine the approximate version.
             *
             * This is used by the upgrade utility to determine if the ODS
             * is compatible for upgrade and select the correct migration manager.
             *
             * If required, this behavior may be overridden manually by explicitly
             * specifying the current API version at upgrade time.
             */

            using var connection = DatabaseConnectionProvider.CreateConnection(connectionString);


            var tables = GetTableEntries(connection);

            var edfiTableEntries = tables.Where(t => t.TableSchema == "edfi")
                .Select(t => t.TableName)
                .ToList();

            // Older check based on existence of tables, used pre v311
            var versionLevelCheckResult = new SchemaCheckResultForOlderVersionsOnly(edfiTableEntries).Result();

            // Only use newer version checks if the older version check found v31.
            if (versionLevelCheckResult == null || versionLevelCheckResult == EdFiOdsVersion.V31)
            {
                if (tables.Any(t => t.TableSchema == "dbo" && t.TableName == "DeployJournal"))
                {
                    var existingJournalScriptEntries = connection
                        .Query<string>(@"SELECT ScriptName FROM dbo.DeployJournal")
                        .ToHashSet();

                    result.ExistingFeatures = CheckForExistingFeatures(existingJournalScriptEntries);

                    var versionLevel34Check = new VersionCheckBasedOnVersionFunction(connection).Result();

                    versionLevelCheckResult = versionLevel34Check ??
                                              new VersionCheckBasedOnDeploymentJournal(existingJournalScriptEntries).Result();
                }
                else if (tables.Any(t => t.TableSchema == "dbo" && t.TableName == "VersionLevel"))
                {
                    var databaseVersionLevels = connection
                        .Query<DatabaseVersionLevel>(
                            @"SELECT ScriptSource, ScriptType, DatabaseType, SubType, VersionLevel FROM dbo.VersionLevel")
                        .ToList();

                    versionLevelCheckResult =
                        new VersionCheckBasedOnVersionLevelOnly(databaseVersionLevels).Result()
                        ?? versionLevelCheckResult;

                    var edFiOdsFeatures = EdFiOdsFeature.GetAll()
                        .Where(
                            sf => databaseVersionLevels
                                .Any(
                                    y => !string.IsNullOrEmpty(y.SubType)
                                         && y.SubType.Equals(
                                             sf.SubTypeFolderName,
                                             StringComparison.InvariantCultureIgnoreCase)))
                        .ToHashSet();

                    result.ExistingFeatures = edFiOdsFeatures;
                }
            }

            result.CurrentVersion = versionLevelCheckResult;

            return result;
        }

        protected override HashSet<EdFiOdsFeature> CheckForExistingFeatures(HashSet<string> existingJournalScriptEntries)
        {
            return EdFiOdsFeature.GetAll()
                .Where(feature => existingJournalScriptEntries
                    .Any(y => !string.IsNullOrEmpty(y) && y.ToLowerInvariant()
                        .Contains(feature.SubTypeJournalContainsExpressionMsSql.ToLowerInvariant())))
                .ToHashSet();
        }
    }
}