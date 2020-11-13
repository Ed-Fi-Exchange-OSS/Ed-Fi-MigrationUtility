// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.IO;
using System.Reflection;
using Autofac;
using Autofac.Extensions.DependencyInjection;
using CommandLine;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Providers;
using log4net;
using log4net.Config;
using Microsoft.Extensions.DependencyInjection;

namespace EdFi.Ods.Utilities.Migration
{
    internal class Program
    {
        private static IContainer _container;

        private static void Main(string[] args)
        {
            ConfigureLogging();

            var logger = LogManager.GetLogger(typeof(Program));

            try
            {
                int exitCode = 0;

                var parserResult = new Parser(
                    config =>
                    {
                        config.CaseInsensitiveEnumValues = true;
                        config.CaseSensitive = false;
                    }).ParseArguments<Options>(args);

                CreateServiceProvider(new ServiceCollection());

                parserResult
                    .WithParsed(options =>
                    {
                        var applicationRunner = _container.Resolve<IApplicationRunner>();
                        exitCode = applicationRunner.Run(options);
                    })
                    .WithNotParsed(
                        errors =>
                        {
                            var helpTextProvider = _container.Resolve<IHelpTextProvider>();

                            logger.Error(helpTextProvider.BuildHelpText(parserResult, errors));
                            exitCode = -1;
                        });

                Environment.Exit(exitCode);
            }
            catch (Exception e)
            {
                logger.Error(e.Message);
                Environment.Exit(-1);
            }

            static void ConfigureLogging()
            {
                var assembly = typeof(Program).GetTypeInfo().Assembly;

                string configPath = Path.Combine(Path.GetDirectoryName(assembly.Location), "log4net.config");

                XmlConfigurator.Configure(LogManager.GetRepository(assembly), new FileInfo(configPath));
            }

            static void CreateServiceProvider(IServiceCollection serviceCollection)
            {
                var containerBuilder = new ContainerBuilder();

                containerBuilder.RegisterModule(new MigrationUtilityModule());
                containerBuilder.Populate(serviceCollection);

                _container = containerBuilder.Build();
            }
        }
    }
}