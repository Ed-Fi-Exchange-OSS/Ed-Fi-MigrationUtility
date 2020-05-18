// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.MigrationManager
{
    public class OdsMigrationManagerV31ToV33 : OdsChainedUpgradeMigrationManager<MigrationConfigurationV31ToV33>
    {
        public OdsMigrationManagerV31ToV33(MigrationConfigurationV31ToV33 configuration, UpgradeVersionConfiguration upgradeVersion) : base(configuration, upgradeVersion)
        {
            AddUpgradeStep(EdFiOdsVersion.V31, EdFiOdsVersion.V311);
            AddUpgradeStep(EdFiOdsVersion.V311, EdFiOdsVersion.V33);
        }
    }
}
