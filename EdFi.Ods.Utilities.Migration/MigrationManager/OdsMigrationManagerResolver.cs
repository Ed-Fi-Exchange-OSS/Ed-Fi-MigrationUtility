// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.MigrationManager
{
    public class OdsMigrationManagerResolver
    {
        private readonly List<OdsMigrationManagerResolverConfiguration> _allMigrationManagerResolverConfigurations =
            new List<OdsMigrationManagerResolverConfiguration>();

        internal class OdsMigrationManagerResolverConfiguration
        {
            public EdFiOdsVersion FromVersion;
            public EdFiOdsVersion ToVersion;
            public Type MigrationManagerType;
            public Type ConfigurationType;
        }

        private static readonly Lazy<OdsMigrationManagerResolver> _instance =
            new Lazy<OdsMigrationManagerResolver>(() => new OdsMigrationManagerResolver());

        public static OdsMigrationManagerResolver Instance => _instance.Value;

        private OdsMigrationManagerResolver()
        {
            RegisterMigrationManagers(typeof(OdsVersionSpecificMigrationManager<>));
            RegisterMigrationManagers(typeof(OdsChainedUpgradeMigrationManager<>));
        }

        private void RegisterMigrationManagers(Type migrationManagerBaseType)
        {
            var migrationManagers = Assembly
                .GetExecutingAssembly()
                .GetExportedTypes()
                .Where(t =>
                    t.BaseType != null
                    && t.BaseType.IsGenericType
                    && migrationManagerBaseType.IsAssignableFrom(t.BaseType.GetGenericTypeDefinition()))
                .ToList();

            migrationManagers.ForEach(RegisterMigrationManagerResolver);
            _allMigrationManagerResolverConfigurations.Sort((x, y) => x.FromVersion.CompareTo(y.FromVersion));
        }

        private void RegisterMigrationManagerResolver(Type migrationManager)
        {
            var configurationType = GetConfigurationType(migrationManager);
            var configuration = (MigrationConfigurationVersionSpecific) Activator.CreateInstance(configurationType);

            var resolverConfiguration = new OdsMigrationManagerResolverConfiguration
            {
                FromVersion = configuration.FromVersion,
                ToVersion = configuration.ToVersion,
                MigrationManagerType = migrationManager,
                ConfigurationType = configurationType
            };

            _allMigrationManagerResolverConfigurations.Add(resolverConfiguration);
            Validate(resolverConfiguration);
        }

        private Type GetConfigurationType(Type migrationManagerType)
        {
            var migrationManagerBaseType = migrationManagerType.BaseType;

            return migrationManagerBaseType
                .GetGenericArguments()
                .First(t => t.BaseType == typeof(MigrationConfigurationVersionSpecific));
        }

        private void Validate(OdsMigrationManagerResolverConfiguration configuration)
        {
            if (configuration.FromVersion.ApiVersion >= configuration.ToVersion.ApiVersion)
            {
                throw new InvalidOperationException(
                    $"OdsMigrationManagerResolver configuration error:  Cannot upgrade API version {configuration.FromVersion.ApiVersion} to {configuration.ToVersion.ApiVersion}");
            }

            var registeredFromVersions = _allMigrationManagerResolverConfigurations.Count(x => x.FromVersion == configuration.FromVersion);

            if (registeredFromVersions != 1)
            {
                throw new InvalidOperationException(
                    $"Found {registeredFromVersions} registered upgrade configurations from version {configuration.FromVersion}, but expected only 1");
            }

            var registeredToVersions = _allMigrationManagerResolverConfigurations.Count(x => x.ToVersion == configuration.ToVersion);

            if (registeredToVersions != 1)
            {
                throw new InvalidOperationException(
                    $"Found {registeredToVersions} registered upgrade configurations to version {configuration.ToVersion}, but expected only 1");
            }
        }

        public Type GetConfiguration(EdFiOdsVersion fromVersion, EdFiOdsVersion toVersion)
        {
            return GetResolverConfiguration(fromVersion, toVersion)?.ConfigurationType;
        }

        public Type GetMigrationManager(EdFiOdsVersion fromVersion, EdFiOdsVersion toVersion)
        {
            return GetResolverConfiguration(fromVersion, toVersion)?.MigrationManagerType;
        }

        private OdsMigrationManagerResolverConfiguration GetResolverConfiguration(EdFiOdsVersion fromVersion, EdFiOdsVersion toVersion)
        {
            return _allMigrationManagerResolverConfigurations
                .SingleOrDefault(x => x.FromVersion == fromVersion && x.ToVersion == toVersion);
        }

        public List<EdFiOdsVersion> GetAllUpgradableVersions()
        {
            return _allMigrationManagerResolverConfigurations
                .Select(x => x.FromVersion)
                .ToList();
        }

        public List<EdFiOdsVersion> GetSupportedUpgradeVersions(EdFiOdsVersion fromVersion)
        {
            return _allMigrationManagerResolverConfigurations
                .SkipWhile(x => x.FromVersion != fromVersion)
                .Select(x => x.ToVersion)
                .ToList();
        }

        public EdFiOdsVersion GetLatestSupportedUpgradeVersion(EdFiOdsVersion fromVersion)
        {
            return GetSupportedUpgradeVersions(fromVersion)
                .LastOrDefault();
        }

        public EdFiOdsVersion GetLatestSupportedUpgradeVersion()
        {
            return _allMigrationManagerResolverConfigurations
                .Select(x => x.ToVersion)
                .LastOrDefault();
        }

        public bool VersionCanBeUpgraded(EdFiOdsVersion version)
        {
            return _allMigrationManagerResolverConfigurations
                .Select(x => x.FromVersion)
                .Contains(version);
        }
    }
}