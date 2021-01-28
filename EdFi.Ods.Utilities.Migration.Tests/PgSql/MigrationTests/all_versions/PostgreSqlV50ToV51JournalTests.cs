// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.PgSql.MigrationTests.v50_to_v51;
using NUnit.Framework;

namespace EdFi.Ods.Utilities.Migration.Tests.PgSql.MigrationTests.all_versions
{
    [TestFixture]
    public class PostgreSqlV50ToV51JournalTests : V50ToV51PostgreSqlMigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.FullRestoreBeforeEveryTest;
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V50;
        protected override EdFiOdsVersion ToVersion => EdFiOdsVersion.V51;
    }
}