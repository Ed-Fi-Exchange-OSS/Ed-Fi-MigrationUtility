// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using Dapper;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Enumerations;
using EdFi.Ods.Utilities.Migration.Tests.Models.v3;
using EdFi.Ods.Utilities.Migration.Tests.MsSql.MigrationTests.v2_to_v3._Shared;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MsSql.MigrationTests.v2_to_v3.DescriptorNamespaceTests
{
    [TestFixture]
    public class DescriptorNamespaceTests : V2ToV3SqlServerMigrationTest
    {
        protected override DatabaseRestoreSetupOption DatabaseRestoreSetupOption => DatabaseRestoreSetupOption.RestoreDuringFixtureSetupOnly;
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V25;
        private static readonly DescriptorNamespaceTestCase[] AllTestCases = DescriptorNamespaceTestCase.GetAll();
        private const string TestOrganization = "DescriptorNamespaceTests.org";

        [OneTimeSetUp]
        public void TestFixtureSetup()
        {
            BuildTestCasesWithConflictingNamespaces();
            var upgradeResult = PerformTestMigration(namespacePrefix: "uri://" + TestOrganization);
            AssertUpgradeSucceeded(upgradeResult);
        }

        private void BuildTestCasesWithConflictingNamespaces()
        {
            const string oldEdfiAcademicSubjectDescriptorNamespaceFormat1 = "http://www.ed-fi.org/Descriptor/AcademicSubjectDescriptor.xml";
            const string oldEdfiAcademicSubjectDescriptorNamespaceFormat2 = "http://ed-fi.org/Descriptor/AcademicSubjectDescriptor.xml";
            const string oldUserAcademicSubjectDescriptorNamespace = "http://" + TestOrganization + "/Descriptor/AcademicSubjectDescriptor.xml";
            const string newEdfiAcademicSubjectDescriptorNamespace = "uri://ed-fi.org/AcademicSubjectDescriptor";
            const string newUserAcademicSubjectDescriptorNamespace = "uri://" + TestOrganization + "/AcademicSubjectDescriptor";

            InsertAcademicSubjectDescriptors(DescriptorNamespaceTestCase.UserNamespaceOnly, newUserAcademicSubjectDescriptorNamespace);

            DescriptorNamespaceTestCase.UserNamespaceOnly.ExpectedMigrationResults = new List<Descriptor>
                                                                                     {
                                                                                         new Descriptor
                                                                                         {
                                                                                             Namespace = newUserAcademicSubjectDescriptorNamespace,
                                                                                             CodeValue = DescriptorNamespaceTestCase
                                                                                                        .UserNamespaceOnly.V20CodeValue
                                                                                         },
                                                                                         new Descriptor
                                                                                         {
                                                                                             Namespace = newEdfiAcademicSubjectDescriptorNamespace,
                                                                                             CodeValue = DescriptorNamespaceTestCase
                                                                                                        .UserNamespaceOnly.V20CodeValue
                                                                                         }
                                                                                     };

            InsertAcademicSubjectDescriptors(
                DescriptorNamespaceTestCase.AllOldNamespaceFormats, oldEdfiAcademicSubjectDescriptorNamespaceFormat1,
                oldEdfiAcademicSubjectDescriptorNamespaceFormat2, oldUserAcademicSubjectDescriptorNamespace);

            DescriptorNamespaceTestCase.AllOldNamespaceFormats.ExpectedMigrationResults = new List<Descriptor>
                                                                                          {
                                                                                              new Descriptor
                                                                                              {
                                                                                                  Namespace =
                                                                                                      newEdfiAcademicSubjectDescriptorNamespace,
                                                                                                  CodeValue = DescriptorNamespaceTestCase
                                                                                                             .AllOldNamespaceFormats.V20CodeValue
                                                                                              },
                                                                                              new Descriptor
                                                                                              {
                                                                                                  Namespace =
                                                                                                      newEdfiAcademicSubjectDescriptorNamespace,
                                                                                                  CodeValue = DescriptorNamespaceTestCase
                                                                                                             .AllOldNamespaceFormats.V20CodeValue +
                                                                                                              "-2"
                                                                                              },
                                                                                              new Descriptor
                                                                                              {
                                                                                                  Namespace =
                                                                                                      newUserAcademicSubjectDescriptorNamespace,
                                                                                                  CodeValue = DescriptorNamespaceTestCase
                                                                                                             .AllOldNamespaceFormats.V20CodeValue
                                                                                              }
                                                                                          };

            InsertAcademicSubjectDescriptors(
                DescriptorNamespaceTestCase.OldAndNewEdfiNamespace, oldEdfiAcademicSubjectDescriptorNamespaceFormat1,
                newEdfiAcademicSubjectDescriptorNamespace);

            DescriptorNamespaceTestCase.OldAndNewEdfiNamespace.ExpectedMigrationResults = new List<Descriptor>
                                                                                          {
                                                                                              new Descriptor
                                                                                              {
                                                                                                  Namespace =
                                                                                                      newEdfiAcademicSubjectDescriptorNamespace,
                                                                                                  CodeValue = DescriptorNamespaceTestCase
                                                                                                             .OldAndNewEdfiNamespace.V20CodeValue
                                                                                              },
                                                                                              new Descriptor
                                                                                              {
                                                                                                  Namespace =
                                                                                                      newEdfiAcademicSubjectDescriptorNamespace,
                                                                                                  CodeValue = DescriptorNamespaceTestCase
                                                                                                             .OldAndNewEdfiNamespace.V20CodeValue +
                                                                                                              "-2"
                                                                                              }
                                                                                          };

            InsertAcademicSubjectDescriptors(
                DescriptorNamespaceTestCase.MalformedUserAndEdfiNamespace, "malformed ed-fi.org namespace",
                "malformed " + TestOrganization + " namespace");

            DescriptorNamespaceTestCase.MalformedUserAndEdfiNamespace.ExpectedMigrationResults = new List<Descriptor>
                                                                                                 {
                                                                                                     new Descriptor
                                                                                                     {
                                                                                                         Namespace =
                                                                                                             newEdfiAcademicSubjectDescriptorNamespace,
                                                                                                         CodeValue = DescriptorNamespaceTestCase
                                                                                                                    .MalformedUserAndEdfiNamespace
                                                                                                                    .V20CodeValue
                                                                                                     },
                                                                                                     new Descriptor
                                                                                                     {
                                                                                                         Namespace =
                                                                                                             newUserAcademicSubjectDescriptorNamespace,
                                                                                                         CodeValue = DescriptorNamespaceTestCase
                                                                                                                    .MalformedUserAndEdfiNamespace
                                                                                                                    .V20CodeValue
                                                                                                     }
                                                                                                 };

            InsertAcademicSubjectDescriptors(
                DescriptorNamespaceTestCase.BothOldEdfiNamespaces, oldEdfiAcademicSubjectDescriptorNamespaceFormat1,
                oldEdfiAcademicSubjectDescriptorNamespaceFormat2);

            DescriptorNamespaceTestCase.BothOldEdfiNamespaces.ExpectedMigrationResults = new List<Descriptor>
                                                                                         {
                                                                                             new Descriptor
                                                                                             {
                                                                                                 Namespace =
                                                                                                     newEdfiAcademicSubjectDescriptorNamespace,
                                                                                                 CodeValue = DescriptorNamespaceTestCase
                                                                                                            .BothOldEdfiNamespaces.V20CodeValue
                                                                                             },
                                                                                             new Descriptor
                                                                                             {
                                                                                                 Namespace =
                                                                                                     newEdfiAcademicSubjectDescriptorNamespace,
                                                                                                 CodeValue = DescriptorNamespaceTestCase
                                                                                                            .BothOldEdfiNamespaces.V20CodeValue + "-2"
                                                                                             }
                                                                                         };

            InsertAcademicSubjectDescriptors(DescriptorNamespaceTestCase.NewEdfiNamespaceOnly, oldEdfiAcademicSubjectDescriptorNamespaceFormat1);

            DescriptorNamespaceTestCase.NewEdfiNamespaceOnly.ExpectedMigrationResults = new List<Descriptor>
                                                                                        {
                                                                                            new Descriptor
                                                                                            {
                                                                                                Namespace = newEdfiAcademicSubjectDescriptorNamespace,
                                                                                                CodeValue = DescriptorNamespaceTestCase
                                                                                                           .NewEdfiNamespaceOnly.V20CodeValue
                                                                                            }
                                                                                        };

            InsertAcademicSubjectDescriptors(
                DescriptorNamespaceTestCase.AllValidCombinations
              , oldEdfiAcademicSubjectDescriptorNamespaceFormat1
              , oldEdfiAcademicSubjectDescriptorNamespaceFormat2
              , "ed-fi.org"
              , newEdfiAcademicSubjectDescriptorNamespace
              , oldUserAcademicSubjectDescriptorNamespace
              , newUserAcademicSubjectDescriptorNamespace
              , TestOrganization);

            DescriptorNamespaceTestCase.AllValidCombinations.ExpectedMigrationResults = new List<Descriptor>
                                                                                        {
                                                                                            new Descriptor
                                                                                            {
                                                                                                Namespace = newEdfiAcademicSubjectDescriptorNamespace,
                                                                                                CodeValue = DescriptorNamespaceTestCase
                                                                                                           .AllValidCombinations.V20CodeValue
                                                                                            },
                                                                                            new Descriptor
                                                                                            {
                                                                                                Namespace = newEdfiAcademicSubjectDescriptorNamespace,
                                                                                                CodeValue = DescriptorNamespaceTestCase
                                                                                                           .AllValidCombinations.V20CodeValue + "-2"
                                                                                            },
                                                                                            new Descriptor
                                                                                            {
                                                                                                Namespace = newEdfiAcademicSubjectDescriptorNamespace,
                                                                                                CodeValue = DescriptorNamespaceTestCase
                                                                                                           .AllValidCombinations.V20CodeValue + "-3"
                                                                                            },
                                                                                            new Descriptor
                                                                                            {
                                                                                                Namespace = newEdfiAcademicSubjectDescriptorNamespace,
                                                                                                CodeValue = DescriptorNamespaceTestCase
                                                                                                           .AllValidCombinations.V20CodeValue + "-4"
                                                                                            },
                                                                                            new Descriptor
                                                                                            {
                                                                                                Namespace = newUserAcademicSubjectDescriptorNamespace,
                                                                                                CodeValue = DescriptorNamespaceTestCase
                                                                                                           .AllValidCombinations.V20CodeValue
                                                                                            },
                                                                                            new Descriptor
                                                                                            {
                                                                                                Namespace = newUserAcademicSubjectDescriptorNamespace,
                                                                                                CodeValue = DescriptorNamespaceTestCase
                                                                                                           .AllValidCombinations.V20CodeValue + "-2"
                                                                                            },
                                                                                            new Descriptor
                                                                                            {
                                                                                                Namespace = newUserAcademicSubjectDescriptorNamespace,
                                                                                                CodeValue = DescriptorNamespaceTestCase
                                                                                                           .AllValidCombinations.V20CodeValue + "-3"
                                                                                            }
                                                                                        };
        }

        private void InsertAcademicSubjectDescriptors(DescriptorNamespaceTestCase testCase, params string[] namespaces)
        {
            foreach (var ns in namespaces)
            {
                var parameters = new DynamicParameters();
                parameters.Add("@Namespace", ns, DbType.String, ParameterDirection.Input);
                parameters.Add("@CodeValue", testCase.V20CodeValue, DbType.String, ParameterDirection.Input);
                parameters.Add("@Description", $"Test Case #{testCase.Value}: {testCase.DisplayName}", DbType.String, ParameterDirection.Input);
                parameters.Add("@ShortDescription", testCase.V20CodeValue, DbType.String, ParameterDirection.Input);

                InsertTestRecords("InsertAcademicSubjectDescriptor.sql", parameters);
            }
        }

        public class DescriptorNamespaceTestCase : Enumeration<DescriptorNamespaceTestCase>
        {
            private static Descriptor[] _edfiAcademicSubjectDescriptorsFromXml;

            public static readonly DescriptorNamespaceTestCase UserNamespaceOnly = new DescriptorNamespaceTestCase(
                0, "User Namespace Only", GetValidEdfiAcademicSubjectDescriptorFromXml(0).CodeValue);
            public static readonly DescriptorNamespaceTestCase AllOldNamespaceFormats = new DescriptorNamespaceTestCase(
                1, "All Old Namespace Formats", GetValidEdfiAcademicSubjectDescriptorFromXml(1).CodeValue);
            public static readonly DescriptorNamespaceTestCase OldAndNewEdfiNamespace = new DescriptorNamespaceTestCase(
                2, "Old and New Ed-Fi Namespace", GetValidEdfiAcademicSubjectDescriptorFromXml(2).CodeValue);
            public static readonly DescriptorNamespaceTestCase MalformedUserAndEdfiNamespace = new DescriptorNamespaceTestCase(
                3, "Malformed user and Ed-Fi namespace", GetValidEdfiAcademicSubjectDescriptorFromXml(3).CodeValue);
            public static readonly DescriptorNamespaceTestCase BothOldEdfiNamespaces = new DescriptorNamespaceTestCase(
                4, "Both Old Ed-fi Namespaces", GetValidEdfiAcademicSubjectDescriptorFromXml(4).CodeValue);
            public static readonly DescriptorNamespaceTestCase NewEdfiNamespaceOnly = new DescriptorNamespaceTestCase(
                5, "New Ed-fi Namespace Only", GetValidEdfiAcademicSubjectDescriptorFromXml(5).CodeValue);
            public static readonly DescriptorNamespaceTestCase AllValidCombinations = new DescriptorNamespaceTestCase(
                6, "All Valid Combinations", GetValidEdfiAcademicSubjectDescriptorFromXml(6).CodeValue);

            private DescriptorNamespaceTestCase(int value, string displayName, string v20CodeValue)
                : base(value, displayName)
            {
                V20CodeValue = v20CodeValue;
            }

            public string V20CodeValue { get; }

            public List<Descriptor> ExpectedMigrationResults { get; set; }

            private static Descriptor GetValidEdfiAcademicSubjectDescriptorFromXml(int id)
            {
                if (_edfiAcademicSubjectDescriptorsFromXml == null)
                {
                    var importer = new DescriptorXmlImporter(V2ToV3MigrationConstants.EdFiXmlImportNamespace);

                    _edfiAcademicSubjectDescriptorsFromXml =
                        importer.GetDescriptorsFromXml("AcademicSubjectDescriptor.xml", "AcademicSubjectDescriptor").ToArray();
                }

                return _edfiAcademicSubjectDescriptorsFromXml[id];
            }
        }

        private async Task<IEnumerable<Descriptor>> GetAcademicSubjectDescriptors()
        {
            using (var connection = new SqlConnection(ConnectionString))
            {
                await connection.OpenAsync();

                return await 
                    connection.QueryAsync<Descriptor>(
                                   @"
                    SELECT d.CodeValue, d.Namespace
                    FROM edfi.Descriptor d
                    INNER JOIN edfi.AcademicSubjectDescriptor a
                    ON d.DescriptorId = a.AcademicSubjectDescriptorId");
            }
        }

        [Test]
        [TestCaseSource(nameof(AllTestCases))]
        public async Task ShouldImportCorrectNamespaces(DescriptorNamespaceTestCase testCase)
        {
            string.IsNullOrEmpty(testCase.V20CodeValue).ShouldBeFalse();
            testCase.ExpectedMigrationResults?.Any().ShouldBeTrue();

            var validCodeValue = new Regex($@"^{testCase.V20CodeValue}(-\d*)?$");

            var descriptors = await GetAcademicSubjectDescriptors();

            var actualResults = descriptors
                .Where(x => validCodeValue.IsMatch(x.CodeValue))
                .ToList();

            actualResults.ShouldBe(testCase.ExpectedMigrationResults);
        }
    }
}
