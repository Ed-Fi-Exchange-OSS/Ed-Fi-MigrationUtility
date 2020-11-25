// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Linq;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Helpers;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using log4net;

namespace EdFi.Ods.Utilities.Migration.Providers
{
    public class MigrationConfigurationProvider : IMigrationConfigurationProvider
    {
        private readonly IOdsMigrationManagerResolver _odsMigrationManagerResolver;
        private readonly ICurrentOdsApiVersionProvider _currentOdsApiVersionProvider;
        private readonly ILog _logger = LogManager.GetLogger(typeof(MigrationConfigurationProvider));

        public MigrationConfigurationProvider(IOdsMigrationManagerResolver odsMigrationManagerResolver, ICurrentOdsApiVersionProvider currentOdsApiVersionProvider)
        {
            _odsMigrationManagerResolver = odsMigrationManagerResolver;
            _currentOdsApiVersionProvider = currentOdsApiVersionProvider;
        }

        public UpgradeVersionConfiguration Get(
            Options options,
            string optionalCurrentOdsVersionOverride = null,
            string optionalRequestedUpgradeVersionOverride = null)
{
            var upgradeVersionConfiguration = new UpgradeVersionConfiguration();

            var autoDetectedVersion = _currentOdsApiVersionProvider.Get(options.DatabaseConnectionString);

            if (string.IsNullOrEmpty(optionalCurrentOdsVersionOverride))
            {
                if (autoDetectedVersion == null)
                {
                    var msg =
                        "Could not automatically detect current ODS version.  Please ensure that the connection string is pointing to a supported, upgradable Ed-Fi ODS."
                        + Environment.NewLine +
                        $"The ODS schema must be on one of the following versions: {_odsMigrationManagerResolver.GetAllUpgradableVersions().ToBulletedList()}"
                        + Environment.NewLine +
                        "You may manually specify the current version in the following format: \"MAJOR.MINOR.BUILD\"";

                    throw new ArgumentException(msg);
                }

                upgradeVersionConfiguration.VersionBeforeUpgrade = autoDetectedVersion.CurrentVersion;
                upgradeVersionConfiguration.FeaturesBeforeUpgrade = autoDetectedVersion.ExistingFeatures.ToList();
            }
            else
            {
                    upgradeVersionConfiguration.VersionBeforeUpgrade =
                        GetCurrentOdsVersionOverrideFromUserProvidedString(optionalCurrentOdsVersionOverride);
            }

            upgradeVersionConfiguration.RequestedFinalUpgradeVersion = string.IsNullOrEmpty(optionalRequestedUpgradeVersionOverride)
                ? _odsMigrationManagerResolver.GetLatestSupportedUpgradeVersion(upgradeVersionConfiguration.VersionBeforeUpgrade)
                : GetRequestedUpgradeVersionFromUserProvidedString(optionalRequestedUpgradeVersionOverride);

            RaiseErrorIfUpgradePathNotSupported(upgradeVersionConfiguration);

            upgradeVersionConfiguration.FeaturesBeforeUpgrade =
                autoDetectedVersion?.ExistingFeatures?.ToList() ?? new List<EdFiOdsFeature>();

            return upgradeVersionConfiguration;
        }

        private void RaiseErrorIfUpgradePathNotSupported(UpgradeVersionConfiguration upgradeVersionConfiguration)
        {
            if (!_odsMigrationManagerResolver.VersionCanBeUpgraded(upgradeVersionConfiguration.VersionBeforeUpgrade))
            {
                throw new ArgumentException($"Upgrade for ODS Version {upgradeVersionConfiguration.VersionBeforeUpgrade} is not currently supported" +
                                            $"{Environment.NewLine}The following versions can be upgraded:  " +
                                            $"{ _odsMigrationManagerResolver.GetAllUpgradableVersions().ToBulletedList() }");
            }

            if (upgradeVersionConfiguration.VersionBeforeUpgrade == upgradeVersionConfiguration.RequestedFinalUpgradeVersion)
            {
                throw new ArgumentException($"Upgrade not required:  Already on version {upgradeVersionConfiguration.RequestedFinalUpgradeVersion}");
            }

            if (!_odsMigrationManagerResolver.GetSupportedUpgradeVersions(upgradeVersionConfiguration.VersionBeforeUpgrade)
                .Contains(upgradeVersionConfiguration.RequestedFinalUpgradeVersion))
            {
                throw new ArgumentException(
                    $"Upgrading from version {upgradeVersionConfiguration.VersionBeforeUpgrade} to {upgradeVersionConfiguration.RequestedFinalUpgradeVersion} is not currently supported" +
                    $"{Environment.NewLine}{Environment.NewLine}" +
                    $"ODS version {upgradeVersionConfiguration.VersionBeforeUpgrade} can be upgraded to the following versions: " +
                    _odsMigrationManagerResolver.GetSupportedUpgradeVersions(upgradeVersionConfiguration.VersionBeforeUpgrade)
                        .ToBulletedList());
            }
        }

        private EdFiOdsVersion GetCurrentOdsVersionOverrideFromUserProvidedString(string version)
        {
            if (!EdFiOdsVersion.VersionFormatIsValid(version))
            {
                throw new ArgumentException(
                    $"Current ODS Version: Invalid format: {version}." +
                    $"{Environment.NewLine}Please supply the argument in the format \"MAJOR.MINOR\" or \"MAJOR.MINOR.BUILD\"." +
                    $"{Environment.NewLine}The following versions are supported for upgrade:  {_odsMigrationManagerResolver.GetAllUpgradableVersions().ToBulletedList()}");
            }
            var parsedVersion = EdFiOdsVersion.ParseString(version);

            if (parsedVersion == null)
            {
                throw new ArgumentException($"Upgrade for ODS Version {version} is not currently supported" +
                                            $"{Environment.NewLine}The following versions can be upgraded:  " +
                                            $"{_odsMigrationManagerResolver.GetAllUpgradableVersions().ToBulletedList()}");
            }

            return parsedVersion;
        }

        private static EdFiOdsVersion GetRequestedUpgradeVersionFromUserProvidedString(string requestedUpgradeVersion)
        {
            if (!EdFiOdsVersion.VersionFormatIsValid(requestedUpgradeVersion))
            {
                throw new ArgumentException(
                    $"Upgrade ODS Version: Invalid format: {requestedUpgradeVersion}." +
                    $"{Environment.NewLine}Please supply the argument in the format \"MAJOR.MINOR\" or \"MAJOR.MINOR.BUILD\".");
            }

            var upgradeVersion = EdFiOdsVersion.ParseString(requestedUpgradeVersion);

            if (upgradeVersion == null)
            {
                throw new ArgumentException($"Upgrade to version {requestedUpgradeVersion} is not currently supported");
            }

            return upgradeVersion;
        }
    }
}