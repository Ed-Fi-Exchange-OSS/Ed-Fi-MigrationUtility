// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using Autofac;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.Providers;
using EdFi.Ods.Utilities.Migration.Validation;

namespace EdFi.Ods.Utilities.Migration
{
    public class MigrationUtilityModule : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            builder.RegisterType<OdsMigrationManagerResolver>()
                .As<IOdsMigrationManagerResolver>()
                .SingleInstance();

            builder.RegisterType<OptionsValidator>()
                .As<IOptionsValidator>()
                .SingleInstance();

            builder.RegisterType<MigrationConfigurationProvider>()
                .As<IMigrationConfigurationProvider>();

            builder.RegisterType<ConfigurationAutoMapper>()
                .As<IConfigurationAutoMapper>()
                .SingleInstance();

            builder.RegisterType<ApplicationRunner>()
                .As<IApplicationRunner>();

            builder.RegisterType<HelpTextProvider>()
                .As<IHelpTextProvider>()
                .SingleInstance();

            builder.RegisterType<OdsMigrationManager>()
                .As<IOdsMigrationManager>();
        }
    }

    public class SqlServerSpecificModule : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            builder.RegisterType<SqlServerConnectionStringValidator>()
                .As<IConnectionStringValidator>()
                .SingleInstance();

            builder.RegisterType<SqlServerCurrentOdsApiVersionProvider>()
                .As<ICurrentOdsApiVersionProvider>()
                .SingleInstance();

            builder.RegisterType<SqlServerUpgradeEngineBuilderProvider>()
                .As<IUpgradeEngineBuilderProvider>();
        }
    }
}