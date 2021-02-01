// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.MigrationManager
{
    public interface IOdsMigrationManagerResolver
    {
        List<OdsMigrationVersionRange> GetVersionRanges(EdFiOdsVersion fromVersion, EdFiOdsVersion toVersion);
        Type GetConfigurationType(EdFiOdsVersion fromVersion, EdFiOdsVersion toVersion);
        Type GetMigrationManagerType(EdFiOdsVersion fromVersion, EdFiOdsVersion toVersion);
        List<EdFiOdsVersion> GetAllUpgradableVersions(string engine);
        List<EdFiOdsVersion> GetSupportedUpgradeVersions(EdFiOdsVersion fromVersion, string engine);
        EdFiOdsVersion GetLatestSupportedUpgradeVersion(EdFiOdsVersion fromVersion, string engine);
        EdFiOdsVersion GetLatestSupportedUpgradeVersion(string engine);
        bool VersionCanBeUpgraded(EdFiOdsVersion version, string engine);
    }
}