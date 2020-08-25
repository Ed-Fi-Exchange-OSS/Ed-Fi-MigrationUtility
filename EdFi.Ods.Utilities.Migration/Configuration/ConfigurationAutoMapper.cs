// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using AutoMapper;
using log4net;

namespace EdFi.Ods.Utilities.Migration.Configuration
{
    public interface IConfigurationAutoMapper
    {
        MigrationConfigurationVersionSpecific MapToVersionConfiguration(
            MigrationConfigurationGlobal globalConfiguration, Type versionConfigurationType);

        MigrationConfigurationGlobal MapToGlobalConfiguration<TConfiguration>(TConfiguration versionConfiguration)
            where TConfiguration : MigrationConfigurationVersionSpecific;
    }

    public class ConfigurationAutoMapper : IConfigurationAutoMapper
    {
        public readonly IMapper ConfigurationMapper;
        public readonly MapperConfiguration MapperConfiguration;
        private static readonly ILog _logger = LogManager.GetLogger(typeof(ConfigurationAutoMapper));

        public ConfigurationAutoMapper()
        {
            MapperConfiguration = new MapperConfiguration(cfg => cfg.AddProfiles(typeof(ConfigurationAutoMapper)));
            ConfigurationMapper = MapperConfiguration.CreateMapper();
        }

        public MigrationConfigurationVersionSpecific MapToVersionConfiguration(
            MigrationConfigurationGlobal globalConfiguration, Type versionConfigurationType)
        {
            MigrationConfigurationVersionSpecific migrationConfigurationVersionSpecific = null;
            try
            {
                migrationConfigurationVersionSpecific =
                    (MigrationConfigurationVersionSpecific) ConfigurationMapper.Map(globalConfiguration,
                        typeof(MigrationConfigurationGlobal), versionConfigurationType);
            }
            catch (Exception ex)
            {
                var msg = "Application has occurred error in MigrationConfigurationVersionSpecific"
                          + Environment.NewLine
                          + $"Details: {ex.Message}";

                _logger.Error(msg);
            }

            return migrationConfigurationVersionSpecific;
        }

        public TConfiguration MapToVersionConfiguration<TConfiguration>(
            MigrationConfigurationGlobal globalConfiguration)
            where TConfiguration : MigrationConfigurationVersionSpecific
        {
            TConfiguration tConfiguration = null;
            try
            {
                tConfiguration = (TConfiguration) Mapper.Map(globalConfiguration, typeof(MigrationConfigurationGlobal),
                    typeof(TConfiguration));
            }
            catch (Exception ex)
            {
                var msg = "Application has occurred error in MapToVersionConfiguration"
                          + Environment.NewLine
                          + $"Details: {ex.Message}";

                _logger.Error(msg);
            }

            return tConfiguration;
        }

        public MigrationConfigurationGlobal MapToGlobalConfiguration<TConfiguration>(
            TConfiguration versionConfiguration)
            where TConfiguration : MigrationConfigurationVersionSpecific
        {
            MigrationConfigurationGlobal migrationConfigurationGlobal = null;
            try
            {
                migrationConfigurationGlobal =
                    (MigrationConfigurationGlobal) ConfigurationMapper.Map(versionConfiguration, typeof(TConfiguration),
                        typeof(MigrationConfigurationGlobal));
            }
            catch (Exception ex)
            {
                var msg = "Application has occurred error in ConfigurationAutoMapper"
                          + Environment.NewLine
                          + $"Details: {ex.Message}";

                _logger.Error(msg);
            }

            return migrationConfigurationGlobal;
        }
    }

