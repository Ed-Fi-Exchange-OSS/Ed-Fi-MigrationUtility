// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Reflection;
using CommandLine;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.Queries;
using EdFi.Ods.Utilities.Migration.Validation;
using log4net;
using log4net.Config;

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
                int exitCode = 0;

                var parserResult = new Parser(
                    config =>
                    {
                        config.CaseInsensitiveEnumValues = true;
                        config.CaseSensitive = false;
                    }).ParseArguments<Options>(args);

                parserResult
                    .WithParsed(options =>
                    {
                        var optionsValidator = new OptionsValidator(new SqlServerConnectionStringValidator());
                        var applicationRunner = new ApplicationRunner(optionsValidator);
                        exitCode = applicationRunner.Run(options);
                    })
                    .WithNotParsed(
                        errors =>
                        {
                            logger.Error(Options.BuildHelpText(parserResult, errors));
                            exitCode = -1;
                        });

                Environment.Exit(exitCode);
            }
            catch (Exception e)
            {
                logger.Error(e.Message);
                Environment.Exit(-1);
            }




            void ConfigureLogging()
            {
                var assembly = typeof(Program).GetTypeInfo().Assembly;

                string configPath = Path.Combine(Path.GetDirectoryName(assembly.Location), "log4net.config");

                XmlConfigurator.Configure(LogManager.GetRepository(assembly), new FileInfo(configPath));
            }
        }
    }
}