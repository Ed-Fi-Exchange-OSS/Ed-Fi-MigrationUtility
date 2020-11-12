// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.MigrationManager;

namespace EdFi.Ods.Utilities.Migration.Factories
{
    public interface IOdsMigrationManagerFactory
    {
        OdsMigrationManager Create(Options options, UpgradeVersionConfiguration upgradeVersionConfiguration);
    }
}