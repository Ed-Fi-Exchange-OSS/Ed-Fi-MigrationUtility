// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.MsSql.MigrationTests.v52_to_v53;
using NUnit.Framework;

namespace EdFi.Ods.Utilities.Migration.Tests.MsSql.MigrationTests.all_versions
{
    [TestFixture]
    public class SqlServerV52ToV53JournalTests : V52ToV53SqlServerMigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.FullRestoreBeforeEveryTest;
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V52;
        protected override EdFiOdsVersion ToVersion => EdFiOdsVersion.V53;
    }
}