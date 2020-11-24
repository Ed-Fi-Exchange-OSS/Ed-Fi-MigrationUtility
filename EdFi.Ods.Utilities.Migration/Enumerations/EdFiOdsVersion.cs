// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Linq;
using System.Text.RegularExpressions;

namespace EdFi.Ods.Utilities.Migration.Enumerations
{
    public sealed class EdFiOdsVersion : Enumeration<EdFiOdsVersion>
    {
        public static EdFiOdsVersion V51 = new EdFiOdsVersion(510, "5.1", "EdFiOdsMigrationScriptLogV510", new Version(5, 1));
        public static EdFiOdsVersion V50 = new EdFiOdsVersion(500, "5.0", "EdFiOdsMigrationScriptLogV500", new Version(5, 0));
        public static EdFiOdsVersion V34 = new EdFiOdsVersion(340, "3.4", "EdFiOdsMigrationScriptLogV340", new Version(3, 4));
        public static EdFiOdsVersion V33 = new EdFiOdsVersion(330, "3.3", "EdFiOdsMigrationScriptLogV330", new Version(3, 3));
        public static EdFiOdsVersion V32 = new EdFiOdsVersion(320, "3.2", "EdFiOdsMigrationScriptLogV320", new Version(3, 2));
        public static EdFiOdsVersion V311 = new EdFiOdsVersion(311, "3.1.1", "EdFiOdsMigrationScriptLogV311", new Version(3, 1, 1));
        public static EdFiOdsVersion V31 = new EdFiOdsVersion(310, "3.1", "EdFiOdsMigrationScriptLogV310", new Version(3, 1));
        public static EdFiOdsVersion V30 = new EdFiOdsVersion(300, "3.0", null, new Version(3, 0));
        public static EdFiOdsVersion V25 = new EdFiOdsVersion(250, "2.5", "EdFiOdsMigrationScriptLogV250", new Version(2, 5));
        public static EdFiOdsVersion V2UpTo24 = new EdFiOdsVersion(240, "2.4", null, new Version(2, 4));
        public static EdFiOdsVersion V1 = new EdFiOdsVersion(100, "1.x", null, new Version(1, 0));

        /*
          IMPORTANT/CAUTION:

          This is the table name that will be used to store a log of scripts that were
          executed to upgrade to this ODS version.
         
          If this table name is to be changed -after- the associated version release, note that the
          upgrade utility will have no way to tell which scripts have already been executed on this
          ODS version if launched again.  Proceed with caution, and consider creating a migration
          script for this table itself if a name or convention change is desired in the middle 
          of a version release
         
          This table name should be unique for each version.  Reasons for this are as follows
               * Opens up the ability to have certain scripts be reusable/global for all version upgrades,
                 such as creation of common stored procs, etc
               * Prevents a scenario where a script will not execute if someone used the migration tool for
                 a past version that had a similar script with the same name that was deleted
               * Permits us to change this journaling convention between version upgrades as desired
         */
        public string UpgradeJournalTableName { get; }
        public readonly Version ApiVersion;
        public int Major => ApiVersion.Major;

        public int Minor => ApiVersion.Minor;

        public int Build => ApiVersion.Build;

        public EdFiOdsVersion(int value, string displayName, string upgradeJournalTableName, Version apiVersion)
            : base(value, displayName)
        {
            ApiVersion = apiVersion;
            UpgradeJournalTableName = upgradeJournalTableName;
        }

        public bool IsVersion(string versionString)
        {
            Version parsedVersion;
            var isValid = (Version.TryParse(versionString, out parsedVersion) && VersionFormatIsValid(versionString));

            if (!isValid)
            {
                return false;
            }

            return parsedVersion.Major == Major
                   && parsedVersion.Minor == Minor
                   && Math.Max(Build, 0) == Math.Max(parsedVersion.Build, 0);
        }

        public static EdFiOdsVersion ParseString(string versionString)
        {
            versionString = versionString.Trim();
            return GetAll().FirstOrDefault
                (x => x.IsVersion(versionString));
        }

        public static bool VersionFormatIsValid(string versionString)
        {
            var majorMinorWithOptionalBuildFormat = new Regex("^\\d+\\.\\d+(.\\d+)?$");
            return majorMinorWithOptionalBuildFormat.IsMatch(versionString);
        }
    }
}
