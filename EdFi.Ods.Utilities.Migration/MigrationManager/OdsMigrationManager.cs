// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.MigrationManager
{
    public class OdsMigrationManager
    {
        public UpgradeVersionConfiguration GlobalUpgradeVersionConfiguration { get; }
        public MigrationConfigurationGlobal Configuration { get; }
        public EdFiOdsVersion FromVersion { get; private set; }
        public EdFiOdsVersion ToVersion { get; private set; }

        private readonly IConfigurationAutoMapper _configurationAutoMapper;

        private readonly Lazy<IOdsMigrationManager> _activeMigrationManagerInstance;
        private readonly OdsMigrationManagerResolver _odsMigrationManagerResolver = OdsMigrationManagerResolver.Instance;

        public OdsMigrationManager(UpgradeVersionConfiguration globalUpgradeVersionConfiguration, MigrationConfigurationGlobal configuration) : this(globalUpgradeVersionConfiguration, configuration, new ConfigurationAutoMapper())
        {
        }

        public OdsMigrationManager(UpgradeVersionConfiguration globalUpgradeVersionConfiguration,
            MigrationConfigurationGlobal configuration, IConfigurationAutoMapper configurationAutoMapper)
        {
            GlobalUpgradeVersionConfiguration = globalUpgradeVersionConfiguration;
            Configuration = configuration;
            FromVersion = globalUpgradeVersionConfiguration.VersionBeforeUpgrade;
            ToVersion = globalUpgradeVersionConfiguration.RequestedFinalUpgradeVersion;
            _activeMigrationManagerInstance = new Lazy<IOdsMigrationManager>(CreateInstance);
            _configurationAutoMapper = configurationAutoMapper;
        }

        public OdsMigrationManager AsChainedUpgradeStep(EdFiOdsVersion fromVersionStep, EdFiOdsVersion toVersionStep)
        {
            if (_odsMigrationManagerResolver.GetConfiguration(fromVersionStep, toVersionStep) == null)
            {
                throw new InvalidOperationException($"No upgrade configuration found for step: {fromVersionStep} to {toVersionStep}");
            }

            FromVersion = fromVersionStep;
            ToVersion = toVersionStep;
            return this;
        }

        public IOdsMigrationManager CreateInstance()
        {
            var configurationType = _odsMigrationManagerResolver.GetConfiguration(FromVersion, ToVersion);
            var migrationManager = _odsMigrationManagerResolver.GetMigrationManager(FromVersion, ToVersion);

            var versionSpecificConfiguration = _configurationAutoMapper.MapToVersionConfiguration(Configuration, configurationType);
            return (IOdsMigrationManager) Activator.CreateInstance(migrationManager, versionSpecificConfiguration, GlobalUpgradeVersionConfiguration);
        }

        public void ValidateConfigurationState()
        {
            _activeMigrationManagerInstance.Value.ValidateConfigurationState();
        }

        public OdsUpgradeResult PerformUpgrade()
        {
            ValidateConfigurationState();
            return _activeMigrationManagerInstance.Value.PerformUpgrade();
        }

        public OdsUpgradeResult RunCompatibilityCheck()
        {
            ValidateConfigurationState();
            return _activeMigrationManagerInstance.Value.RunDatabaseCompatibilityCheck();
        }
    }
}
