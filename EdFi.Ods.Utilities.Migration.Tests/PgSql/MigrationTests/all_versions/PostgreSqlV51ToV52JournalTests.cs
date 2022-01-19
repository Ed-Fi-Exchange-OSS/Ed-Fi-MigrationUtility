// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.PgSql.MigrationTests.v51_to_v52;
using NUnit.Framework;
using System.Collections.Generic;

namespace EdFi.Ods.Utilities.Migration.Tests.PgSql.MigrationTests.all_versions
{
    [TestFixture]
    public class PostgreSqlV51ToV52JournalTests : V51ToV52PostgreSqlMigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.FullRestoreBeforeEveryTest;
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V51;
        protected override EdFiOdsVersion ToVersion => EdFiOdsVersion.V52;
        protected override List<EdFiOdsFeature> FeaturesBeforeUpgrade =>  new List<EdFiOdsFeature> { EdFiOdsFeature.ChangeQueries };
    }
}