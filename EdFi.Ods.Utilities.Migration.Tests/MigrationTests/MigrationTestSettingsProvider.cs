// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using EdFi.Ods.Utilities.Migration.Enumerations;
using Microsoft.Extensions.Configuration;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests
{
    public static class MigrationTestSettingsProvider
    {
        private static readonly Lazy<IConfigurationRoot> Config;

        private static readonly Lazy<Dictionary<EdFiOdsVersion, string>> GrandBendBackupPaths = new Lazy<Dictionary<EdFiOdsVersion, string>>(ReadGrandBendBackupPaths);

        static MigrationTestSettingsProvider()
        {
            Config = new Lazy<IConfigurationRoot>(() => new ConfigurationBuilder()
                .SetBasePath(Directory.GetParent(AppContext.BaseDirectory).FullName)
                .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true)
                .Build());
        }

        public static string GetConfigVariable(string variableName)
        {
            if (Config.Value.GetSection(variableName).Value == null)
            {
                throw new InvalidOperationException($"Configuration option does not exist: '{variableName}'");
            }

            return Environment.GetEnvironmentVariable(variableName) ??
                   Config.Value.GetSection(variableName).Value;
        }

        public static string GetConnectionString(string key) => Config.Value.GetConnectionString(key);

        public static Dictionary<EdFiOdsVersion, string> GetGrandBendBackupPaths() => GrandBendBackupPaths.Value;

        private static Dictionary<EdFiOdsVersion, string> ReadGrandBendBackupPaths()
        {
            var result = new Dictionary<EdFiOdsVersion, string>();
            foreach (var child in Config.Value.GetSection("GrandBendBackupPathsByDisplayName").GetChildren())
            {
                if (EdFiOdsVersion.TryParse(child.Key, out EdFiOdsVersion version))
                {
                    result.Add(version, child.Value);
                }
                else
                {
                    throw new ApplicationException(
                        $"Unable to convert display value {child.Key} to enumeration value for EdFiOdsVersion." +
                        $" Possible values: {string.Join(", ", EdFiOdsVersion.GetAll().Select(eov => eov.DisplayName))}");
                }
            }

            return result;
        }
    }
}
