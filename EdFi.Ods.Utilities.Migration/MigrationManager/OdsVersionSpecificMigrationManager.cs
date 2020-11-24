// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using DbUp;
using DbUp.Builder;
using DbUp.Engine;
using DbUp.Helpers;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Logging;
using EdFi.Ods.Utilities.Migration.Providers;
using log4net;

namespace EdFi.Ods.Utilities.Migration.MigrationManager
{
    public abstract class OdsVersionSpecificMigrationManager<TConfiguration> : IOdsVersionSpecificMigrationManager
        where TConfiguration : MigrationConfigurationVersionSpecific
    {
        private readonly ILog _logger = LogManager.GetLogger(typeof(OdsVersionSpecificMigrationManager<TConfiguration>));

        protected readonly TConfiguration Configuration;
        private readonly DatabaseEngine _engine;
        private readonly IUpgradeEngineBuilderProvider _upgradeEngineBuilderProvider;
        private bool _configurationValidated;
        public UpgradeVersionConfiguration UpgradeVersionConfiguration { get; }
        public string UpgradeJournalTableName => Configuration.ToVersion.UpgradeJournalTableName;


        protected OdsVersionSpecificMigrationManager(TConfiguration configuration, UpgradeVersionConfiguration upgradeVersionConfiguration, IUpgradeEngineBuilderProvider upgradeEngineBuilderProvider)
        {
            Configuration = configuration;
            _engine = DatabaseEngine.TryParseEngine(Configuration.Engine);
            _upgradeEngineBuilderProvider = upgradeEngineBuilderProvider;
            UpgradeVersionConfiguration = upgradeVersionConfiguration;
        }

        protected abstract Dictionary<string, string> GetSqlSubstitutionVariables();

        public void ValidateConfigurationState()
        {
            if (!_configurationValidated)
            {
                var commonConfiguration = (MigrationConfigurationVersionSpecific) Configuration;

                RaiseErrorIfConnectionStringIsInvalid(commonConfiguration);
                RaiseErrorIfMissingOrInvalidScriptLocation(commonConfiguration);
                RaiseErrorIfLoggingRequirementsNotMet(commonConfiguration);
                ValidateVersionSpecificConfigurationState(Configuration);
            }

            _configurationValidated = true;
        }

        public OdsUpgradeResult PerformUpgrade()
        {
            var upgradeResult = new OdsUpgradeResult();

            try
            {
                foreach (var step in MigrationStep.GetAll().OrderBy(x => x.ExecutionOrder))
                {
                    var stepUpgradeResult = PerformUpgradeStep(step);
                    upgradeResult.AddUpgradeResult(stepUpgradeResult);
                    if (!upgradeResult.Successful)
                    {
                        break;
                    }

                    if (!stepUpgradeResult.ScriptsExecuted.Any())
                    {
                        _logger.Info($"No upgrade scripts for this version found in directory {step.FolderName}");
                    }
                }
            }
            catch (Exception ex)
            {
                _logger.Error($"Migration halted due to the following error: {ex.Message}");
                throw;
            }

            return upgradeResult;
        }

        private OdsUpgradeResult PerformUpgradeStep(MigrationStep step, params UpgradeOption[] upgradeOptions)
        {
            var stepUpgradeResult = new OdsUpgradeResult();
            var upgradeStepDirectories = GetUpgradeStepDirectories(step);

            foreach (var directory in upgradeStepDirectories)
            {
                stepUpgradeResult.AddStepResult(directory, ExecuteUpgradeScriptsInDirectory(directory, upgradeOptions));
                if (!stepUpgradeResult.Successful)
                {
                    return stepUpgradeResult;
                }
            }
            return stepUpgradeResult;
        }

        public OdsUpgradeResult RunDatabaseCompatibilityCheck()
        {
            var compatibilityCheckResult = new OdsUpgradeResult();

            try
            {
                var setupResult = PerformUpgradeStep(MigrationStep.Setup, UpgradeOption.NullJournal);
                compatibilityCheckResult.AddUpgradeResult(setupResult);

                if (setupResult.Successful)
                {
                    compatibilityCheckResult.AddUpgradeResult(PerformUpgradeStep(MigrationStep.CompatibilityCheck,
                        UpgradeOption.NullJournal));
                }
            }
            finally
            {
                PerformUpgradeStep(MigrationStep.Cleanup, UpgradeOption.NullJournal);
            }

            return compatibilityCheckResult;
        }

        private IEnumerable<string> GetUpgradeStepDirectories(MigrationStep step)
        {
            var upgradeStepDirectories = new List<string>();

            var baseDirectory =
                Path.GetFullPath(Path.Combine(Configuration.BaseMigrationScriptFolderPath, _engine.ScriptsFolderName, step.FolderName));

            if (Directory.GetFiles(baseDirectory, "*.sql").Length > 0)
            {
                upgradeStepDirectories.Add(baseDirectory);
            }

            var versionDirectory =
                Path.Combine(baseDirectory, Configuration.MigrationScriptVersionSpecificDirectoryName);

            if (Directory.Exists(versionDirectory))
            {
                if (Directory.GetFiles(versionDirectory, "*.sql").Length > 0)
                {
                    upgradeStepDirectories.Add(versionDirectory);
                }

                upgradeStepDirectories.AddRange(Directory
                    .GetDirectories(versionDirectory, "*", SearchOption.AllDirectories)
                    .OrderBy(d => d)
                    .ToList());
            }

            foreach (var previouslyInstalledFeature in UpgradeVersionConfiguration.FeaturesBeforeUpgrade)
            {
                var featureVersionDirectory = Path.Combine(baseDirectory,
                    Configuration.MigrationScriptFeatureVersionSpecificDirectoryName(previouslyInstalledFeature));

                if (Directory.Exists(featureVersionDirectory))
                {
                    if (Directory.GetFiles(featureVersionDirectory, "*.sql").Length > 0)
                    {
                        upgradeStepDirectories.Add(featureVersionDirectory);
                    }

                    upgradeStepDirectories.AddRange(Directory
                        .GetDirectories(featureVersionDirectory, "*", SearchOption.AllDirectories)
                        .OrderBy(d => d)
                        .ToList());
                }
            }

            return upgradeStepDirectories;
        }

        private DatabaseUpgradeResult ExecuteUpgradeScriptsInDirectory(string fullPath, params UpgradeOption[] upgradeOptions)
        {
            _logger.Info($"Executing scripts in directory {fullPath}");

            var upgradeEngine = _upgradeEngineBuilderProvider.Get(Configuration.DatabaseConnectionString)
                .WithScriptsFromFileSystem(fullPath, Encoding.UTF8)
                .WithTransactionPerScript()
                .WithExecutionTimeout(TimeSpan.FromSeconds(Configuration.Timeout))
                .WithVariables(GetSqlSubstitutionVariables())
                .LogScriptOutput()
                .LogTo(new DbUpLogger());

            if (upgradeOptions.Contains(UpgradeOption.NullJournal))
            {
                upgradeEngine.JournalTo(new NullJournal());
            }
            else
            {
                upgradeEngine.JournalToSqlTable("dbo", UpgradeJournalTableName);
            }

            upgradeEngine.Build();

            var result = upgradeEngine.Build().PerformUpgrade();

            return result;
        }

        protected virtual void ValidateVersionSpecificConfigurationState(TConfiguration configuration) { }

        private void RaiseErrorIfMissingOrInvalidScriptLocation(MigrationConfigurationVersionSpecific configuration)
        {
            if (!Directory.Exists(configuration.BaseMigrationScriptFolderPath))
            {
                throw new DirectoryNotFoundException(
                    $"Migration configuration error:  Base script directory not found: {configuration.BaseMigrationScriptFolderPath}");
            }

            var requiredGlobalScriptDirectories = MigrationStep.GetAll().Where(s => s.ScriptVersionTarget == MigrationStep.VersionTarget.AllVersions)
                .Select(s => Path.Combine(configuration.BaseMigrationScriptFolderPath, s.FolderName)).ToList();

            var requiredVersionSpecificScriptDirectories =
                MigrationStep.GetAll()
                    .Where(s => s.ScriptVersionTarget == MigrationStep.VersionTarget.VersionSpecific)
                    .Select(s => Path.Combine(configuration.BaseMigrationScriptFolderPath, s.FolderName, Configuration.MigrationScriptVersionSpecificDirectoryName))
                    .ToList();

            var allRequiredDirectories =
                requiredGlobalScriptDirectories.Concat(requiredVersionSpecificScriptDirectories);

            var missingDirectoryExceptions =
                allRequiredDirectories
                    .Where(d => !Directory.Exists(d))
                    .Select(d =>
                        new DirectoryNotFoundException(
                            $"Missing required directory for migration: {d}"))
                    .ToList();

            foreach (var exception in missingDirectoryExceptions.OrderBy(x => x.Message))
            {
                _logger.Error(exception.Message);
            }

            if (missingDirectoryExceptions.Any())
            {
                throw new AggregateException(
                    "Missing required directory for migration step. See inner exception for details", missingDirectoryExceptions);
            }
        }

        private void RaiseErrorIfLoggingRequirementsNotMet(MigrationConfigurationVersionSpecific configuration)
        {
            var duplicateScriptExceptions =
                GetScriptList(configuration)
                   .GroupBy(scriptName => scriptName)
                   .Where(g => g.Count() > 1)
                   .Select(g => new Exception($"Found {g.Count()} scripts with the name {g.Key} "))
                   .ToList();

            foreach (var exception in duplicateScriptExceptions.OrderBy(x => x.Message))
            {
                _logger.Error(exception.Message);
            }

            if (duplicateScriptExceptions.Any())
            {
                throw new AggregateException(
                    "Found one or more scripts with the same name: see inner exception for details.  All script names must be unique, even if they exist in different subdirectories.  This is required in order to accurately track the history of executed scripts.",
                    duplicateScriptExceptions);
            }
        }

        private static IEnumerable<string> GetScriptList(MigrationConfigurationVersionSpecific configuration)
        {
            return Directory.GetFiles(configuration.BaseMigrationScriptFolderPath, "*.sql", SearchOption.AllDirectories).Select(Path.GetFileName);
        }

        private static void RaiseErrorIfConnectionStringIsInvalid(MigrationConfigurationVersionSpecific configuration)
        {
            using var connection = new SqlConnection(configuration.DatabaseConnectionString);
            connection.Open();
            connection.Close();
        }

        private enum UpgradeOption
        {
            NullJournal
        }
    }
}
