// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using EdFi.Ods.Utilities.Migration.Configuration;

namespace EdFi.Ods.Utilities.Migration.MigrationManager
{
    public class OdsMigrationManagerV311ToV33 : OdsVersionSpecificMigrationManager<MigrationConfigurationV311ToV33>
    {
        public OdsMigrationManagerV311ToV33(MigrationConfigurationV311ToV33 configuration, UpgradeVersionConfiguration upgradeVersionConfiguration) : base(configuration, upgradeVersionConfiguration)
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
