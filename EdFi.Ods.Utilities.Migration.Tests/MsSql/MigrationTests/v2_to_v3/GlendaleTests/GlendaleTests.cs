// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.IO;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using NUnit.Framework;

namespace EdFi.Ods.Utilities.Migration.Tests.MsSql.MigrationTests.v2_to_v3.GlenDaleTests
{
    [TestFixture]
    public class GlenDaleTests : V2ToV3SqlServerMigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.RestoreDuringFixtureSetupOnly;
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V2UpTo24;

        protected override string OptionalTestSourceOdsBackupFullPath => GetFullGlenDaleBackupPath();

        protected override string TestDisabledReason => string.IsNullOrEmpty(GetFullGlenDaleBackupPath())
            ? "GlenDale tests are currently optional due to disk space/runtime requirements. A GlenDale backup file was not supplied, so this test will be automatically disabled.  To enable, specify a valid backup file path in the application config"
            : string.Empty;

        private static string GetFullGlenDaleBackupPath()
        {
            return string.IsNullOrEmpty(SqlServerMigrationTestSettingsProvider.GetConfigVariable("GlenDaleBackupPath"))
                ? null
                : Path.GetFullPath(SqlServerMigrationTestSettingsProvider.GetConfigVariable("GlenDaleBackupPath"));
        }

        [Test]
        public void ShouldPassGlenDaleDefaultValidationWithNoErrors()
        {
            var upgradeResult = PerformTestMigration("GlenDaleCompatibilityUpdate.sql");
            AssertUpgradeSucceeded(upgradeResult);
        }
    }
}
