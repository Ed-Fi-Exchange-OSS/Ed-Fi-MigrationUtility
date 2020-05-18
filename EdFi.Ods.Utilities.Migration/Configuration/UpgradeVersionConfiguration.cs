// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Linq;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Helpers;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.Queries;

namespace EdFi.Ods.Utilities.Migration.Configuration
{
    public class UpgradeVersionConfiguration
    {
        private UpgradeVersionConfiguration() { }

        public EdFiOdsVersion VersionBeforeUpgrade { get; private set; }

        public EdFiOdsVersion RequestedFinalUpgradeVersion { get; private set; }

        private List<EdFiOdsFeature> _featuresBeforeUpgrade;
        public List<EdFiOdsFeature> FeaturesBeforeUpgrade
        {
            get => _featuresBeforeUpgrade ?? new List<EdFiOdsFeature>();
            set => _featuresBeforeUpgrade = value;
        }

        private static readonly OdsMigrationManagerResolver _odsMigrationManagerResolver = OdsMigrationManagerResolver.Instance;

        public UpgradeVersionConfiguration ApplyFeatures(List<EdFiOdsFeature> featuresBeforeUpgrade)
        {
            _featuresBeforeUpgrade = featuresBeforeUpgrade;
            return this;
        }

        public static UpgradeVersionConfiguration BuildValidUpgradeConfiguration(string databaseConnectionString,
                                                                                 string optionalCurrentOdsVersionOverride = null,
                                                                                 string optionalRequestedUpgradeVersionOverride = null)
        {
            var upgradeVersionConfiguration = new UpgradeVersionConfiguration();
            var upgradeStatus = new GetStatusOfUpgradeInProgress().Execute(databaseConnectionString);

            if (upgradeStatus.InProgress)
            {
                if (!string.IsNullOrEmpty(optionalRequestedUpgradeVersionOverride) &&
                    !upgradeStatus.RequestedFinalUpgradeVersion.IsVersion(optionalRequestedUpgradeVersionOverride))
                {
                    throw new ArgumentException(
                        $"Attempted to resume an upgrade to version {optionalRequestedUpgradeVersionOverride}, but an incomplete upgrade to ODS version {upgradeStatus.RequestedFinalUpgradeVersion} was previously initiated.  To upgrade to a different version, please restore the ODS to the initial state and start over.");
                }

                upgradeVersionConfiguration.VersionBeforeUpgrade = upgradeStatus.VersionBeforeUpgrade;
                upgradeVersionConfiguration.RequestedFinalUpgradeVersion = upgradeStatus.RequestedFinalUpgradeVersion;
                return upgradeVersionConfiguration;
            }

            if (string.IsNullOrEmpty(optionalCurrentOdsVersionOverride))
            {
                var autoDetectedVersion = new GetCurrentOdsApiVersion().Execute(databaseConnectionString);

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

            upgradeVersionConfiguration.RaiseErrorIfUpgradePathNotSupported();

            return upgradeVersionConfiguration;
        }

        private static EdFiOdsVersion GetCurrentOdsVersionOverrideFromUserProvidedString(string version)
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

        public void RaiseErrorIfUpgradePathNotSupported()
        {
            if (!_odsMigrationManagerResolver.VersionCanBeUpgraded(VersionBeforeUpgrade))
            {
                throw new ArgumentException($"Upgrade for ODS Version {VersionBeforeUpgrade} is not currently supported" +
                                            $"{Environment.NewLine}The following versions can be upgraded:  " +
                                            $"{ _odsMigrationManagerResolver.GetAllUpgradableVersions().ToBulletedList() }");
            }

            if (VersionBeforeUpgrade == RequestedFinalUpgradeVersion)
            {
                throw new ArgumentException($"Upgrade not required:  Already on version {RequestedFinalUpgradeVersion}");
            }

            if (!_odsMigrationManagerResolver.GetSupportedUpgradeVersions(VersionBeforeUpgrade).Contains(RequestedFinalUpgradeVersion))
            {
                throw new ArgumentException(
                    $"Upgrading from version {VersionBeforeUpgrade} to {RequestedFinalUpgradeVersion} is not currently supported" +
                    $"{Environment.NewLine}{Environment.NewLine}" +
                    $"ODS version {VersionBeforeUpgrade} can be upgraded to the following versions: " +
                    _odsMigrationManagerResolver.GetSupportedUpgradeVersions(VersionBeforeUpgrade).ToBulletedList());
            }
        }
    }
}
