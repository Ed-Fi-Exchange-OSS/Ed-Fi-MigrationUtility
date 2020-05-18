// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v2_to_v3;
using NUnit.Framework;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v24_to_v25.DataCompatibilityErrorTests
{
    [TestFixture]
    public class DataCompatibilityErrorTests : V24ToV25MigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.EraseEdfiDataOnly;

        [TestCase("MissingAssessmentNamespace.sql", MigrationErrorCode.AssessmentMissingNamespace)]
        public void DataCompatibilityErrorExpected(string sourceDataScriptName, MigrationErrorCode expectedErrorCode)
        {
            var result = PerformTestMigration(sourceDataScriptName);
            AssertUpgradeFailed(result, expectedErrorCode);
        }
    }
}
