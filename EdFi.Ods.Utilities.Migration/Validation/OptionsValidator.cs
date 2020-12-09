// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.IO;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;
using log4net;

namespace EdFi.Ods.Utilities.Migration.Validation
{
    public class OptionsValidator : IOptionsValidator
    {
        private readonly IConnectionStringValidator _connectionStringValidator;
        private static readonly ILog _logger = LogManager.GetLogger(typeof(OptionsValidator));

        public OptionsValidator(IConnectionStringValidator connectionStringValidator)
        {
            _connectionStringValidator = connectionStringValidator;
        }

        public bool IsValid(Options options)
        {
            return IsValidConnectionString()
                   && IsValidScriptPath()
                   && IsValidDescriptorPath()
                   && IsValidCalendarConfigFilePath()
                   && IsValidEngine();

            bool IsValidScriptPath() => IsValidPath(options.BaseMigrationScriptFolderPath, "Script");

            bool IsValidDescriptorPath() => IsValidPath(options.BaseDescriptorXmlDirectoryPath, "Descriptor");

            bool IsValidCalendarConfigFilePath() => IsValidFilePath(options.CalendarConfigFilePath, "Calendar Config");

            bool IsValidConnectionString() => _connectionStringValidator.IsValidConnectionString(options.DatabaseConnectionString);

            bool IsValidEngine() => DatabaseEngine.TryParse(x => x.Value.Equals(options.Engine, StringComparison.InvariantCultureIgnoreCase), out _);

            bool IsValidFilePath(string path, string context)
            {
                if (string.IsNullOrEmpty(path))
                {
                    return true;
                }

                if (File.Exists(path))
                {
                    _logger.Info($"{context} path exists ({path})");
                    return true;
                }

                _logger.Error($"{context} path does not exist ({path})");
                return false;
            }

            bool IsValidPath(string path, string context)
            {
                if (Directory.Exists(path))
                {
                    _logger.Info($"{context} path exists ({path})");
                    return true;
                }

                _logger.Error($"{context} path does not exist ({path})");
                return false;
            }
        }
    }
}