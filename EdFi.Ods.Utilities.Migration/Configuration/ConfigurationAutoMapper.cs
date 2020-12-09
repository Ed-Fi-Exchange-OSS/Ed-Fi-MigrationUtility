// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Reflection;
using AutoMapper;
using log4net;

namespace EdFi.Ods.Utilities.Migration.Configuration
{
    public class ConfigurationAutoMapper : IConfigurationAutoMapper
    {
        public readonly IMapper ConfigurationMapper;
        public readonly MapperConfiguration MapperConfiguration;
        private static readonly ILog _logger = LogManager.GetLogger(typeof(ConfigurationAutoMapper));

        public ConfigurationAutoMapper()
        {
            MapperConfiguration = new MapperConfiguration(cfg =>
            {
                var assembly = Assembly.GetAssembly(typeof(ConfigurationAutoMapper));
                cfg.AddMaps(assembly);
            });
            ConfigurationMapper = MapperConfiguration.CreateMapper();
        }

        public MigrationConfigurationVersionSpecific MapToVersionConfiguration(
            Options globalConfiguration,
            Type versionConfigurationType)
        {
            MigrationConfigurationVersionSpecific migrationConfigurationVersionSpecific = null;

            try
            {
                migrationConfigurationVersionSpecific = (MigrationConfigurationVersionSpecific) ConfigurationMapper.Map(
                    globalConfiguration,
                    typeof(Options),
                    versionConfigurationType
                );
            }
            catch (Exception ex)
            {
                _logger.Error($"Application error has occurred in {nameof(MigrationConfigurationVersionSpecific)}{Environment.NewLine}{ex.Message}");
            }

            return migrationConfigurationVersionSpecific;
        }

        public Options MapToGlobalConfiguration<TConfiguration>(TConfiguration versionConfiguration)
            where TConfiguration : MigrationConfigurationVersionSpecific
        {
            Options migrationConfigurationGlobal = null;

            try
            {
                migrationConfigurationGlobal = (Options) ConfigurationMapper.Map(
                    versionConfiguration,
                    typeof(TConfiguration),
                    typeof(Options)
                );
            }
            catch (Exception ex)
            {
                _logger.Error($"Application error has occurred in {nameof(ConfigurationAutoMapper)}{Environment.NewLine}{ex.Message}");
            }

            return migrationConfigurationGlobal;
        }
    }

    public class ConfigurationAutoMapperProfile : Profile
    {
        public ConfigurationAutoMapperProfile()
        {
            CreateMap<Options, MigrationConfigurationV24ToV25>().ForMember(dst => dst.SupportedEngines, opt => opt.Ignore());
            CreateMap<Options, MigrationConfigurationV25ToV31>().ForMember(dst => dst.SupportedEngines, opt => opt.Ignore());
            CreateMap<Options, MigrationConfigurationV31ToV311>().ForMember(dst => dst.SupportedEngines, opt => opt.Ignore());
            CreateMap<Options, MigrationConfigurationV311ToV32>().ForMember(dst => dst.SupportedEngines, opt => opt.Ignore());
            CreateMap<Options, MigrationConfigurationV32ToV33>().ForMember(dst => dst.SupportedEngines, opt => opt.Ignore());
            CreateMap<Options, MigrationConfigurationV33ToV34>().ForMember(dst => dst.SupportedEngines, opt => opt.Ignore());
            CreateMap<Options, MigrationConfigurationV34ToV50>().ForMember(dst => dst.SupportedEngines, opt => opt.Ignore());
            CreateMap<Options, MigrationConfigurationV50ToV51>().ForMember(dst => dst.SupportedEngines, opt => opt.Ignore());

            CreateMap<MigrationConfigurationV25ToV31, Options>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore());

            CreateMap<MigrationConfigurationV311ToV32, Options>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore())
                // v2 global properties are not needed for a fully v3 upgrade path
                .ForMember(dst => dst.DescriptorNamespacePrefix, opt => opt.Ignore())
                .ForMember(dst => dst.CalendarConfigFilePath, opt => opt.Ignore())
                .ForMember(dst => dst.AzureStorageLocation, opt => opt.Ignore())
                .ForMember(dst => dst.CredentialNamespacePrefix, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV34ToV50, Options>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore())
                // v2 global properties are not needed for a fully v3 upgrade path
                .ForMember(dst => dst.DescriptorNamespacePrefix, opt => opt.Ignore())
                .ForMember(dst => dst.CalendarConfigFilePath, opt => opt.Ignore())
                .ForMember(dst => dst.AzureStorageLocation, opt => opt.Ignore())
                .ForMember(dst => dst.CredentialNamespacePrefix, opt => opt.Ignore());
            CreateMap<MigrationConfigurationV50ToV51, Options>()
                .ForMember(dst => dst.RequestedFinalUpgradeVersion, opt => opt.Ignore())
                .ForMember(dst => dst.CurrentOdsVersionCommandLineOverride, opt => opt.Ignore())
                .ForMember(dst => dst.CompatibilityCheckOnly, opt => opt.Ignore())
                // v2 global properties are not needed for a fully v3 upgrade path
                .ForMember(dst => dst.DescriptorNamespacePrefix, opt => opt.Ignore())
                .ForMember(dst => dst.CalendarConfigFilePath, opt => opt.Ignore())
                .ForMember(dst => dst.AzureStorageLocation, opt => opt.Ignore())
                .ForMember(dst => dst.CredentialNamespacePrefix, opt => opt.Ignore());
        }
    }
}