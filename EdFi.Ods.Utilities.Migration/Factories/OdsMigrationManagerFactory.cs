// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.Providers;

namespace EdFi.Ods.Utilities.Migration.Factories
{
    public class OdsMigrationManagerFactory : IOdsMigrationManagerFactory
    {
        private readonly IConfigurationAutoMapper _configurationAutoMapper;
        private readonly IOdsMigrationManagerResolver _odsMigrationManagerResolver;
        private readonly IUpgradeEngineBuilderProvider _upgradeEngineBuilderProvider;

        public OdsMigrationManagerFactory(IConfigurationAutoMapper configurationAutoMapper,
            IOdsMigrationManagerResolver odsMigrationManagerResolver,
            IUpgradeEngineBuilderProvider upgradeEngineBuilderProvider)
        {
            _configurationAutoMapper = configurationAutoMapper;
            _odsMigrationManagerResolver = odsMigrationManagerResolver;
            _upgradeEngineBuilderProvider = upgradeEngineBuilderProvider;
        }

        public OdsMigrationManager Create(Options options, UpgradeVersionConfiguration upgradeVersionConfiguration)
        {
            return new OdsMigrationManager(_configurationAutoMapper,
                _odsMigrationManagerResolver,
                _upgradeEngineBuilderProvider,
                options,
                upgradeVersionConfiguration);
        }
    }
}