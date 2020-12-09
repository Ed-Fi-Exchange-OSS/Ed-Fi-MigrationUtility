// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.Configuration
{
    public class MigrationConfigurationV34ToV50 : MigrationConfigurationVersionSpecific
    {
        public override EdFiOdsVersion FromVersion => EdFiOdsVersion.V34;
        public override EdFiOdsVersion ToVersion => EdFiOdsVersion.V50;

        public override string MigrationScriptVersionSpecificDirectoryName => "v34_to_v50";

        public override List<string> SupportedEngines => new List<string> {DatabaseEngine.SQLServer};
    }
}