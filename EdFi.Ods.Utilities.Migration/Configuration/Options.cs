// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.IO;
using System.Reflection;
using CommandLine;
using EdFi.Ods.Utilities.Migration.Enumerations;
using log4net;

namespace EdFi.Ods.Utilities.Migration.Configuration
{
    public class Options
    {
        private const string Scripts = "Scripts";
        private const string Descriptors = "Descriptors";
        private const string SampleCalendarConfig = "Sample Calendar Config";

        private static readonly string BasePath =
            Path.GetFullPath(Path.GetDirectoryName(typeof(Options).GetTypeInfo().Assembly.Location));

        private static string _scriptsFolder;
        private static string _descriptorsFolder;
        private static string _calendarFolder;
        private static readonly ILog _logger = LogManager.GetLogger(typeof(Options));

        [Option("Engine",
            HelpText = "The database engine type: SQLServer or PostgreSQL",
            Default = DatabaseEngine.SQLServer)]
        public string Engine { get; set; }

        [Option("ScriptPath",
            HelpText = "Full file system path to the folder containing all migration scripts",
            Default = Scripts)]
        public string BaseMigrationScriptFolderPath
        {
            get => _scriptsFolder.Equals(Scripts, StringComparison.InvariantCultureIgnoreCase)
                ? Path.Combine(BasePath, Scripts)
                : _scriptsFolder ?? string.Empty;
            set => _scriptsFolder = value;
        }

        [Option("DescriptorXMLDirectoryPath",
            HelpText =
                "The directory containing the descriptor xml files to import.  This directory must be accessible from your sql server.",
            Default = Descriptors)]
        public string BaseDescriptorXmlDirectoryPath
        {
            get => _descriptorsFolder.Equals(Descriptors, StringComparison.InvariantCultureIgnoreCase)
                ? Path.Combine(BasePath, Descriptors)
                : _descriptorsFolder ?? string.Empty;
            set => _descriptorsFolder = value;
        }

        [Option('d', "Database", Required = true, HelpText = "Connection string for source ODS to upgrade")]
        public string DatabaseConnectionString { get; set; }

        [Option("BypassExtensionValidationCheck",
            HelpText =
                "Enable this only if you have custom extensions and have created your own migration scripts.  Allows upgrade to proceed even if extensions or other dependencies exist.")]
        public bool BypassExtensionValidationCheck { get; set; }

        [Option("ToVersion",
            HelpText =
                "ODS API upgrade version (optional): This will be set to the latest supported by default. (Example: 3.3)")]
        public string RequestedFinalUpgradeVersion { get; set; }

        [Option("FromVersion",
            HelpText =
                "Current ODS API version (optional: not usually needed): Needed only if your current ODS version could not be be automatically detected.  (Example: 2.4)")]
        public string CurrentOdsVersionCommandLineOverride { get; set; }

        [Option("DescriptorNamespace",
            HelpText =
                "Namespace prefix for new descriptors that are not in the Ed-Fi defaults. Must be in the format: \"uri://[organization_name]\". Example: \"uri://ed-fi.org\"")]
        public string DescriptorNamespacePrefix { get; set; }

        [Option("CalendarConfigFilePath",
            HelpText =
                "Full path to the calendar configuration csv file.  This file must be accessible from your sql server. Required if there is calendar data for more than one school year, or if the school year data cannot be automatically resolved from edfi.Session")]
        public string CalendarConfigFilePath
        {
            get => string.IsNullOrEmpty(_calendarFolder)
                ? _calendarFolder
                : Path.GetFullPath(_calendarFolder);
            set => _calendarFolder = value;
        }

        [Option("AzureStorageLocation",
            HelpText =
                "Azure Only: external data source where configuration files reside. (for example: https://odsstorage.blob.core.windows.net)")]
        public string AzureStorageLocation { get; set; }

        [Option("CredentialNamespace",
            HelpText =
                "Namespace prefix to use for all records in the table edfi.Credential. Must be in the format: \"uri://[organization_name]\". Example: \"uri://ed-fi.org\"")]
        public string CredentialNamespacePrefix { get; set; }

        [Option("CompatibilityCheckOnly",
            HelpText = "Optional: Check database compatibility without upgrading")]
        public bool CompatibilityCheckOnly { get; set; }

        [Option('t', "Timeout", Default = 0, HelpText = "SQL command execution timeout in seconds (optional)")]
        public int Timeout { get; set; }
    }
}