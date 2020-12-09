// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using Dapper;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Queries;
using EdFi.Ods.Utilities.Migration.VersionLevel;

namespace EdFi.Ods.Utilities.Migration.Providers
{
    public abstract class CurrentOdsApiVersionProviderBase : ICurrentOdsApiVersionProvider
    {
        protected readonly IDatabaseConnectionProvider DatabaseConnectionProvider;

        protected CurrentOdsApiVersionProviderBase(IDatabaseConnectionProvider databaseConnectionProvider)
        {
            DatabaseConnectionProvider = databaseConnectionProvider;
        }

        public abstract CurrentOdsApiVersion Get(string connectionString);

        protected abstract HashSet<EdFiOdsFeature> CheckForExistingFeatures(HashSet<string> existingJournalScriptEntries);

        protected List<TableEntry> GetTableEntries(DbConnection connection) =>
            connection
                .Query<TableEntry>(@"
                    SELECT TABLE_SCHEMA AS TableSchema, TABLE_NAME AS TableName
                    FROM INFORMATION_SCHEMA.TABLES")
                .ToList();

        protected class TableEntry
        {
            public string TableSchema { get; set; }

            public string TableName { get; set; }
        }

        protected class VersionCheckBasedOnVersionFunction
        {
            private readonly DbConnection _connection;

            public VersionCheckBasedOnVersionFunction(DbConnection connection)
            {
                _connection = connection;
            }

            public EdFiOdsVersion Result()
            {
                long? objId = _connection.QueryFirstOrDefault<long?>(@"
                    SELECT 1
                    FROM INFORMATION_SCHEMA.ROUTINES
                    WHERE SPECIFIC_SCHEMA = 'util'
                    AND ROUTINE_NAME = 'getedfiodsversion'");

                if (!objId.HasValue)
                {
                    return null;
                }

                string version = _connection.QueryFirstOrDefault<string>(@"select util.getedfiodsversion()");

                return !string.IsNullOrEmpty(version)
                    ? EdFiOdsVersion.ParseString(version)
                    : null;
            }
        }

        protected class VersionCheckBasedOnDeploymentJournal
        {
            private readonly HashSet<string> _journalScriptEntries;

            public VersionCheckBasedOnDeploymentJournal(HashSet<string> journalScriptEntries)
            {
                _journalScriptEntries = journalScriptEntries;
            }

            public EdFiOdsVersion Result()
            {
                return new EdFiOdsVersionJournal(EdFiOdsVersion.V33)
                    .GetJournalEntriesWithoutFeatures()
                    .Select(je => je.JournalScriptEntry)
                    .ToHashSet()
                    .IsSubsetOf(_journalScriptEntries)
                    ? EdFiOdsVersion.V33
                    : null;
            }
        }
    }
}