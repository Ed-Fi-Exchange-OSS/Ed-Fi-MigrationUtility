// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.Linq;
using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.Tests.MsSql.MigrationTests
{
    public static class VendorManagedDescriptors
    {
        static VendorManagedDescriptors()
        {
            //Vendor managed descriptor list for v31 source: ODS-2375 (9/25/2018)
            var v31ManagedDescriptors = new HashSet<string>
            {
                "AccommodationDescriptor",
                "AssessmentPeriodDescriptor",
                "AssessmentReportingMethodDescriptor",
                "PerformanceLevelDescriptor"
            };

            _vendorManagedDescriptors.Add(EdFiOdsVersion.V31, v31ManagedDescriptors);

            //Vendor managed descriptor list for v311 source: ODS-2775 (03/11/2019)
            var v311ManagedDescriptors = new HashSet<string>
            {
                "AccommodationDescriptor",
                "AssessmentPeriodDescriptor",
                "AssessmentReportingMethodDescriptor",
                "PerformanceLevelDescriptor"
            };

            _vendorManagedDescriptors.Add(EdFiOdsVersion.V311, v311ManagedDescriptors);
        }

        private static Dictionary<EdFiOdsVersion, HashSet<string>> _vendorManagedDescriptors { get; } =
            new Dictionary<EdFiOdsVersion, HashSet<string>>();

        public static bool ContainsTable(EdFiOdsVersion version, string descriptorTableName)
        {
            return _vendorManagedDescriptors[version].Contains(descriptorTableName);
        }

        public static IEnumerable<string> GetAllManagedDescriptors(EdFiOdsVersion version)
        {
            return _vendorManagedDescriptors[version].AsEnumerable();
        }
    }
}
