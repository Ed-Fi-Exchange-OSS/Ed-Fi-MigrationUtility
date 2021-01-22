// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.IO;
using System.Reflection;
using Autofac;
using Autofac.Extensions.DependencyInjection;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.Providers;
using log4net;
using log4net.Config;
using Microsoft.Extensions.DependencyInjection;
using NUnit.Framework;

namespace EdFi.Ods.Utilities.Migration.Tests.PgSql
{
    [SetUpFixture]
    public class PostgreSqlMigrationTestsGlobalSetup
    {
        public static IOdsMigrationManagerResolver OdsMigrationManagerResolver { get; private set; }
        public static IUpgradeEngineBuilderProvider UpgradeEngineBuilderProvider { get; private set; }
        public static IMigrationConfigurationProvider MigrationConfigurationProvider { get; private set; }
        public static Func<Options, UpgradeVersionConfiguration, IOdsMigrationManager> OdsMigrationManagerFactory { get; private set; }
        public static IContainer Container { get; private set; }

        [OneTimeSetUp]
        public void RunBeforeAnyTests()
        {
            var options = new Options {Engine = DatabaseEngine.PostgreSQL};

            var containerBuilder = new ContainerBuilder();
            containerBuilder.RegisterInstance(options);
            containerBuilder.RegisterModule(new MigrationUtilityModule());
            containerBuilder.RegisterModule(new PostgreSqlSpecificModule {Options = options});
            containerBuilder.Populate(new ServiceCollection());

            Container = containerBuilder.Build();

            OdsMigrationManagerResolver = Container.Resolve<IOdsMigrationManagerResolver>();
            UpgradeEngineBuilderProvider = Container.Resolve<IUpgradeEngineBuilderProvider>();
            MigrationConfigurationProvider = Container.Resolve<IMigrationConfigurationProvider>();
            OdsMigrationManagerFactory = Container.Resolve<Func<Options, UpgradeVersionConfiguration, IOdsMigrationManager>>();
        }

        [OneTimeTearDown]
        public void RunAfterAnyTests()
        {
            Container?.Dispose();
        }
    }
}