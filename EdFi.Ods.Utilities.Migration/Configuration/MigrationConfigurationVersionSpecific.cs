// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.IO;
using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.Configuration
{
    public abstract class MigrationConfigurationVersionSpecific
    {
        public abstract EdFiOdsVersion FromVersion { get; }
        public abstract EdFiOdsVersion ToVersion { get; }

        public virtual string MigrationScriptVersionSpecificDirectoryName { get; }

        public virtual string MigrationScriptFeatureVersionSpecificDirectoryName(EdFiOdsFeature feature)
        {
            return $"{MigrationScriptVersionSpecificDirectoryName}_{feature.SubTypeFolderName}";
        }

        protected virtual string DescriptorXmlVersionSpecificDirectoryName => ToVersion.ToString();

        public string BaseMigrationScriptFolderPath { get; set; }

        public string BaseDescriptorXmlDirectoryPath { get; set; }

        public string DatabaseConnectionString { get; set; }
        public int Timeout { get; set; }
        public bool BypassExtensionValidationCheck { get; set; }

        public string GetFullDescriptorXmlDirectoryPath()
        {
            return Path.Combine(BaseDescriptorXmlDirectoryPath, DescriptorXmlVersionSpecificDirectoryName);
        }
    }
}