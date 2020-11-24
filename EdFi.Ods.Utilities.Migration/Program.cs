// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
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
        private static void Main(string[] args)
        {
            ConfigureLogging();

            var logger = LogManager.GetLogger(typeof(Program));

            try
            {
                var parserResult = new Parser(ParserSettings).ParseArguments<Options>(args);

                var exitCode = parserResult.MapResult(
                    options =>
                    {
                        var container = CreateServiceProvider(new ServiceCollection(), options);
                        return RunMigrationUtility(container);
                    },
                    errors =>
                    {
                        var container = CreateServiceProvider(new ServiceCollection(), new Options());
                        return OptionsNotParsed(container, parserResult, errors);
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
                string configPath = Path.Combine(Path.GetDirectoryName(assembly.Location)!, "log4net.config");
                XmlConfigurator.Configure(LogManager.GetRepository(assembly), new FileInfo(configPath));
            }

            static void ParserSettings(ParserSettings settings)
            {
                settings.CaseInsensitiveEnumValues = true;
                settings.CaseSensitive = false;
            }

            static int RunMigrationUtility(IContainer container)
            {
                var applicationRunner = container.Resolve<IApplicationRunner>();
                return applicationRunner.Run();
            }

            static IContainer CreateServiceProvider(IServiceCollection serviceCollection, Options options)
            {
                var containerBuilder = new ContainerBuilder();

                containerBuilder.RegisterInstance(options);

                containerBuilder.RegisterModule(new MigrationUtilityModule());
                containerBuilder.RegisterModule(new SqlServerSpecificModule());

                containerBuilder.Populate(serviceCollection);

                return containerBuilder.Build();
            }

            int OptionsNotParsed(IContainer container, ParserResult<Options> parserResult, IEnumerable<Error> errors)
            {
                var helpTextProvider = container.Resolve<IHelpTextProvider>();
                logger.Error(helpTextProvider.BuildHelpText(parserResult, errors));

                return -1;
            }
        }
    }
}