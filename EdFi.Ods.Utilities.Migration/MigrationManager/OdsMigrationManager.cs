// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Queries;

namespace EdFi.Ods.Utilities.Migration.MigrationManager
{
    public class OdsMigrationManager
    {
        public UpgradeVersionConfiguration GlobalUpgradeVersionConfiguration { get; }
        public MigrationConfigurationGlobal Configuration { get; }

        private readonly IConfigurationAutoMapper _configurationAutoMapper;

        private readonly List<IOdsMigrationManager> _migrationManagers;

        private readonly OdsMigrationManagerResolver _odsMigrationManagerResolver = OdsMigrationManagerResolver.Instance;

        public OdsMigrationManager(
            UpgradeVersionConfiguration globalUpgradeVersionConfiguration,
            MigrationConfigurationGlobal configuration)
            : this(
                globalUpgradeVersionConfiguration,
                configuration,
                new ConfigurationAutoMapper())
        {
        }

        public OdsMigrationManager(
            UpgradeVersionConfiguration globalUpgradeVersionConfiguration,
            MigrationConfigurationGlobal configuration,
            IConfigurationAutoMapper configurationAutoMapper)
        {
            GlobalUpgradeVersionConfiguration = globalUpgradeVersionConfiguration;
            Configuration = configuration;
            _configurationAutoMapper = configurationAutoMapper;

            _migrationManagers = CreateManagers();
        }

        public List<IOdsMigrationManager> CreateManagers()
        {
            var managers = new List<IOdsMigrationManager>();

            foreach (var versionRange in _odsMigrationManagerResolver.GetVersionRanges(
                GlobalUpgradeVersionConfiguration.VersionBeforeUpgrade,
                GlobalUpgradeVersionConfiguration.RequestedFinalUpgradeVersion))
            {
                var migrationManagerType = _odsMigrationManagerResolver.GetMigrationManagerType(versionRange.FromVersion, versionRange.ToVersion);

                var configurationType = _odsMigrationManagerResolver.GetConfigurationType(versionRange.FromVersion, versionRange.ToVersion);
                var versionSpecificConfiguration = _configurationAutoMapper.MapToVersionConfiguration(Configuration, configurationType);

                managers.Add(
                    Activator.CreateInstance(
                        migrationManagerType,
                        versionSpecificConfiguration,
                        GlobalUpgradeVersionConfiguration
                    ) as IOdsMigrationManager);
            }

            return managers;
        }

        public void ValidateConfigurationState()
        {
            foreach (var manager in _migrationManagers)
            {
                manager.ValidateConfigurationState();
            }
        }

        public OdsUpgradeResult RunCompatibilityCheck()
        {
            ValidateConfigurationState();
            var compatibilityCheckResult = new OdsUpgradeResult();
            foreach (var manager in _migrationManagers)
            {
                compatibilityCheckResult.AddUpgradeResult(manager.RunDatabaseCompatibilityCheck());
                if (!compatibilityCheckResult.Successful)
                {
                    break;
                }
            }

            return compatibilityCheckResult;
        }

        public OdsUpgradeResult PerformUpgrade()
        {
            /*
             * For upgrades that pass though multiple database versions:
             *
             * Upfront database compatibility check for all versions will be run before the core upgrade
             * process begins, rather than waiting for them to run with each version upgrade
             * step
             *
             * This will help prevent confusion that could arise from having to address data compatibility
             * issues while the schema is on an intermediate version state
             *
             * Ensure that compatibility check scripts are written so that they may be executed on all supported
             * schemas that may be upgraded to the target version
             */

            ValidateConfigurationState();
            var upgradeInProgress = new GetStatusOfUpgradeInProgress().Execute(Configuration.DatabaseConnectionString).InProgress;

            var compatibilityCheckResult = new OdsUpgradeResult();

            if (!upgradeInProgress)
            {
                compatibilityCheckResult = RunCompatibilityCheck();
            }

            if (!upgradeInProgress && !compatibilityCheckResult.Successful)
            {
                return compatibilityCheckResult;
            }

            var upgradeResult = new OdsUpgradeResult();
            foreach (var manager in _migrationManagers)
            {
                upgradeResult.AddUpgradeResult(manager.PerformUpgrade());
                if (!upgradeResult.Successful)
                {
                    break;
                }
            }

            return upgradeResult;
        }
    }
}