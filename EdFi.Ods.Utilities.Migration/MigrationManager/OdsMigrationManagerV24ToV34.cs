// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.MigrationManager
{
    public class OdsMigrationManagerV24ToV34 : OdsChainedUpgradeMigrationManager<MigrationConfigurationV24ToV34>
    {
        public OdsMigrationManagerV24ToV34(MigrationConfigurationV24ToV34 configuration, UpgradeVersionConfiguration upgradeVersion) : base(configuration, upgradeVersion)
        {
            AddUpgradeStep(EdFiOdsVersion.V2UpTo24, EdFiOdsVersion.V25);
            AddUpgradeStep(EdFiOdsVersion.V25, EdFiOdsVersion.V31);
            AddUpgradeStep(EdFiOdsVersion.V31, EdFiOdsVersion.V311);
            AddUpgradeStep(EdFiOdsVersion.V311, EdFiOdsVersion.V33);
            AddUpgradeStep(EdFiOdsVersion.V33, EdFiOdsVersion.V34);
        }
    }
}
