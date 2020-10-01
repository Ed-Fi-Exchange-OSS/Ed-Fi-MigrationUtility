// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using NUnit.Framework;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v32_to_v33.AddressDependencyTests
{
    public class AddressDependencyTests : V32ToV33MigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.FullRestoreBeforeEveryTest;

        [TestCase("EdFiEducationOrganizationAddressDependencyPresent.sql")]
        [TestCase("EdFiStaffAddressDependencyPresent.sql")]
        [TestCase("EdFiStudentEducationOrganizationAssociationAddressDependencyPresent.sql")]
        [TestCase("EdFiParentAddressDependencyPresent.sql")]
        public void ExtensionErrorExpected(string sourceDataScriptName)
        {
            // Force the schema to create separately
            InsertTestRecords("CreateExternalSchema.sql", null);
            var result = PerformTestMigration(sourceDataScriptName);
            AssertUpgradeFailed(result, MigrationErrorCode.ExtensionFound);
        }
    }
}
