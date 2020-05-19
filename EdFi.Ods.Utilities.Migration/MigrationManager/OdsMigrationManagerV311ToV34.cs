// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.MigrationManager
{
    public class OdsMigrationManagerV311ToV34 : OdsChainedUpgradeMigrationManager<MigrationConfigurationV311ToV34>
    {
        public OdsMigrationManagerV311ToV34(MigrationConfigurationV311ToV34 configuration, UpgradeVersionConfiguration upgradeVersionConfiguration) : base(configuration, upgradeVersionConfiguration)
        {
            AddUpgradeStep(EdFiOdsVersion.V311, EdFiOdsVersion.V33);
            AddUpgradeStep(EdFiOdsVersion.V33, EdFiOdsVersion.V34);
        }
    }
}
