// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using NUnit.Framework;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v2_to_v3.DataCompatibilityErrorTests
{
    [TestFixture]
    public class DataCompatibilityErrorTests : V2ToV3MigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.EraseEdfiDataOnly;
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V25;

        [TestCase("CredentialMissingStateOfIssueStateAbbreviationTypeId.sql", MigrationErrorCode.StaffCredentialStateAbbreviationMissing)]
        [TestCase("OpenStaffPositionInvalidKey.sql", MigrationErrorCode.OpenStaffPosition)]
        [TestCase("RestraintEventInvalidKey.sql", MigrationErrorCode.RestraintEvent)]
        [TestCase("DescriptorInvalidNamespace.sql", MigrationErrorCode.DescriptorInvalidNamespace)]
        [TestCase("DescriptorInvalidCodeValue.sql", MigrationErrorCode.DescriptorInvalidCodeValue)]
        public void DataCompatibilityErrorExpected(string sourceDataScriptName, MigrationErrorCode expectedErrorCode)
        {
            var result = PerformTestMigration(sourceDataScriptName);
            AssertUpgradeFailed(result, expectedErrorCode);
        }
    }
}
