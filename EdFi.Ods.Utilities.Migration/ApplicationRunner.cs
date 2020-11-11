// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Data.SqlClient;
using System.Linq;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.Queries;
using EdFi.Ods.Utilities.Migration.Validation;
using log4net;

namespace EdFi.Ods.Utilities.Migration
{
    public class ApplicationRunner : IApplicationRunner
    {
        private readonly ILog _logger = LogManager.GetLogger(typeof(ApplicationRunner));
        private readonly IOptionsValidator _optionsValidator;

        public ApplicationRunner(IOptionsValidator optionsValidator)
        {
            _optionsValidator = optionsValidator;
        }

        public int Run(Options options)
        {
            if (!_optionsValidator.IsValid(options))
            {
                return -1;
            }

            _logger.Info("Checking Version");
            var currentOdsApiVersion = new GetCurrentOdsApiVersion().Execute(options.DatabaseConnectionString);
            _logger.Info($"Current version of the database {currentOdsApiVersion.CurrentVersion}");

            if (currentOdsApiVersion.CurrentVersion.ApiVersion.ToString() == options.RequestedFinalUpgradeVersion)
            {
                _logger.Info($"ODS is already at version {options.RequestedFinalUpgradeVersion}");
                Environment.Exit(0);
            }

            _logger.Info("Building version configuration");

            var upgradeVersionConfiguration = UpgradeVersionConfiguration.BuildValidUpgradeConfiguration(
                options.DatabaseConnectionString,
                options.CurrentOdsVersionCommandLineOverride,
                options.RequestedFinalUpgradeVersion);

            upgradeVersionConfiguration.ApplyFeatures(currentOdsApiVersion.ExistingFeatures.ToList());

            var migrationManager = new OdsMigrationManager(upgradeVersionConfiguration, options);

            OdsUpgradeResult result;
            if (options.CompatibilityCheckOnly)
            {
                _logger.Info(
                    $"Checking compatibility for upgrade to version {upgradeVersionConfiguration.RequestedFinalUpgradeVersion}");
                result = migrationManager.RunCompatibilityCheck();
            }
            else
            {
                _logger.Info(
                    $"Initializing upgrade to version {upgradeVersionConfiguration.RequestedFinalUpgradeVersion}");
                result = migrationManager.PerformUpgrade();
            }

            if (result.Error is SqlException sqlException)
            {
                _logger.Error(sqlException);
                return sqlException.Number == 0 ? -1 : sqlException.Number;
            }

            return result.Successful ? 0 : 1;
        }
    }
}