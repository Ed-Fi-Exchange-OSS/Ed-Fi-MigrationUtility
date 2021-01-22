// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using NUnit.Framework;

namespace EdFi.Ods.Utilities.Migration.Tests.MsSql.MigrationTests.v2_to_v3.ExtensionErrorTests
{
    public class ExtensionErrorTests : V2ToV3SqlServerMigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.FullRestoreBeforeEveryTest;
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V25;

        [TestCase("EdFiSchemaDependencyPresent.sql", MigrationErrorCode.DependencyFound)]
        [TestCase("ExtensionTablePresent.sql", MigrationErrorCode.ExtensionFound)]
        public void ExtensionErrorExpected(string sourceDataScriptName, MigrationErrorCode expectedErrorCode)
        {
            var result = PerformTestMigration(sourceDataScriptName);
            AssertUpgradeFailed(result, expectedErrorCode);
        }
    }
}
