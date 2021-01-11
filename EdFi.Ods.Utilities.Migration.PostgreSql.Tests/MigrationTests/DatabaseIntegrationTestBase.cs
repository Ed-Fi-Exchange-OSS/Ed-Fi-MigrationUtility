// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using Dapper;
using DbUp;
using DbUp.Engine;
using EdFi.Ods.Utilities.Migration.Enumerations;
using log4net;
using log4net.Config;
using Npgsql;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.PostgreSql.Tests.MigrationTests
{
    public abstract class DatabaseIntegrationTestBase
    {
        private readonly ILog _logger = LogManager.GetLogger(typeof(DatabaseIntegrationTestBase));

        protected string DatabaseName = "EdFi_Ods_Migration_Test";

        protected string ConnectionString => MigrationTestSettingsProvider.GetConnectionString(DatabaseName);

        protected static int SqlCommandTimeout => int.Parse(MigrationTestSettingsProvider.GetConfigVariable("SqlCommandTimeout"));

        protected void ShowStatusMessage(string msg) => _logger.Debug(msg);

        protected void DropTestDatabase()
        {
            var dropDatabaseSql = $@"
            IF EXISTS 
            (
                SELECT 1 
                FROM pg_catalog.pg_database 
                WHERE datname = N'{DatabaseName}'
            )
            BEGIN
                --IF DATABASEPROPERTYEX('{DatabaseName}', 'Status') != 'RESTORING'
                --BEGIN
                    --ALTER DATABASE [{DatabaseName}] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
                --END
                DROP DATABASE [{DatabaseName}]
            END
            ";

            using (var connection = new NpgsqlConnection(MigrationTestSettingsProvider.GetConnectionString("RestoreBackupOnly")))
            {
                ShowStatusMessage("Dropping test database");
                connection.Execute(dropDatabaseSql, commandTimeout: SqlCommandTimeout);
                connection.Close();
            }
        }

        protected void CreateEmptyTestDatabase()
        {
            using (var connection = new NpgsqlConnection(MigrationTestSettingsProvider.GetConnectionString("RestoreBackupOnly")))
            {
                ShowStatusMessage("Creating empty test database");
                connection.Execute($"CREATE DATABASE [{DatabaseName}]", commandTimeout: SqlCommandTimeout);
                connection.Close();
            }
        }

        protected DatabaseUpgradeResult ExecuteAllSqlScriptsInDirectory(string fullPath)
        {
            var upgradeEngine = DeployChanges.To
                                             .SqlDatabase(ConnectionString)
                                             .WithScriptsFromFileSystem(fullPath, Encoding.UTF8)
                                             .Build();

            var result = upgradeEngine.PerformUpgrade();

            if (result.Error != null)
            {
                throw new Exception($"Error executing scripts in directory {fullPath}.  see inner exception for details.", result.Error);
            }

            result.Scripts.Any().ShouldBe(true);
            return result;
        }

        protected void ExecuteSqlScript(string fullScriptPath, SqlMapper.IDynamicParameters parameters)
        {
            var script = File.ReadAllText(fullScriptPath);

            using (var connection = new NpgsqlConnection(ConnectionString))
            {
                connection.Execute(script, parameters, commandTimeout: SqlCommandTimeout);
            }
        }

        protected void RestoreBackup(string fullBackupFilePath)
        {
            string filename = Path.GetFileName(fullBackupFilePath);

            using (var connection = new NpgsqlConnection(MigrationTestSettingsProvider.GetConnectionString("RestoreBackupOnly")))
            {
                connection.Open();

                try
                {
                    ShowStatusMessage($"Restoring database backup: {filename}");

                    var fileList =
                        connection.Query($"RESTORE FILELISTONLY FROM DISK = '{fullBackupFilePath}'")
                                  .ToList();

                    var sourceDataFileName = fileList.Where(f => f.FileId == 1).Select(f => f.LogicalName).Single();
                    var sourceLogFileName = fileList.Where(f => f.FileId == 2).Select(f => f.LogicalName).Single();

                    var restoreDatabaseSql = $@"

                    DECLARE @testDbDataFile VARCHAR(MAX)
                    DECLARE @testDbLogFile VARCHAR(MAX)

                    SELECT @testDbDataFile = physical_name
                    FROM sys.master_files
                    WHERE database_id = DB_ID('{DatabaseName}')
                    AND file_id = 1

                    SELECT @testDbLogFile = physical_name
                    FROM sys.master_files
                    WHERE database_id = DB_ID('{DatabaseName}')
                    AND file_id = 2

                    RESTORE DATABASE [{DatabaseName}]
                    FROM DISK = N'{fullBackupFilePath}'
                    WITH
                        FILE = 1,
                        STATS = 5,
                        REPLACE,
                        MOVE '{sourceDataFileName}' TO @testDbDataFile,
                        MOVE '{sourceLogFileName}' TO @testDbLogFile

                    ";

                    connection.Execute(restoreDatabaseSql, commandTimeout: SqlCommandTimeout);
                    ShowStatusMessage($"Backup {filename} restored successfully");
                }
                catch (Exception ex)
                {
                    ShowStatusMessage($"Backup restore of {filename} failed. Dropping database if it exists.");

                    try
                    {
                        connection.Execute(
                            $@"
                        IF EXISTS 
                        (
                            SELECT 1 
                            FROM sys.databases 
                            WHERE name = N'{DatabaseName}'
                        )
                        BEGIN
                            DROP DATABASE [{DatabaseName}]
                        END
                        ");

                        ShowStatusMessage($"Backup restore of {filename} failed. Test database has been removed. Msg: {ex.Message}");
                    }
                    catch
                    {
                        ShowStatusMessage($"Backup restore of {filename} failed, and test database could not be removed. Msg: {ex.Message}");
                    }

                    throw;
                }
                finally
                {
                    connection.Close();
                }
            }
        }

        protected IEnumerable<dynamic> GetTableContents(string tableNameWithSchema)
        {
            return GetTableContents<dynamic>(tableNameWithSchema);
        }

        protected IEnumerable<T> GetTableContents<T>(string tableNameWithSchema)
        {
            using (var connection = new NpgsqlConnection(ConnectionString))
            {
                connection.Open();

                return
                    connection.Query<T>(
                        $"SELECT * FROM {tableNameWithSchema}");
            }
        }

        protected static bool FromVersionIsUnderTest(EdFiOdsVersion fromVersion)
        {
            return IsUnderTest(fromVersion, "FromVersion");
        }

        protected static bool ToVersionIsUnderTest(EdFiOdsVersion toVersion)
        {
            return IsUnderTest(toVersion, "ToVersion");
        }

        private static bool IsUnderTest(EdFiOdsVersion version, string configurationVariable)
        {
            var versionConfiguration = MigrationTestSettingsProvider.GetConfigVariable(configurationVariable);

            return string.IsNullOrEmpty(versionConfiguration)
                   || versionConfiguration
                       .Split(',')
                       .Select(EdFiOdsVersion.ParseString)
                       .Contains(version);
        }
    }
}
