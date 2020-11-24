// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.Linq;
using CommandLine;
using CommandLine.Text;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.MigrationManager;

namespace EdFi.Ods.Utilities.Migration.Providers
{
    public class HelpTextProvider : IHelpTextProvider
    {
        private readonly IOdsMigrationManagerResolver _odsMigrationManagerResolver;

        public HelpTextProvider(IOdsMigrationManagerResolver odsMigrationManagerResolver)
        {
            _odsMigrationManagerResolver = odsMigrationManagerResolver;
        }

        public HelpText BuildHelpText<T>(ParserResult<T> parserResult, IEnumerable<Error> errors) =>
            errors.IsVersion()
                ? HelpText.AutoBuild(parserResult)
                : HelpText.AutoBuild(parserResult,
                    h =>
                    {
                        h.AddPreOptionsLines(GetVersionText());
                        return HelpText.DefaultParsingErrorsHandler(parserResult, h);
                    }, e => e);

        private IEnumerable<string> GetVersionText()
        {
            var versionHelpText = new List<string> {"Supports an in-place ODS upgrade for the following upgrade paths:"};

            versionHelpText.Add("    SQLServer:");
            GetVersionTextForEngine(versionHelpText, _odsMigrationManagerResolver, DatabaseEngine.SQLServer);

            versionHelpText.Add("    PostgreSQL:");
            GetVersionTextForEngine(versionHelpText, _odsMigrationManagerResolver, DatabaseEngine.PostgreSQL);

            return versionHelpText;

            void GetVersionTextForEngine(List<string> helpText, IOdsMigrationManagerResolver resolver, string engine)
            {
                helpText
                    .AddRange(resolver.GetAllUpgradableVersions(engine)
                        .SelectMany(fromVersion => resolver.GetSupportedUpgradeVersions(fromVersion, engine).Select(toVersion =>
                            $"        {fromVersion.ApiVersion,-5} =>   {toVersion.ApiVersion,-5}")));
            }
        }
    }
}