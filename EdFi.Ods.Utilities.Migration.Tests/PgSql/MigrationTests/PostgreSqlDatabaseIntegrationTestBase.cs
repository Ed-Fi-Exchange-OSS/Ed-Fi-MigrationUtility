// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using Dapper;
using DbUp;
using DbUp.Engine;
using EdFi.Ods.Utilities.Migration.Enumerations;
using log4net;
using Npgsql;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.PgSql.MigrationTests
{
    public abstract class PostgreSqlDatabaseIntegrationTestBase
    {
        private readonly ILog _logger = LogManager.GetLogger(typeof(PostgreSqlDatabaseIntegrationTestBase));

        protected string DatabaseName = "EdFi_Ods_Migration_Test";

        protected string ConnectionString => PostgreSqlMigrationTestSettingsProvider.GetConnectionString(DatabaseName);

        protected static int SqlCommandTimeout =>
            int.Parse(PostgreSqlMigrationTestSettingsProvider.GetConfigVariable("SqlCommandTimeout"));

        protected void ShowStatusMessage(string msg)
        {
            _logger.Debug(msg);
        }

        protected void DropTestDatabase(NpgsqlConnection connection)
        {
            var dropDatabaseSql = $"DROP DATABASE IF EXISTS \"{DatabaseName}\";";
            var killProcesses = "SET client_min_messages TO ERROR;"
                                + $"SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname='{DatabaseName}';";

            ShowStatusMessage("Closing any open processes");
            connection.Execute(killProcesses, commandTimeout: SqlCommandTimeout);

            ShowStatusMessage("Dropping test database");
            connection.Execute(dropDatabaseSql, commandTimeout: SqlCommandTimeout);

            NpgsqlConnection.ClearAllPools();
        }

        protected void CreateEmptyTestDatabase(NpgsqlConnection connection)
        {
            ShowStatusMessage("Creating empty test database");
            connection.Execute($"CREATE DATABASE \"{DatabaseName}\" TEMPLATE template0;",
                commandTimeout: SqlCommandTimeout);
        }

        protected DatabaseUpgradeResult ExecuteAllSqlScriptsInDirectory(string fullPath)
        {
            var upgradeEngine = DeployChanges.To
                .PostgresqlDatabase(ConnectionString)
                .WithScriptsFromFileSystem(fullPath, Encoding.UTF8)
                .WithVariablesDisabled()
                .Build();

            var result = upgradeEngine.PerformUpgrade();

            if (result.Error != null)
                throw new Exception(
                    $"Error executing scripts in directory {fullPath}.  see inner exception for details.",
                    result.Error);

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

        protected void RestoreBackup(string fullBackupFilePath, string psqlExecutable)
        {
            var fileName = Path.GetFileName(fullBackupFilePath);

            var builder = new NpgsqlConnectionStringBuilder(ConnectionString);

            var arguments =
                $"-P pager=off --tuples-only --echo-errors --no-password --host={builder.Host} --port={builder.Port} --username={builder.Username} --dbname={builder.Database} --file={fullBackupFilePath}";

            try
            {
                NpgsqlConnection.ClearAllPools();

                ShowStatusMessage($"Restoring database backup: {fileName}");

                File.Exists(psqlExecutable).ShouldBeTrue();
                File.Exists(fullBackupFilePath).ShouldBeTrue();

                var info = new ProcessStartInfo(psqlExecutable, arguments)
                {
                    RedirectStandardInput = true,
                    RedirectStandardError = true
                };

                using var process = new Process {StartInfo = info};

                process.OutputDataReceived += (sender, e) => { _logger.Info($"Output: {e.Data}"); };
                process.ErrorDataReceived += (sender, e) => { _logger.Error($"Error: {e.Data}"); };

                process.Start();

                process.WaitForExit();

                if (process.ExitCode != 0)
                {
                    ShowStatusMessage($"Backup restore of {fileName} failed. Dropping database if it exists.");

                    try
                    {
                        var restoreConnectionString = PostgreSqlMigrationTestSettingsProvider.GetConnectionString("RestoreBackupOnly");

                        using var connection = new NpgsqlConnection(restoreConnectionString);

                        connection.Execute($"DROP DATABASE IF EXISTS \"{builder.Database}\";");
                    }
                    catch (Exception ex)
                    {
                        ShowStatusMessage(
                            $"Backup restore of {fileName} failed, and test database could not be removed. Msg: {ex.Message}");
                        throw;
                    }

                    throw new Exception($"Failed Restore for {fileName}");
                }

                // reset stats
                using (var connection = new NpgsqlConnection(ConnectionString))
                {
                    var sql = $"REINDEX SYSTEM \"{builder.Database}\";"
                              + $"REINDEX DATABASE \"{builder.Database}\";"
                              + "REINDEX SCHEMA edfi;";

                    connection.Execute(sql);
                }

                ShowStatusMessage($"Backup {fileName} restored successfully");
            }
            finally
            {
                NpgsqlConnection.ClearAllPools();
            }
        }

        protected IEnumerable<dynamic> GetTableContents(string tableNameWithSchema)
        {
            return GetTableContents<dynamic>(tableNameWithSchema);
        }

        protected IEnumerable<T> GetTableContents<T>(string tableNameWithSchema)
        {
            using var connection = new NpgsqlConnection(ConnectionString);

            return connection.Query<T>($"SELECT * FROM {tableNameWithSchema}");
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
            var versionConfiguration = PostgreSqlMigrationTestSettingsProvider.GetConfigVariable(configurationVariable);

            return string.IsNullOrEmpty(versionConfiguration)
                   || versionConfiguration
                       .Split(',')
                       .Select(EdFiOdsVersion.ParseString)
                       .Contains(version);
        }
    }
}