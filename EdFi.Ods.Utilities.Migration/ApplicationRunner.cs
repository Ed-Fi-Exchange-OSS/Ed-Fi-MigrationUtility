// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Data.SqlClient;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.Providers;
using EdFi.Ods.Utilities.Migration.Validation;
using log4net;

namespace EdFi.Ods.Utilities.Migration
{
    public class ApplicationRunner : IApplicationRunner
    {
        private readonly ILog _logger = LogManager.GetLogger(typeof(ApplicationRunner));
        private readonly IOptionsValidator _optionsValidator;
        private readonly IMigrationConfigurationProvider _migrationConfigurationProvider;

        // TODO: ODS-4502 PostgreSQL Support: We need to address this in the future, and eliminate this factory along with its dependencies.
        private readonly Func<Options, UpgradeVersionConfiguration, IOdsMigrationManager> _odsMigrationManagerFactory;

        public ApplicationRunner(IOptionsValidator optionsValidator,
            IMigrationConfigurationProvider migrationConfigurationProvider,
            Func<Options, UpgradeVersionConfiguration, IOdsMigrationManager> odsMigrationManagerFactory)
        {
            _optionsValidator = optionsValidator;
            _migrationConfigurationProvider = migrationConfigurationProvider;
            _odsMigrationManagerFactory = odsMigrationManagerFactory;
        }

        public int Run(Options options)
        {
            if (!_optionsValidator.IsValid(options))
            {
                return -1;
            }

            _logger.Info("Building version configuration");

            var upgradeVersionConfiguration = _migrationConfigurationProvider.Get(options,
                options.CurrentOdsVersionCommandLineOverride,
                options.RequestedFinalUpgradeVersion);

            var migrationManager = _odsMigrationManagerFactory(options, upgradeVersionConfiguration);

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

            // TODO: ODS-4502 PostgreSQL Support: This needs to be fixed and not SQL Server specific.
            if (result.Error is SqlException sqlException)
            {
                _logger.Error(sqlException);
                return sqlException.Number == 0 ? -1 : sqlException.Number;
            }

            return result.Successful ? 0 : 1;
        }
    }
}