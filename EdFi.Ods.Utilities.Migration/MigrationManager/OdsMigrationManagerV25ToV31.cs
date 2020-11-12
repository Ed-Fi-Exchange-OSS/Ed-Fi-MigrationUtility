// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.IO;
using System.Text.RegularExpressions;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Providers;
using EdFi.Ods.Utilities.Migration.VersionLevel;

namespace EdFi.Ods.Utilities.Migration.MigrationManager
{
    public class OdsMigrationManagerV25ToV31 : OdsVersionSpecificMigrationManager<MigrationConfigurationV25ToV31>
    {
        public OdsMigrationManagerV25ToV31(MigrationConfigurationV25ToV31 configuration,
            UpgradeVersionConfiguration upgradeVersionConfiguration,
            IUpgradeEngineBuilderProvider upgradeEngineBuilderProvider)
            : base(configuration, upgradeVersionConfiguration, upgradeEngineBuilderProvider)
        {
            Configuration.DescriptorNamespacePrefix = RemoveTrailingSlash(Configuration.DescriptorNamespacePrefix);

            if (!string.IsNullOrEmpty(Configuration.CredentialNamespacePrefix))
            {
                Configuration.CredentialNamespacePrefix = RemoveTrailingSlash(Configuration.CredentialNamespacePrefix);
            }

            if (Configuration.AzureStorageLocation != null)
            {
                Configuration.AzureStorageLocation = RemoveTrailingSlash(Configuration.AzureStorageLocation);
            }

            Configuration.DescriptorNamespacePrefix = EscapeSpecialCharactersAllowedInNamespaces(Configuration.DescriptorNamespacePrefix);
            Configuration.CredentialNamespacePrefix = EscapeSpecialCharactersAllowedInNamespaces(Configuration.CredentialNamespacePrefix);
        }

        protected override Dictionary<string, string> GetSqlSubstitutionVariables()
        {
            var versionLevel = new EdFiOdsVersionLevel(EdFiOdsVersion.V31);
            return new Dictionary<string, string>
            {
                {"BypassExtensionValidationCheck", Configuration.BypassExtensionValidationCheck.ToString()},
                {"EdFiOdsStructureVersionLevel", versionLevel.GetStructureVersionLevel().ToString()},
                {"EdFiOdsDataVersionLevel", versionLevel.GetDataVersionLevel().ToString()},
                {"DescriptorNamespacePrefix", Configuration.DescriptorNamespacePrefix},
                {"CredentialNamespacePrefix", Configuration.CredentialNamespacePrefix},
                {"CalendarConfigurationFilePath", Configuration.CalendarConfigFilePath},
                {"DescriptorXmlImportDirectoryPath", Configuration.GetFullDescriptorXmlDirectoryPath()},
                {"AzureStorageLocation", Configuration.AzureStorageLocation}
            };
        }

        protected override void ValidateVersionSpecificConfigurationState(MigrationConfigurationV25ToV31 configuration)
        {
            RaiseErrorIfNamespacePrefixIsInvalid(configuration);
            RaiseErrorIfMissingOrInvalidDescriptorXmlLocation(configuration);

            RaiseErrorIfStringContainsCharactersProblematicForSqlSubtitution(
                configuration.GetFullDescriptorXmlDirectoryPath(), "DescriptorXMLDirectoryPath");

            RaiseErrorIfStringContainsCharactersProblematicForSqlSubtitution(configuration.CalendarConfigFilePath, "CalendarConfigFilePath");
            RaiseErrorIfStringContainsCharactersProblematicForSqlSubtitution(configuration.AzureStorageLocation, "AzureStorageLocation");
        }

        private static void RaiseErrorIfNamespacePrefixIsInvalid(MigrationConfigurationV25ToV31 configuration)
        {
            if (string.IsNullOrEmpty(configuration.DescriptorNamespacePrefix))
            {
                throw new ArgumentException(
                    "A default descriptor namespace prefix is required for upgrade.  Please supply a descriptor namespace prefix in the format: \"uri://[organization_name]\"");
            }

            var namespaceRegex = new Regex(@"^uri:\/\/[\w$-.+!*'(),]+\/?$");

            const string namespaceFormatRequirements =
                @"The namespace prefix must match the format: ""uri://[organization_name]"". Valid organization names can only contain alphanumeric and $-_.+!*'(), characters, and may be up to 255 characters long";

            if (!namespaceRegex.IsMatch(configuration.DescriptorNamespacePrefix) || configuration.DescriptorNamespacePrefix.Length > 255)
            {
                throw new ArgumentException(
                    $@"Invalid descriptor namespace prefix: {configuration.DescriptorNamespacePrefix}. {namespaceFormatRequirements}.");
            }

            if (configuration.CredentialNamespacePrefix != null && (!namespaceRegex.IsMatch(configuration.CredentialNamespacePrefix) ||
                                                                    configuration.CredentialNamespacePrefix.Length > 255))
            {
                throw new ArgumentException(
                    $@"Invalid credential namespace prefix:   {configuration.CredentialNamespacePrefix}. {namespaceFormatRequirements}.");
            }
        }

        private static void RaiseErrorIfMissingOrInvalidDescriptorXmlLocation(MigrationConfigurationV25ToV31 configuration)
        {
            if (string.IsNullOrEmpty(configuration.AzureStorageLocation) && !Directory.Exists(configuration.GetFullDescriptorXmlDirectoryPath()))
            {
                throw new DirectoryNotFoundException(
                    $"Migration configuration error:  Descriptor directory not found: {configuration.GetFullDescriptorXmlDirectoryPath()}");
            }
        }

        private static string EscapeSpecialCharactersAllowedInNamespaces(string str)
        {
            return string.IsNullOrEmpty(str)
                ? str
                : str.Replace("'", "''");
        }

        private static string RemoveTrailingSlash(string url)
        {
            url = (url ?? string.Empty).Trim();
            return url.EndsWith(@"/") ? url.Substring(0, url.LastIndexOf('/')) : url;
        }

        /*
         * DbUp handles variable substitution with a simple string replacement.
         * This validation restriction is in place for parameters that appear in dynamic sql in
         * order to prevent unintentional parsing problems that could occur when scripts are
         * modified or added in the future.  Should it become required to remove this restriction,
         * evaluate and test all dynamic sql usages, and ensure the proper escaping
         * is in place for the applicable upgrade scripts.
         * See usages of the DescriptorNamespace parameter, which supports the ' character,
         * for an example of this
         */

        protected void RaiseErrorIfStringContainsCharactersProblematicForSqlSubtitution(string userSuppliedParameter,
                                                                                        string nameOfUserSuppliedParameter)
        {
            if (!string.IsNullOrEmpty(userSuppliedParameter) && userSuppliedParameter.Contains("'"))
            {
                throw new ArgumentException(
                    $"{nameOfUserSuppliedParameter}: The ' character is currently not permitted for this parameter.  (Value received was \"{userSuppliedParameter}\")");
            }
        }
    }
}
