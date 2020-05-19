// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.IO;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using NUnit.Framework;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v2_to_v3.GlendaleTests
{
    [TestFixture]
    public class GlendaleTests : V2ToV3MigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.RestoreDuringFixtureSetupOnly;
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V2UpTo24;

        protected override string OptionalTestSourceOdsBackupFullPath => GetFullGlendaleBackupPath();

        protected override string TestDisabledReason => string.IsNullOrEmpty(GetFullGlendaleBackupPath())
            ? "Glendale tests are currently optional due to disk space/runtime requirements. A Glendale backup file was not supplied, so this test will be automatically disabled.  To enable, specify a valid backup file path in the application config"
            : string.Empty;

        private static string GetFullGlendaleBackupPath()
        {
            return string.IsNullOrEmpty(MigrationTestSettingsProvider.GetConfigVariable("GlendaleBackupPath"))
                ? null
                : Path.GetFullPath(MigrationTestSettingsProvider.GetConfigVariable("GlendaleBackupPath"));
        }

        [Test]
        public void ShouldPassGlendaleDefaultValidationWithNoErrors()
        {
            var upgradeResult = PerformTestMigration("GlendaleCompatibilityUpdate.sql");
            AssertUpgradeSucceeded(upgradeResult);
        }
    }
}
