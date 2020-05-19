// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.Utilities.Migration.Configuration;

namespace EdFi.Ods.Utilities.Migration.MigrationManager
{
    public interface IOdsMigrationManager
    {
        void ValidateConfigurationState();
        OdsUpgradeResult PerformUpgrade();
        OdsUpgradeResult RunDatabaseCompatibilityCheck();
        UpgradeVersionConfiguration UpgradeVersionConfiguration { get; }
    }
}