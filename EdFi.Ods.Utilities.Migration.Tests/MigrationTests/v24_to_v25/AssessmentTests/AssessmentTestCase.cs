// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Linq;
using EdFi.Ods.Utilities.Migration.Helpers;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v2;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v24_to_v25.AssessmentTests
{
    public class AssessmentTestCase
    {
        public static readonly Lazy<HashSet<string>> AllTestCaseNames =
            new Lazy<HashSet<string>>(() => All().Select(x => x.TestCaseDescription).ToHashSet());

        public const string DefaultAssessmentFamilyTitle = "Default Assessment Family";
        public const string DefaultAssessmentFamilyNamespace = "uri://default-assessment-family-namespace/Assessment";
        public string TestCaseDescription { get; set; }
        public string AssessmentTitle { get; set; }
        public string Namespace { get; set; }
        public int AcademicSubjectDescriptorId { get; set; }
        public int GradeLevelDescriptorId { get; set; }
        public int AssessmentVersion { get; set; }
        public DateTime CreateDate { get; set; }
        public AssessmentResult ExpectedResult { get; set; }
        public Guid Id { get; set; }

        private static List<AssessmentTestCase> _allTestCasesInternal;

        private static List<AssessmentTestCase> All()
        {
            if (_allTestCasesInternal == null)
            {
                CreateTestCases();
            }

            return _allTestCasesInternal;
        }

        public static AssessmentTestCase GetByTestCaseName(string testCaseName)
        {
            return All().Single(x => x.TestCaseDescription == testCaseName);
        }

        private static void CreateTestCases()
        {
            _allTestCasesInternal = new List<AssessmentTestCase>();

            var defaultAssessmentTestCase = new AssessmentTestCase
            {
                TestCaseDescription = "Default test case: AssessmentIdentifier should equal title",
                Namespace = "Default",
                AssessmentTitle = "Default",
                AcademicSubjectDescriptorId = 1000,
                GradeLevelDescriptorId = 2000,
                CreateDate = new DateTime(2001, 1, 1),
                AssessmentVersion = 1,
                Id = Guid.NewGuid()
            };
            defaultAssessmentTestCase.SetExpectedResult(AssessmentIdentifierType.HumanReadable, "Default");
            _allTestCasesInternal.Add(defaultAssessmentTestCase);

            var duplicateAssessmentWithDifferentVersion = new AssessmentTestCase
            {
                TestCaseDescription = "Same key as default, different version: should have version appended to new identifier",
                Namespace = "Default",
                AssessmentTitle = "Default",
                AcademicSubjectDescriptorId = 1000,
                GradeLevelDescriptorId = 2000,
                CreateDate = new DateTime(2001, 1, 1),
                AssessmentVersion = 1234,
                Id = Guid.NewGuid()
            };
            duplicateAssessmentWithDifferentVersion.SetExpectedResult(AssessmentIdentifierType.HumanReadable, "Default-1234");
            _allTestCasesInternal.Add(duplicateAssessmentWithDifferentVersion);

            var defaultAssessmentKeyWithDifferentSubject = new AssessmentTestCase
            {
                TestCaseDescription = "Same key as default, different subject: should get random identifier",
                Namespace = "Default",
                AssessmentTitle = "Default",
                AcademicSubjectDescriptorId = 1001,
                GradeLevelDescriptorId = 2000,
                CreateDate = new DateTime(2000, 1, 1),
                AssessmentVersion = 1,
                Id = Guid.NewGuid()
            };
            defaultAssessmentKeyWithDifferentSubject.SetExpectedResult(AssessmentIdentifierType.GeneratedHashCode);
            _allTestCasesInternal.Add(defaultAssessmentKeyWithDifferentSubject);

            var defaultAssessmentKeyWithDifferentGrade = new AssessmentTestCase
            {
                TestCaseDescription = "Same key as default, different grade: should get random identifier",
                Namespace = "Default",
                AssessmentTitle = "Default",
                AcademicSubjectDescriptorId = 1000,
                GradeLevelDescriptorId = 2001,
                CreateDate = new DateTime(2000, 1, 1),
                AssessmentVersion = 1,
                Id = Guid.NewGuid()
            };
            defaultAssessmentKeyWithDifferentGrade.SetExpectedResult(AssessmentIdentifierType.GeneratedHashCode);
            _allTestCasesInternal.Add(defaultAssessmentKeyWithDifferentGrade);

            var assessmentWithNoNamespace = new AssessmentTestCase
            {
                TestCaseDescription = "Null namespace:  should be resolved from default assessment family",
                Namespace = null,
                AssessmentTitle = "Null namespace",
                AcademicSubjectDescriptorId = 1000,
                GradeLevelDescriptorId = 2001,
                CreateDate = new DateTime(2000, 1, 1),
                AssessmentVersion = 1,
                Id = Guid.NewGuid()
            };
            assessmentWithNoNamespace.SetExpectedResult(AssessmentIdentifierType.HumanReadable, "Null namespace");
            _allTestCasesInternal.Add(assessmentWithNoNamespace);
        }

        private void SetExpectedResult(AssessmentIdentifierType assessmentIdentifierType, string assessmentIdentifier = null)
        {
            if (assessmentIdentifierType == AssessmentIdentifierType.GeneratedHashCode && !string.IsNullOrEmpty(assessmentIdentifier))
            {
                assessmentIdentifier.ShouldBeNull("Assessment test case should have null assessment identifier if expected result is a generated hash code");
            }

            ExpectedResult = new AssessmentResult
            {
                GradeLevel = GradeLevelDescriptorId,
                Subject = AcademicSubjectDescriptorId,
                ExpectedAssessmentIdentifierType = assessmentIdentifierType,

                Assessment = new Assessment
                {
                    Namespace = Namespace ?? DefaultAssessmentFamilyNamespace,
                    AssessmentTitle = AssessmentTitle,
                    AssessmentIdentifier = assessmentIdentifier,
                    Id = Id
                }
            };
        }
    }

    public class AssessmentResult
    {
        public Assessment Assessment { get; set; }
        public AssessmentIdentifierType ExpectedAssessmentIdentifierType { get; set; }
        public int Subject { get; set; }
        public int GradeLevel { get; set; }
    }

    public enum AssessmentIdentifierType
    {
        GeneratedHashCode,
        HumanReadable
    }
}
