// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.MigrationManager
{
    public class OdsMigrationManagerV24ToV31 : OdsChainedUpgradeMigrationManager<MigrationConfigurationV24ToV31>
    {
        public OdsMigrationManagerV24ToV31(MigrationConfigurationV24ToV31 configuration, UpgradeVersionConfiguration upgradeVersion) : base(configuration, upgradeVersion)
        {
            AddUpgradeStep(EdFiOdsVersion.V2UpTo24, EdFiOdsVersion.V25);
            AddUpgradeStep(EdFiOdsVersion.V25, EdFiOdsVersion.V31);
        }
    }
}
