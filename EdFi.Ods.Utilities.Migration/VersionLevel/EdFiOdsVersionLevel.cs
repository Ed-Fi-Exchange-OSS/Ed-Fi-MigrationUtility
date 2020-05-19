// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.VersionLevel
{
    /* 
        This class will be used to update [dbo].[VersionLevel]
        It is also used by the VersionLevelConfiguration integration tests
        [dbo].[VersionLevel] DATA:  Contains the latest data script number that the migration utility has been brought up to date with 
        [dbo].[VersionLevel] STRUCTURE: Contains the latest structure script number that the migration utility has been brought up to date with
        Note:
        The scripts from are currently copied from the main Ed-Fi-ODS build into this library rather than referencing them directly.
        This is done for the following reasons: 
            * Under current conventions, The contents of Ed-Fi-ODS repo's Database folder contain only the latest (branch-specific) ODS
            * As of 7/18/2018, a version-specific packages for these scripts are not yet available.
          TO UPDATE:
           1) Copy the latest Ed-Fi-ODS version-specific scripts directly into to this project (or update package, if available).
                IMPORTANT: This step does NOT affect the upgrade migration directly.
                These scripts are used to build the VersionLevel configuration (based on file name only).  They are only executed directly by integration tests
           2) Bring the migration utility scripts up to date
                Either drop the new scripts into the migration utility directly, or ensure that equivalent code is executed to bring the database up to date
    */

    public class EdFiOdsVersionLevel
    {
        public string DataScriptPath { get; set; }
        public string StructureScriptPath { get; set; }
        public static string DefaultRelativeBaseScriptPath => "DatabaseReference";

        public EdFiOdsVersionLevel(EdFiOdsVersion version)
        {
            DataScriptPath = GetDefaultDataScriptPath(version);
            RaiseErrorIfScriptsNotFoundInDirectory(DataScriptPath);

            StructureScriptPath = GetDefaultStructureScriptPath(version);
            RaiseErrorIfScriptsNotFoundInDirectory(StructureScriptPath);
        }

        public static string GetDefaultStructureScriptPath(EdFiOdsVersion version)
        {
            return Path.GetFullPath(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, DefaultRelativeBaseScriptPath, version.ApiVersion.ToString(), @"Structure\EdFi"));
        }

        public static string GetDefaultDataScriptPath(EdFiOdsVersion version)
        {
            return Path.GetFullPath(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, DefaultRelativeBaseScriptPath, version.ApiVersion.ToString(), @"Data\EdFi"));
        }

        public static string GetDefaultStructureFeatureScriptPath(EdFiOdsVersion version, EdFiOdsFeature feature)
        {
            return Path.Combine(GetDefaultStructureScriptPath(version), feature.SubTypeFolderName);
        }

        public static string GetDefaultDataFeatureScriptPath(EdFiOdsVersion version, EdFiOdsFeature feature)
        {
            return Path.Combine(GetDefaultDataScriptPath(version), feature.SubTypeFolderName);
        }

        public EdFiOdsVersionLevel(string dataScriptPathRelative, string structureScriptPathRelative)
        {
            DataScriptPath = Path.GetFullPath(dataScriptPathRelative);
            RaiseErrorIfScriptsNotFoundInDirectory(DataScriptPath);

            StructureScriptPath = Path.GetFullPath(structureScriptPathRelative);
            RaiseErrorIfScriptsNotFoundInDirectory(StructureScriptPath);
        }

        private static void RaiseErrorIfScriptsNotFoundInDirectory(string fullPath)
        {
            if (!Directory.Exists(fullPath))
            {
                throw new DirectoryNotFoundException($"Cannot find directory: {fullPath}");
            }

            if (!Directory.GetFiles(fullPath, "*.sql").Any())
            {
                throw new FileNotFoundException($"Directory {fullPath} has no sql scripts");
            }
        }

        public int GetDataVersionLevel()
        {
            return GetLastScriptNumber(DataScriptPath);
        }

        public int GetStructureVersionLevel()
        {
            return GetLastScriptNumber(StructureScriptPath);
        }

        private static int GetLastScriptNumber(string fullPath)
        {
            var allScriptNames = Directory.GetFiles(fullPath, "*.sql")
                .Select(Path.GetFileName)
                .ToList();

            var lastScriptName = allScriptNames.OrderBy(x => x).Last();
            return ExtractScriptNumberFromFileName(lastScriptName);
        }

        public static int ExtractScriptNumberFromFileName(string fileName)
        {
            var regexMatch = Regex.Match(fileName, @"^(\d{4})-.+\.sql");
            if (!regexMatch.Success)
            {
                throw new InvalidOperationException($"Script name {fileName} is not named in the expected format: ####-*.sql.  Ensure that the correct scripts have been referenced, and that the Ed-Fi-ODS build conventions have not changed");
            }
            return int.Parse(regexMatch.Groups[1].Value);
        }
    }
}