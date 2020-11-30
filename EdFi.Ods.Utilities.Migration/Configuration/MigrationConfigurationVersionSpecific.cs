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

        public string Engine { get; set; }
        public virtual List<string> SupportedEngines { get; set; }

        public string DatabaseConnectionString { get; set; }
        public int Timeout { get; set; }
        public bool BypassExtensionValidationCheck { get; set; }

        public string BaseMigrationScriptFolderPath { get; set; }
        public virtual string MigrationScriptVersionSpecificDirectoryName { get; }

        public virtual string MigrationScriptFeatureVersionSpecificDirectoryName(EdFiOdsFeature feature) =>
            $"{MigrationScriptVersionSpecificDirectoryName}_{feature.SubTypeFolderName}";

        public string BaseDescriptorXmlDirectoryPath { get; set; }
        protected virtual string DescriptorXmlVersionSpecificDirectoryName => ToVersion.ToString();

        public string GetFullDescriptorXmlDirectoryPath() =>
            Path.Combine(BaseDescriptorXmlDirectoryPath, DescriptorXmlVersionSpecificDirectoryName);
    }
}