// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.IO;
using System.Reflection;
using Autofac;
using Autofac.Extensions.DependencyInjection;
using EdFi.Ods.Utilities.Migration.Factories;
using EdFi.Ods.Utilities.Migration.Providers;
using log4net;
using log4net.Config;
using Microsoft.Extensions.DependencyInjection;
using NUnit.Framework;

namespace EdFi.Ods.Utilities.Migration.Tests
{
    [SetUpFixture]
    public class MigrationTestsGlobalSetup
    {
        public static IOdsMigrationManagerResolver OdsMigrationManagerResolver { get; private set; }
        public static IUpgradeEngineBuilderProvider UpgradeEngineBuilderProvider { get; private set; }
        public static IMigrationConfigurationProvider MigrationConfigurationProvider { get; private set; }
        public static IOdsMigrationManagerFactory OdsMigrationManagerFactory { get; private set; }
        public static IContainer Container { get; private set; }

        [OneTimeSetUp]
        public void RunBeforeAnyTests()
        {
            var assembly = typeof(MigrationTestsGlobalSetup).GetTypeInfo().Assembly;

            var configPath = Path.Combine(Path.GetDirectoryName(assembly.Location), "log4net.config");

            XmlConfigurator.Configure(LogManager.GetRepository(assembly), new FileInfo(configPath));

            var containerBuilder = new ContainerBuilder();
            containerBuilder.RegisterModule(new MigrationUtilityModule());
            containerBuilder.Populate(new ServiceCollection());

            Container = containerBuilder.Build();

            OdsMigrationManagerResolver = Container.Resolve<IOdsMigrationManagerResolver>();
            UpgradeEngineBuilderProvider = Container.Resolve<IUpgradeEngineBuilderProvider>();
            MigrationConfigurationProvider = Container.Resolve<IMigrationConfigurationProvider>();
            OdsMigrationManagerFactory = Container.Resolve<IOdsMigrationManagerFactory>();
        }

        [OneTimeTearDown]
        public void RunAfterAnyTests()
        {
            Container?.Dispose();
        }
    }
}