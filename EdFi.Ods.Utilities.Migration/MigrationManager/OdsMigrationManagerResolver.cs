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
        private readonly List<OdsMigrationManagerResolverConfiguration> _allMigrationManagerResolverConfigurations = new List<OdsMigrationManagerResolverConfiguration>();

        internal class OdsMigrationManagerResolverConfiguration
        {
            public EdFiOdsVersion FromVersion;
            public EdFiOdsVersion ToVersion;
            public Type MigrationManagerType;
            public Type ConfigurationType;
        }

        private static readonly Lazy<OdsMigrationManagerResolver> _instance = new Lazy<OdsMigrationManagerResolver>(() => new OdsMigrationManagerResolver());
        public static OdsMigrationManagerResolver Instance
        {
            get { return _instance.Value; }
        }

        private OdsMigrationManagerResolver()
        {
            RegisterMigrationManagers(typeof(OdsVersionSpecificMigrationManager<>));
            RegisterMigrationManagers(typeof(OdsChainedUpgradeMigrationManager<>));
        }

        public Type GetMigrationManager(EdFiOdsVersion fromVersion, EdFiOdsVersion toVersion)
        {
            return GetRegistered(fromVersion, toVersion)?.MigrationManagerType;
        }

        public Type GetConfiguration(EdFiOdsVersion fromVersion, EdFiOdsVersion toVersion)
        {
            return GetRegistered(fromVersion, toVersion)?.ConfigurationType;
        }

        public List<EdFiOdsVersion> GetSupportedUpgradeVersions(EdFiOdsVersion fromVersion)
        {
            return _allMigrationManagerResolverConfigurations.Where(x => x.FromVersion == fromVersion).Select(x => x.ToVersion).OrderBy(x => x.ApiVersion).ToList();
        }

        public EdFiOdsVersion GetLatestSupportedUpgradeVersion(EdFiOdsVersion fromVersion)
        {
            return GetSupportedUpgradeVersions(fromVersion).OrderBy(x => x.ApiVersion).LastOrDefault();
        }

        public EdFiOdsVersion GetLatestSupportedUpgradeVersion()
        {
            return _allMigrationManagerResolverConfigurations.Select(x => x.ToVersion).OrderBy(x => x.ApiVersion).LastOrDefault();
        }

        public List<EdFiOdsVersion> GetAllUpgradableVersions()
        {
            return _allMigrationManagerResolverConfigurations.Select(x => x.FromVersion).Distinct().OrderBy(x => x.ApiVersion).ToList();
        }

        public bool VersionCanBeUpgraded(EdFiOdsVersion version)
        {
            return _allMigrationManagerResolverConfigurations.Select(x => x.FromVersion).Contains(version);
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

            foreach (var manager in migrationManagers)
            {
                RegisterMigrationManagerResolver(manager);
            }
        }

        private void RegisterMigrationManagerResolver(Type migrationManager)
        {
            var configurationType = GetConfigurationType(migrationManager);
            var configuration = (MigrationConfigurationVersionSpecific)Activator.CreateInstance(configurationType);

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

            var registeredCount = _allMigrationManagerResolverConfigurations.Count(x =>
                x.FromVersion == configuration.FromVersion && x.ToVersion == configuration.ToVersion);

            if (registeredCount != 1)
            {
                throw new InvalidOperationException($"Found {registeredCount} registered upgrades configuration for version {configuration.FromVersion} to {configuration.ToVersion}, but expected 1");
            }
        }

        private OdsMigrationManagerResolverConfiguration GetRegistered(EdFiOdsVersion fromVersion, EdFiOdsVersion toVersion)
        {
            return _allMigrationManagerResolverConfigurations.SingleOrDefault(x => x.FromVersion == fromVersion && x.ToVersion == toVersion);
        }
    }
}
