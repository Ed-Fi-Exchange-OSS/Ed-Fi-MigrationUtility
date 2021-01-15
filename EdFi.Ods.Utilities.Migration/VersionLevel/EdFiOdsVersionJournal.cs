// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.VersionLevel
{
    /* 
        This class will be used to update [dbo].[DeploymentJournal]
        It is also used by the EdFiOdsVersionJournalConfiguration integration tests
        [dbo].[DeployJournal] Contains full journal entries for every script that has been previously run
        Note:
        The scripts are currently copied from the main Ed-Fi-ODS build into this library rather than referencing them directly.
          TO UPDATE:
           1) Copy the latest Ed-Fi-ODS version-specific scripts directly into to this project (or update package, if available).
                IMPORTANT: This step does NOT affect the upgrade migration directly.
                Make sure the folder paths match exactly with the folder paths of the ODS/API to get the same journal entry names.
                These scripts are used to build the VersionLevel configuration (based on file name only).  They are only executed directly by integration tests
           2) Bring the migration utility scripts up to date
                Either drop the new scripts into the migration utility directly, or ensure that equivalent code is executed to bring the database up to date
    */
    public class EdFiOdsVersionJournal
    {
        public string BaseVersionScriptPath { get; }
        public const string DefaultRelativeBaseScriptPath = "DatabaseReference";
        public const string MsSqlSubPath = "EdFi.Ods.Standard\\Artifacts\\MsSql";
        public const string PgSqlSubPath = "EdFi.Ods.Standard\\Artifacts\\PgSql";
       
        public EdFiOdsVersionJournal(EdFiOdsVersion version)
        {
            BaseVersionScriptPath = GetDefaultVersionScriptPath(version);
            RaiseErrorIfScriptsNotFoundInDirectory(BaseVersionScriptPath);
        }

        private static string GetDefaultVersionScriptPath(EdFiOdsVersion version)
        {
            return Path.GetFullPath(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, DefaultRelativeBaseScriptPath, version.ApiVersion.ToString()));
        }

        private static void RaiseErrorIfScriptsNotFoundInDirectory(string fullPath)
        {
            if (!Directory.Exists(fullPath))
            {
                throw new DirectoryNotFoundException($"Cannot find directory: {fullPath}");
            }

            if (!Directory.GetFiles(fullPath, "*.sql", SearchOption.AllDirectories).Any())
            {
                throw new FileNotFoundException($"Directory {fullPath} has no sql scripts");
            }
        }

        public HashSet<DatabaseScriptJournalEntry> GetJournalEntries(string databaseEngine = "MsSql")
        {
            return GetJournalEntries(true, databaseEngine);
        }

        public HashSet<DatabaseScriptJournalEntry> GetJournalEntriesWithoutFeatures()
        {
            return GetJournalEntries(false, "MsSql");
        }

        private HashSet<DatabaseScriptJournalEntry> GetJournalEntries(bool includeFeatures, string databaseEngine)
        {
            var scriptPath=Path.GetFullPath(Path.Combine(BaseVersionScriptPath, databaseEngine.Equals("MsSql", StringComparison.InvariantCultureIgnoreCase) ? MsSqlSubPath: PgSqlSubPath));
            var allScripts = Directory.GetFiles(scriptPath, "*.sql", SearchOption.AllDirectories)
                .OrderBy(f => f);

            int relativePathStartIndex = BaseVersionScriptPath.Length;

            var databaseJournalEntries = allScripts.Select(s =>
                DatabaseScriptJournalEntry.FromRelativeFilePath(s.Substring(relativePathStartIndex)));

            return includeFeatures ? databaseJournalEntries.ToHashSet() : databaseJournalEntries.Where(f => string.IsNullOrEmpty(f.Feature)).ToHashSet();
        }
    }
}