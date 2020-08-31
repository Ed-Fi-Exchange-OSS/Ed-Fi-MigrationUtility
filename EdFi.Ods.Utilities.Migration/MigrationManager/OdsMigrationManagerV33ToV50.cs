// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.MigrationManager
{
    public class OdsMigrationManagerV33ToV50 : OdsChainedUpgradeMigrationManager<MigrationConfigurationV33ToV50>
    {
        public OdsMigrationManagerV33ToV50(MigrationConfigurationV33ToV50 configuration, UpgradeVersionConfiguration upgradeVersion) : base(configuration, upgradeVersion)
        {
            AddUpgradeStep(EdFiOdsVersion.V33, EdFiOdsVersion.V34);
            AddUpgradeStep(EdFiOdsVersion.V34, EdFiOdsVersion.V50);
        }
    }
}