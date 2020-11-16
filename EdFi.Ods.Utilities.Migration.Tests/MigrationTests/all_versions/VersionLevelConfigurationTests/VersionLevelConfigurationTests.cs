// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Linq;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.VersionLevel;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.all_versions.VersionLevelConfigurationTests
{
    /// <summary>
    /// These tests are no longer used with the 3.3 release and the migration to the DbDeploy tool.  They are maintained here for testing older migrations.
    /// </summary>
    [TestFixture]
    public class VersionLevelConfigurationTests : DatabaseIntegrationTestBase
    {
        private readonly Dictionary<EdFiOdsVersion, int> _latestKnownDataVersionLevel =
            new Dictionary<EdFiOdsVersion, int>();

        private readonly Dictionary<EdFiOdsVersion, int> _latestKnownStructureVersionLevel =
            new Dictionary<EdFiOdsVersion, int>();

        private static readonly List<EdFiOdsVersion> VersionLevelConfigurationsUnderTest =
            GetVersionLevelConfigurationsUnderTest();

        [OneTimeSetUp]
        public void TestFixtureSetup()
        {
            /*
             * Under current conventions, version levels are generated based on the file names of scripts from the core Ed-Fi-ODS build
             * These values are used to populate the values of the [dbo].[VersionLevel] table
             *
             * [dbo].[VersionLevel] DATA:  Contains the latest data script number that the migration utility has been brought up to date with
             * [dbo].[VersionLevel] STRUCTURE: Contains the latest structure script number that the migration utility has been brought up to date with
             */
            _latestKnownDataVersionLevel.Add(EdFiOdsVersion.V25, 4);
            _latestKnownStructureVersionLevel.Add(EdFiOdsVersion.V25, 22);
            _latestKnownDataVersionLevel.Add(EdFiOdsVersion.V31, 1010);
            _latestKnownStructureVersionLevel.Add(EdFiOdsVersion.V31, 1027);
            _latestKnownDataVersionLevel.Add(EdFiOdsVersion.V311, 1030);
            _latestKnownStructureVersionLevel.Add(EdFiOdsVersion.V311, 1029);
            _latestKnownDataVersionLevel.Add(EdFiOdsVersion.V32, 0000);
            _latestKnownStructureVersionLevel.Add(EdFiOdsVersion.V32, 0000);
        }

        [TestCaseSource(nameof(VersionLevelConfigurationsUnderTest))]
        public void VersionLevelConfigurationShouldBeValid(EdFiOdsVersion version)
        {
            var versionLevel = new EdFiOdsVersionLevel(version);
            versionLevel.GetDataVersionLevel().ShouldBeGreaterThanOrEqualTo(_latestKnownDataVersionLevel[version]);
            versionLevel.GetStructureVersionLevel()
                .ShouldBeGreaterThanOrEqualTo(_latestKnownStructureVersionLevel[version]);
        }

        [TestCase("1234- n/a.sql", 1234)]
        [TestCase("0012-1.sql", 12)]
        [TestCase("0000- .sql", 0)]
        public void ShouldGetCorrectVersionNumberFromValidScriptNames(string fileName, int expected)
        {
            EdFiOdsVersionLevel.ExtractScriptNumberFromFileName(fileName).ShouldBe(expected);
        }

        [TestCase("123- not enough digits in number.sql")]
        [TestCase("1234 no_dash.sql")]
        [TestCase("no-script number.sql")]
        [TestCase("1111.sql")]
        public void ShouldFailCorrectlyIfScriptNumberIsNotInExpectedFormat(string fileName)
        {
            Assert.Throws<InvalidOperationException>(
                () => EdFiOdsVersionLevel.ExtractScriptNumberFromFileName(fileName));
        }

        private static List<EdFiOdsVersion> GetVersionLevelConfigurationsUnderTest()
        {
            var odsMigrationManagerResolver = new OdsMigrationManagerResolver();

            return EdFiOdsVersion.GetAll()
                .Where(fromVersion => odsMigrationManagerResolver.VersionCanBeUpgraded(fromVersion)
                    && FromVersionIsUnderTest(fromVersion))
                .SelectMany(fromVersion => odsMigrationManagerResolver.GetSupportedUpgradeVersions(fromVersion)
                    .Where(ToVersionIsUnderTest))
                .Distinct()
                // VersionLevel tests only apply to versions before v33
                .Where(version => version.ApiVersion < EdFiOdsVersion.V33.ApiVersion)
                .ToList();
        }
    }
}
