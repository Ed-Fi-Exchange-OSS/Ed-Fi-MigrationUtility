// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Latest
{
    public class GrandBend_v34Tov50_RecordOwnershipTests : GrandBendTests
    {
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V34;
        protected override EdFiOdsVersion ToVersion => EdFiOdsVersion.V50;

        protected override List<EdFiOdsFeature> FeaturesBeforeUpgrade => new List<EdFiOdsFeature> { EdFiOdsFeature.RecordOwnership };
    }
}
