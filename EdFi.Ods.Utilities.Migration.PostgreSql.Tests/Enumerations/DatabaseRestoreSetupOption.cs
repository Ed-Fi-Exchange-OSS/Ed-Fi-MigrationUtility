// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.PostgreSql.Tests.Enumerations
{
    public sealed class DatabaseRestoreSetupOption : Enumeration<DatabaseRestoreSetupOption>
    {
        public static DatabaseRestoreSetupOption FullRestoreBeforeEveryTest =
            new DatabaseRestoreSetupOption(1, "Full database restore before every test");
        public static DatabaseRestoreSetupOption EraseEdfiDataOnly = new DatabaseRestoreSetupOption(2, "Erase all EdFi data before every test");
        public static DatabaseRestoreSetupOption RestoreDuringFixtureSetupOnly =
            new DatabaseRestoreSetupOption(3, "Full restore during fixture setup only");
        public static DatabaseRestoreSetupOption None = new DatabaseRestoreSetupOption(4, "None");

        private DatabaseRestoreSetupOption(int value, string displayName)
            : base(value, displayName) { }
    }
}
