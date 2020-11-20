// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Providers;
using EdFi.Ods.Utilities.Migration.VersionLevel;

namespace EdFi.Ods.Utilities.Migration.MigrationManager
{
    public class OdsMigrationManagerV31ToV311 : OdsVersionSpecificMigrationManager<MigrationConfigurationV31ToV311>
    {
        public OdsMigrationManagerV31ToV311(MigrationConfigurationV31ToV311 configuration,
            UpgradeVersionConfiguration upgradeVersionConfiguration,
            IUpgradeEngineBuilderProvider upgradeEngineBuilderProvider)
            : base(configuration, upgradeVersionConfiguration, upgradeEngineBuilderProvider)
        {
        }

        protected override Dictionary<string, string> GetSqlSubstitutionVariables()
        {
            var versionLevel = new EdFiOdsVersionLevel(EdFiOdsVersion.V311);
            return new Dictionary<string, string>
            {
                {"BypassExtensionValidationCheck", Configuration.BypassExtensionValidationCheck.ToString()},
                {"EdFiOdsStructureVersionLevel", versionLevel.GetStructureVersionLevel().ToString()},
                {"EdFiOdsDataVersionLevel", versionLevel.GetDataVersionLevel().ToString()}
            };
        }
    }
}
