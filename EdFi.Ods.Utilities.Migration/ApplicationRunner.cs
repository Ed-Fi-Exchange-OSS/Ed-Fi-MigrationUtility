// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Data.SqlClient;
using System.Linq;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Factories;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.Providers;
using EdFi.Ods.Utilities.Migration.Queries;
using EdFi.Ods.Utilities.Migration.Validation;
using log4net;

namespace EdFi.Ods.Utilities.Migration
{
    public class ApplicationRunner : IApplicationRunner
    {
        private readonly ILog _logger = LogManager.GetLogger(typeof(ApplicationRunner));
        private readonly IOptionsValidator _optionsValidator;
        private readonly ICurrentOdsApiVersionProvider _currentOdsApiVersionProvider;
        private readonly IMigrationConfigurationProvider _migrationConfigurationProvider;
        private readonly IConfigurationAutoMapper _configurationAutoMapper;
        private readonly IOdsMigrationManagerFactory _odsMigrationManagerFactory;

        public ApplicationRunner(IOptionsValidator optionsValidator,
            ICurrentOdsApiVersionProvider currentOdsApiVersionProvider,
            IMigrationConfigurationProvider migrationConfigurationProvider,
            IConfigurationAutoMapper configurationAutoMapper,
            IOdsMigrationManagerFactory odsMigrationManagerFactory)
        {
            _optionsValidator = optionsValidator;
            _currentOdsApiVersionProvider = currentOdsApiVersionProvider;
            _migrationConfigurationProvider = migrationConfigurationProvider;
            _configurationAutoMapper = configurationAutoMapper;
            _odsMigrationManagerFactory = odsMigrationManagerFactory;
        }

        public int Run(Options options)
        {
            if (!_optionsValidator.IsValid(options))
            {
                return -1;
            }

            _logger.Info("Checking Version");
            var currentOdsApiVersion = _currentOdsApiVersionProvider.Get(options.DatabaseConnectionString);
            _logger.Info($"Current version of the database {currentOdsApiVersion.CurrentVersion}");

            if (currentOdsApiVersion.CurrentVersion.ApiVersion.ToString() == options.RequestedFinalUpgradeVersion)
            {
                _logger.Info($"ODS is already at version {options.RequestedFinalUpgradeVersion}");
                Environment.Exit(0);
            }

            _logger.Info("Building version configuration");

            var upgradeVersionConfiguration = _migrationConfigurationProvider.Get(options,
                options.CurrentOdsVersionCommandLineOverride,
                options.RequestedFinalUpgradeVersion);

            upgradeVersionConfiguration.FeaturesBeforeUpgrade = currentOdsApiVersion.ExistingFeatures.ToList();

            var migrationManager = _odsMigrationManagerFactory.Create(options, upgradeVersionConfiguration);

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