// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Providers;

namespace EdFi.Ods.Utilities.Migration.MigrationManager
{
    public class OdsMigrationManagerV51ToV52 : OdsVersionSpecificMigrationManager<MigrationConfigurationV51ToV52>
    {
        public OdsMigrationManagerV51ToV52(MigrationConfigurationV51ToV52 configuration,
            UpgradeVersionConfiguration upgradeVersion,
            IUpgradeEngineBuilderProvider upgradeEngineBuilderProvider)
            : base(configuration, upgradeVersion, upgradeEngineBuilderProvider)
        {
        }

        protected override Dictionary<string, string> GetSqlSubstitutionVariables()
        {
            return new Dictionary<string, string>
            {
                {"BypassExtensionValidationCheck", Configuration.BypassExtensionValidationCheck.ToString()}
            };
        }
    }
}
