// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Queries;

namespace EdFi.Ods.Utilities.Migration.MigrationManager
{
    public abstract class OdsChainedUpgradeMigrationManager<TConfiguration>: IOdsMigrationManager
        where TConfiguration : MigrationConfigurationVersionSpecific
    {
        public UpgradeVersionConfiguration UpgradeVersionConfiguration { get; }
        protected readonly TConfiguration Configuration;
        private List<IOdsMigrationManager> MigrationManagers { get; }
        private readonly IConfigurationAutoMapper _configurationAutoMapper;

        protected OdsChainedUpgradeMigrationManager(TConfiguration configuration, UpgradeVersionConfiguration upgradeVersion) : this (configuration, upgradeVersion, new ConfigurationAutoMapper())
        {
        }

        protected OdsChainedUpgradeMigrationManager(TConfiguration configuration,
            UpgradeVersionConfiguration upgradeVersion, IConfigurationAutoMapper configurationAutoMapper)
        {
            UpgradeVersionConfiguration = upgradeVersion;
            Configuration = configuration;
            MigrationManagers = new List<IOdsMigrationManager>();
            _configurationAutoMapper = configurationAutoMapper;
        }

        public virtual void ValidateConfigurationState()
        {
            foreach (var manager in MigrationManagers)
            {
                manager.ValidateConfigurationState();
            }
        }

        public virtual OdsUpgradeResult PerformUpgrade()
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
                compatibilityCheckResult = RunDatabaseCompatibilityCheck();
            }

            if (!upgradeInProgress && !compatibilityCheckResult.Successful)
            {
                return compatibilityCheckResult;
            }

            var upgradeResult = new OdsUpgradeResult();
            foreach (var manager in MigrationManagers)
            {
                upgradeResult.AddUpgradeResult(manager.PerformUpgrade());
                if (!upgradeResult.Successful)
                {
                    break;
                }
            }

            return upgradeResult;
        }

        public virtual OdsUpgradeResult RunDatabaseCompatibilityCheck()
        {
            var compatibilityCheckResult = new OdsUpgradeResult();
            foreach (var manager in MigrationManagers)
            {
                compatibilityCheckResult.AddUpgradeResult(manager.RunDatabaseCompatibilityCheck());
                if (!compatibilityCheckResult.Successful)
                {
                    break;
                }
            }
            return compatibilityCheckResult;
        }

        protected void AddUpgradeStep(EdFiOdsVersion fromVersion, EdFiOdsVersion toVersion)
        {
            var globalConfiguration = _configurationAutoMapper.MapToGlobalConfiguration(Configuration);
            MigrationManagers.Add(new OdsMigrationManager(UpgradeVersionConfiguration, globalConfiguration).AsChainedUpgradeStep(fromVersion, toVersion).CreateInstance());
        }
    }
}
