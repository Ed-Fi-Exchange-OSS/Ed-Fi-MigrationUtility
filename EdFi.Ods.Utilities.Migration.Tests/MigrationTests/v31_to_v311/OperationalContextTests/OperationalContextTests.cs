// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Data.SqlClient;
using System.Linq;
using Dapper;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v3;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v31_to_v311.OperationalContextTests
{
    [TestFixture]
    public class OperationalContextTests : V31ToV311MigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption { get; } = DatabaseRestoreSetupOption.RestoreDuringFixtureSetupOnly;

        [OneTimeSetUp]
        public void Setup()
        {
            var migrationResult = PerformTestMigration("ExistingDescriptorData.sql");
            AssertUpgradeSucceeded(migrationResult);
        }

        [Test]
        public void DescriptorsOperationalContext()
        {
            using (var connection = new SqlConnection(ConnectionString))
            {
                connection.Open();
                var actualOperationalContextDescriptorUsageList = connection.Query(
                                                             $@"SELECT d.[Namespace], d.[CodeValue]
                        FROM [edfi].[Descriptor] d
                        INNER JOIN [interop].[OperationalContextDescriptorUsage] ocdu
                        ON d.[DescriptorId] = ocdu.[DescriptorId]")
                                                        .Select(x => new Descriptor
                                                                     {
                                                                         CodeValue = x.CodeValue,
                                                                         Namespace = x.Namespace,
                                                                     })
                                                        .ToList();

                var managedDescriptorsList = VendorManagedDescriptors.GetAllManagedDescriptors(ToVersion).ToList();

                actualOperationalContextDescriptorUsageList.ShouldAllBe(du => !managedDescriptorsList.Any(md => du.Namespace.Contains(md)));
                actualOperationalContextDescriptorUsageList.ShouldContain(du => du.Namespace == "uri://ed-fi.org/CompetencyLevelDescriptor");
                actualOperationalContextDescriptorUsageList.ShouldContain(du => du.Namespace == "uri://ed-fi.org/DiagnosisDescriptor");
            }
        }
    }
}