    public class ConfigurationAutoMapperProfile : Profile
    {
        public ConfigurationAutoMapperProfile()
        {
            CreateMap<MigrationConfigurationGlobal, MigrationConfigurationV34ToV50>();
            CreateMap<MigrationConfigurationGlobal, MigrationConfigurationV311ToV34>();
            CreateMap<MigrationConfigurationGlobal, MigrationConfigurationV33ToV34>();
            CreateMap<MigrationConfigurationGlobal, MigrationConfigurationV311ToV33>();
            CreateMap<MigrationConfigurationGlobal, MigrationConfigurationV31ToV311>();
            CreateMap<MigrationConfigurationGlobal, MigrationConfigurationV25ToV31>();
            CreateMap<MigrationConfigurationGlobal, MigrationConfigurationV24ToV25>();

            CreateMap<MigrationConfigurationV24ToV31, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV24ToV311, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV24ToV33, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV24ToV34, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV25ToV311, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV25ToV33, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV31ToV33, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore())
                // v2 global properties are not needed for a fully v3 upgrade path
                .ForMember(dst => dst.DescriptorNamespacePrefix, opt => opt.Ignore())
                .ForMember(dst => dst.CalendarConfigFilePath, opt => opt.Ignore())
                .ForMember(dst => dst.AzureStorageLocation, opt => opt.Ignore())
                .ForMember(dst => dst.CredentialNamespacePrefix, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV31ToV34, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore())
                // v2 global properties are not needed for a fully v3 upgrade path
                .ForMember(dst => dst.DescriptorNamespacePrefix, opt => opt.Ignore())
                .ForMember(dst => dst.CalendarConfigFilePath, opt => opt.Ignore())
                .ForMember(dst => dst.AzureStorageLocation, opt => opt.Ignore())
                .ForMember(dst => dst.CredentialNamespacePrefix, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV311ToV34, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore())
                // v2 global properties are not needed for a fully v3 upgrade path
                .ForMember(dst => dst.DescriptorNamespacePrefix, opt => opt.Ignore())
                .ForMember(dst => dst.CalendarConfigFilePath, opt => opt.Ignore())
                .ForMember(dst => dst.AzureStorageLocation, opt => opt.Ignore())
                .ForMember(dst => dst.CredentialNamespacePrefix, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV311ToV32, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore())
                // v2 global properties are not needed for a fully v3 upgrade path
                .ForMember(dst => dst.DescriptorNamespacePrefix, opt => opt.Ignore())
                .ForMember(dst => dst.CalendarConfigFilePath, opt => opt.Ignore())
                .ForMember(dst => dst.AzureStorageLocation, opt => opt.Ignore())
                .ForMember(dst => dst.CredentialNamespacePrefix, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV34ToV50, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore())
                // v2 global properties are not needed for a fully v3 upgrade path
                .ForMember(dst => dst.DescriptorNamespacePrefix, opt => opt.Ignore())
                .ForMember(dst => dst.CalendarConfigFilePath, opt => opt.Ignore())
                .ForMember(dst => dst.AzureStorageLocation, opt => opt.Ignore())
                .ForMember(dst => dst.CredentialNamespacePrefix, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV33ToV50, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore())
                // v2 global properties are not needed for a fully v3 upgrade path
                .ForMember(dst => dst.DescriptorNamespacePrefix, opt => opt.Ignore())
                .ForMember(dst => dst.CalendarConfigFilePath, opt => opt.Ignore())
                .ForMember(dst => dst.AzureStorageLocation, opt => opt.Ignore())
                .ForMember(dst => dst.CredentialNamespacePrefix, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV32ToV50, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore())
                // v2 global properties are not needed for a fully v3 upgrade path
                .ForMember(dst => dst.DescriptorNamespacePrefix, opt => opt.Ignore())
                .ForMember(dst => dst.CalendarConfigFilePath, opt => opt.Ignore())
                .ForMember(dst => dst.AzureStorageLocation, opt => opt.Ignore())
                .ForMember(dst => dst.CredentialNamespacePrefix, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV311ToV50, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore())
                // v2 global properties are not needed for a fully v3 upgrade path
                .ForMember(dst => dst.DescriptorNamespacePrefix, opt => opt.Ignore())
                .ForMember(dst => dst.CalendarConfigFilePath, opt => opt.Ignore())
                .ForMember(dst => dst.AzureStorageLocation, opt => opt.Ignore())
                .ForMember(dst => dst.CredentialNamespacePrefix, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV31ToV50, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore())
                // v2 global properties are not needed for a fully v3 upgrade path
                .ForMember(dst => dst.DescriptorNamespacePrefix, opt => opt.Ignore())
                .ForMember(dst => dst.CalendarConfigFilePath, opt => opt.Ignore())
                .ForMember(dst => dst.AzureStorageLocation, opt => opt.Ignore())
                .ForMember(dst => dst.CredentialNamespacePrefix, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV25ToV50, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore())
                // v2 global properties are not needed for a fully v3 upgrade path
                .ForMember(dst => dst.DescriptorNamespacePrefix, opt => opt.Ignore())
                .ForMember(dst => dst.CalendarConfigFilePath, opt => opt.Ignore())
                .ForMember(dst => dst.AzureStorageLocation, opt => opt.Ignore())
                .ForMember(dst => dst.CredentialNamespacePrefix, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV24ToV50, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore())
                // v2 global properties are not needed for a fully v3 upgrade path
                .ForMember(dst => dst.DescriptorNamespacePrefix, opt => opt.Ignore())
                .ForMember(dst => dst.CalendarConfigFilePath, opt => opt.Ignore())
                .ForMember(dst => dst.AzureStorageLocation, opt => opt.Ignore())
                .ForMember(dst => dst.CredentialNamespacePrefix, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV25ToV34, MigrationConfigurationGlobal>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore());



        }

    }
}