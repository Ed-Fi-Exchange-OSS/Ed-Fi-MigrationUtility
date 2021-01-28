// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.MsSql.MigrationTests.v34_to_v50;
using NUnit.Framework;

namespace EdFi.Ods.Utilities.Migration.Tests.MsSql.MigrationTests.all_versions
{
    [TestFixture]
    public class SqlServerV34ToV50JournalTests : V34ToV50SqlServerMigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.FullRestoreBeforeEveryTest;
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V34;
        protected override EdFiOdsVersion ToVersion => EdFiOdsVersion.V50;
    }
}