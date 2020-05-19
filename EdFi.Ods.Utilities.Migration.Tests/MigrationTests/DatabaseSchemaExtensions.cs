// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using DatabaseSchemaReader;
using DatabaseSchemaReader.Compare;
using DatabaseSchemaReader.DataSchema;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Queries;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests
{
    public static class DatabaseSchemaExtensions
    {
        public static void AssertSchemaContainsAllExpectedObjects(this DatabaseSchema schemaMetadata,
            string connectionString, EdFiOdsVersion version)
        {
            DatabaseSchema currentSchema;
            using (var conn = new SqlConnection(connectionString))
            {
                var reader = new DatabaseReader(conn);
                currentSchema = reader.ReadAll();
            }

            var compareSchemas = new CompareSchemas(currentSchema, schemaMetadata);
            var compareResult = compareSchemas.ExecuteResult().Where(CompareResultIsUnexpected).ToList();
            if (compareResult.Any())
                Assert.Fail(FormatForLogMessage(compareResult));

            var detectedVersion = new GetCurrentOdsApiVersion().Execute(connectionString);
            detectedVersion.CurrentVersion.ShouldBe(version);

            bool CompareResultIsUnexpected(CompareResult result)
            {
                return
                    // Output schema for deprecated descriptors for v2.x to v3.x migration
                    result.SchemaOwner != "v2_to_v3_deprecated" &&
                    // Table name for deploy journal for migrations
                    EdFiOdsVersion.GetAll().Select(eov => eov.UpgradeJournalTableName)
                        .All(jtn => result.TableName != jtn) &&
                    // Default db migration journal table name built using tests
                    !(result.SchemaOwner == "dbo" && result.TableName == "SchemaVersions") &&
                    // Default script tracking table name for pre v3.3
                    !(result.SchemaOwner == "dbo" && result.TableName == "VersionLevel") &&
                    // Default script tracking table name for v3.3 and higher
                    // TODO: ODS-3930 - Eventually this should go away, and DbDeploy tool should be used to set up the comparison schema
                    // which would generate this table as part of the process
                    !(result.SchemaOwner == "dbo" && result.TableName == "DeployJournal");
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