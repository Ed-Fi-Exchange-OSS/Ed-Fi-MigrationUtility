// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Linq;
using EdFi.Ods.Utilities.Migration.Enumerations;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.PostgreSql.Tests.MigrationTests.all_versions
{
    [TestFixture]
    public class EdFiOdsVersionTests
    {
        [Test]
        public void AllVersionsShouldBeUnique()
        {
            var allVersions = EdFiOdsVersion.GetAll();
            var expectedCount = allVersions.Length;

            allVersions.GroupBy(v => v.ApiVersion).Count().ShouldBe(expectedCount);
            allVersions.GroupBy(v => v.Value).Count().ShouldBe(expectedCount);

            foreach (var version in allVersions.OrderBy(v => v.Value))
            {
                foreach (var otherVersion in allVersions.Where(x => x.Value > version.Value))
                {
                    version.IsVersion(otherVersion.ToString()).ShouldBe(false);
                    otherVersion.IsVersion(version.ToString()).ShouldBe(false);
                }
            }
        }

        [Test]
        public void JournalTableShouldBeUniqueForEachVersion()
        {
            var allVersions = EdFiOdsVersion.GetAll().Where(x => x.UpgradeJournalTableName != null).ToList();
            var expectedCount = allVersions.Count;

            allVersions.GroupBy(x => x.UpgradeJournalTableName).Count().ShouldBe(expectedCount);
        }
    }
}
