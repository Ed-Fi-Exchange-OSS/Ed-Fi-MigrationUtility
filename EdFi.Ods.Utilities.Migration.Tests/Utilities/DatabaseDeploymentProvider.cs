// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Management.Automation;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests;
using log4net;

namespace EdFi.Ods.Utilities.Migration.Tests.Utilities
{
    public class DatabaseDeploymentProvider : IDatabaseDeploymentProvider
    {
        private readonly ILog _logger = LogManager.GetLogger(typeof(DatabaseDeploymentProvider));
        private readonly string _dbDeployName = MigrationTestSettingsProvider.GetConfigVariable("DbDeployName");
        private readonly string _dbDeployVersion = MigrationTestSettingsProvider.GetConfigVariable("DbDeployVersion");
        private readonly string _dbDeployPath = MigrationTestSettingsProvider.GetConfigVariable("DbDeployPath");
        private readonly string _dbDeploySource = MigrationTestSettingsProvider.GetConfigVariable("DbDeploySource");

        protected void LogErrorMessage(string msg) => _logger.Error(msg);

        public void Deploy(string version, string verb, string engine, string database, string connectionString)
        {
            using (var ps = PowerShell.Create())
            {
                string dbDeployFunctions =
                    @"function Install-DbDeploy($name, $version, $path, $source) 
                      { 
                        if (Test-Path $path) {
                            $tool = & dotnet tool list --tool-path $path | Select-String -Pattern $name | Out-String;

                            if ($null -ne $tool) {
                                $parts = $tool.Split(' ', [System.StringSplitOptions]::RemoveEmptyEntries);

                                if ($parts -ge 2) {
                                    $currentVersion = $parts[1];

                                    if ($currentVersion -ne $version){
                                        & dotnet tool uninstall $name --tool-path $path;
                                        & dotnet tool install $name --version $version --tool-path $path --add-source $source; 
                                    }
                                } 
                            }         
                        }
                        else
                        {
                            & dotnet tool install $name --version $version --tool-path $path --add-source $source; 
                        }
                      }

                      function Invoke-DbDeploy($verb, $engine, $databaseType, $connectionString, $filePaths, $toolPath)
                      {

                         & .\$toolPath\EdFi.Db.Deploy $verb -e $engine -d $databaseType -c ""$connectionString"" -p $filePaths;

                      }";

                var filePaths = new ArrayList
                {
                    $@"DatabaseReference\{version}\EdFi.Ods.Standard"
                };

                ps.AddScript(dbDeployFunctions, false).Invoke();

                HandleErrors(
                    "Error occurred while sourcing PowerShell functions Install-DbDeploy and Invoke-DbDeploy");

                ps.Commands.Clear();

                ps.AddCommand("Install-DbDeploy")
                    .AddParameter("name", _dbDeployName)
                    .AddParameter("version", _dbDeployVersion)
                    .AddParameter("path", _dbDeployPath)
                    .AddParameter("source", _dbDeploySource).Invoke();

                ps.Commands.Clear();

                HandleErrors(
                    "Error occurred while invoking PowerShell function Install-DbDeploy");

                ps.AddCommand("Invoke-DbDeploy").AddParameter("Verb", verb).AddParameter("Engine", engine)
                    .AddParameter("DatabaseType", database).AddParameter("ConnectionString", connectionString)
                    .AddParameter("FilePaths", filePaths).AddParameter("ToolPath", _dbDeployPath).Invoke();

                HandleErrors(
                    "Error occurred while invoking PowerShell function Invoke-DbDeploy");

                void HandleErrors(string defaultErrorMessage)
                {
                    if (ps.HadErrors || ps.Streams.Error.Any())
                    {
                        var errorMessages = new List<string> { defaultErrorMessage };

                        errorMessages.AddRange(ps.Streams.Error.Select(e => e.ToString()).ToList());

                        errorMessages.ForEach(LogErrorMessage);

                        throw new Exception(string.Join(" ", errorMessages));
                    }
                }
            }
        }
    }
}