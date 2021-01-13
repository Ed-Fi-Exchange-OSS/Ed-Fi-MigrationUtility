// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
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
            var dropDatabaseSql = $@"DROP DATABASE IF EXISTS {DatabaseName}";

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
                connection.Execute($"CREATE DATABASE {DatabaseName}", commandTimeout: SqlCommandTimeout);
                connection.Close();
            }
        }

        protected DatabaseUpgradeResult ExecuteAllSqlScriptsInDirectory(string fullPath)
        {
            var upgradeEngine = DeployChanges.To
                                             .PostgresqlDatabase(ConnectionString)
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

            try
            {
                ShowStatusMessage($"Restoring database backup: {filename}");

                string restoreCommand = $"pg_restore -h localhost -p 5432 -d {DatabaseName} -U postgres";

                //pg_restore restore database with file create with pg_dump command
                restoreCommand = $"{restoreCommand} {fullBackupFilePath}";

                Execute(restoreCommand);
                ShowStatusMessage($"Backup {filename} restored successfully");
            }
            catch (Exception ex)
            {
                ShowStatusMessage($"Backup restore of {filename} failed. Dropping database if it exists.");

                try
                {
                    var dropDatabaseSql = $@"DROP DATABASE IF EXISTS {DatabaseName}";

                    using (var connection = new NpgsqlConnection(MigrationTestSettingsProvider.GetConnectionString("RestoreBackupOnly")))
                    {
                        connection.Execute(dropDatabaseSql);
                        connection.Close();
                    }

                    ShowStatusMessage($"Backup restore of {filename} failed. Test database has been removed. Msg: {ex.Message}");
                }
                catch
                {
                    ShowStatusMessage($"Backup restore of {filename} failed, and test database could not be removed. Msg: {ex.Message}");
                }

                throw;
            }
        }

        private void Execute(string restoreCommand)
        {
            string batFilePath = Path.Combine(Path.GetTempPath(), $"{Guid.NewGuid()}." + (RuntimeInformation.IsOSPlatform(OSPlatform.Windows) ? "bat" : "sh"));
            try
            {
                string batchContent = "";
                batchContent += $"{restoreCommand}";

                File.WriteAllText(batFilePath, batchContent, Encoding.ASCII);

                ProcessStartInfo info = ProcessInfoByOS(batFilePath);

                using System.Diagnostics.Process proc = System.Diagnostics.Process.Start(info);
                proc.WaitForExit();
                var exit = proc.ExitCode;
                proc.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (File.Exists(batFilePath)) File.Delete(batFilePath);
            }
        }

        private static ProcessStartInfo ProcessInfoByOS(string batFilePath)
        {
            ProcessStartInfo info;
            if (RuntimeInformation.IsOSPlatform(OSPlatform.Windows))
            {
                info = new ProcessStartInfo(batFilePath)
                {
                };
            }
            else
            {
                info = new ProcessStartInfo("sh")
                {
                    Arguments = $"{batFilePath}"
                };
            }

            info.CreateNoWindow = true;
            info.UseShellExecute = false;
            info.WorkingDirectory = AppDomain.CurrentDomain.BaseDirectory;
            info.RedirectStandardError = true;

            return info;
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
