// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.Linq;
using Dapper;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Queries;

namespace EdFi.Ods.Utilities.Migration.Providers
{
    public class PostgreSqlCurrentOdsApiVersionProvider : CurrentOdsApiVersionProviderBase
    {
        public PostgreSqlCurrentOdsApiVersionProvider(IDatabaseConnectionProvider databaseConnectionProvider)
            : base(databaseConnectionProvider)
        {
        }

        public override CurrentOdsApiVersion Get(string connectionString)
        {
            /*
             * This is used by the upgrade utility to determine if the ODS
             * is compatible for upgrade and select the correct migration manager.
             *
             * If required, this behavior may be overridden manually by explicitly
             * specifying the current API version at upgrade time.
             */

            using var connection = DatabaseConnectionProvider.CreateConnection(connectionString);

            var version = new CurrentOdsApiVersion {CurrentVersion = new VersionCheckBasedOnVersionFunction(connection).Result()};

            if (!GetTableEntries(connection).Any(t => t.TableSchema == "public" && t.TableName == "DeployJournal")) return version;

            var existingJournalScriptEntries = connection
                .Query<string>(@"SELECT ScriptName FROM public.""DeployJournal""")
                .ToHashSet();

            version.ExistingFeatures = CheckForExistingFeatures(existingJournalScriptEntries);
            version.CurrentVersion ??= new VersionCheckBasedOnDeploymentJournal(existingJournalScriptEntries).Result();

            return version;
        }

        protected override HashSet<EdFiOdsFeature> CheckForExistingFeatures(HashSet<string> existingJournalScriptEntries)
        {
            return EdFiOdsFeature.GetAll()
                .Where(feature => existingJournalScriptEntries
                    .Any(entry => !string.IsNullOrEmpty(entry) && entry.ToLowerInvariant()
                        .Contains(feature.SubTypeJournalContainsExpressionPgSql.ToLowerInvariant())))
                .ToHashSet();
        }
    }
}