// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.Linq;
using Dapper;
using DatabaseSchemaReader;
using DatabaseSchemaReader.Compare;
using DatabaseSchemaReader.DataSchema;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Providers;
using Npgsql;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.PgSql.MigrationTests
{
    public static class PostgreSqlDatabaseSchemaExtensions
    {
        public static void AssertSchemaContainsAllExpectedObjects(
            this DatabaseSchema schemaMetadata,
            IDatabaseConnectionProvider databaseConnectionProvider,
            string connectionString,
            EdFiOdsVersion version
        )
        {
            NpgsqlConnection.ClearAllPools();

            DatabaseSchema currentSchema;

            using (var conn = databaseConnectionProvider.CreateConnection(connectionString))
            {
                var reader = new DatabaseReader(conn);
                currentSchema = reader.ReadAll();
            }

            var compareSchemas = new CompareSchemas(currentSchema, schemaMetadata);
            var compareResult = compareSchemas.ExecuteResult().Where(CompareResultIsUnexpected).ToList();
            if (compareResult.Any())
                Assert.Fail(FormatForLogMessage(compareResult));

            var detectedVersion = new PostgreSqlCurrentOdsApiVersionProvider(databaseConnectionProvider)
                    .Get(connectionString);

            detectedVersion.CurrentVersion.ShouldBe(version);

            bool CompareResultIsUnexpected(CompareResult result)
            {
                return
                    // Table name for deploy journal for migrations
                    EdFiOdsVersion.GetAll()
                        .Select(eov => eov.UpgradeJournalTableName)
                        .All(jtn => result.TableName != jtn)

                    // Default script tracking table name for v3.3 and higher
                    // TODO: ODS-3930 - Eventually this should go away, and DbDeploy tool should be used to set up the comparison schema
                    // which would generate this table as part of the process
                    && !(result.SchemaOwner == "public" && result.TableName == "\"DeployJournal\"");
            }

            string FormatForLogMessage(IEnumerable<CompareResult> result)
            {
                return string.Join("\n",
                    compareResult.Select(cr =>
                        $"{cr.SchemaObjectType} - {cr.SchemaOwner}{(string.IsNullOrWhiteSpace(cr.TableName) ? "" : $"- {cr.TableName}")} - {cr.Name} - {cr.ResultType}\n{cr.Script}"));
            }
        }
    }
}