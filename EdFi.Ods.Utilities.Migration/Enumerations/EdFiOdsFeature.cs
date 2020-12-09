// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

namespace EdFi.Ods.Utilities.Migration.Enumerations
{
    public sealed class EdFiOdsFeature : Enumeration<EdFiOdsFeature>
    {
        public static EdFiOdsFeature ChangeQueries = new EdFiOdsFeature(
            1,
            "Change Queries",
            "Changes",
            "EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.Changes",
            "EdFi.Ods.Standard.Artifacts.PgSql.Structure.Ods.Changes");

        public static EdFiOdsFeature RecordOwnership = new EdFiOdsFeature(
            2,
            "Record Ownership",
            "RecordOwnership",
            "EdFi.Ods.Standard.Artifacts.MsSql.Structure.Ods.RecordOwnership",
            "EdFi.Ods.Standard.Artifacts.PgSql.Structure.Ods.RecordOwnership");

        public EdFiOdsFeature(
            int value,
            string displayName,
            string subTypeFolderName,
            string subTypeJournalContainsExpressionMsSql,
            string subTypeJournalContainsExpressionPgSql)
            : base(value, displayName)
        {
            SubTypeFolderName = subTypeFolderName;
            SubTypeJournalContainsExpressionMsSql = subTypeJournalContainsExpressionMsSql;
            SubTypeJournalContainsExpressionPgSql = subTypeJournalContainsExpressionPgSql;
        }

        public string SubTypeFolderName { get; }
        public string SubTypeJournalContainsExpressionMsSql { get; }
        public string SubTypeJournalContainsExpressionPgSql { get; }
    }
}