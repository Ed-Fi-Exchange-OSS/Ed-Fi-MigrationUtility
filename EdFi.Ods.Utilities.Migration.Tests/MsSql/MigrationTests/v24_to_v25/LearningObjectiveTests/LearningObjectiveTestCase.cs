// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Linq;
using EdFi.Ods.Utilities.Migration.Tests.Models.v2;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MsSql.MigrationTests.v24_to_v25.LearningObjectiveTests
{
    public class LearningObjectiveTestCase
    {
        public static readonly Lazy<HashSet<string>> AllTestCaseNames =
            new Lazy<HashSet<string>>(() => All().Select(x => x.TestCaseName).ToHashSet());
        public const int InvalidDescriptorId = 0;

        private static List<LearningObjectiveTestCase> _allTestCasesInternal;

        private string TestCaseName => Description ?? Objective;
        public string Description { get; set; }
        public string InsertedLearningObjectiveId { get; set; }
        public string Objective { get; set; }
        public string Namespace { get; set; }
        public int? AcademicSubjectDescriptorId { get; set; }
        public int? ObjectiveGradeLevelDescriptorId { get; set; }
        public string InsertedParentObjective { get; set; }
        public int? ParentAcademicSubjectDescriptorId { get; set; }
        public int? ParentObjectiveGradeLevelDescriptorId { get; set; }
        public DateTime CreateDate { get; set; }
        public List<LearningObjectiveResult> ExpectedResults { get; set; } = new List<LearningObjectiveResult>();

        public static List<LearningObjectiveTestCase> GetByTestCaseName(string testCaseName)
        {
            return All().Where(x => x.TestCaseName == testCaseName).ToList();
        }

        private static List<LearningObjectiveTestCase> All()
        {
            if (_allTestCasesInternal == null)
            {
                CreateTestCases();
            }

            return _allTestCasesInternal;
        }

        private static void CreateTestCases()
        {
            _allTestCasesInternal = new List<LearningObjectiveTestCase>();

            var defaultTestCase = new LearningObjectiveTestCase
            {
                Objective = "Objective",
                Namespace = "Objective",
                InsertedLearningObjectiveId = "Objective",
                Description = "New Learning objective ID should be the remain same as inserted",
                ObjectiveGradeLevelDescriptorId = 1000,
                AcademicSubjectDescriptorId = 2000,
                CreateDate = new DateTime(2000, 1, 1)
            };
            var defaultTestCaseExpectedResult = new LearningObjective
            {
                LearningObjectiveId = "Objective",
                Objective = "Objective",
                Namespace = "Objective",
                Description = defaultTestCase.Description
            };
            defaultTestCase.AddExpectedResult(new LearningObjectiveResult
            {
                LearningObjective = defaultTestCaseExpectedResult,
                IsParentObjective = false,
                ShouldHaveRandomlyGeneratedLearningObjectiveId = false,
                GradeLevel = 1000,
                Subject = 2000
            });
            _allTestCasesInternal.Add(defaultTestCase);

            var testCaseWithDifferentNamespace = new LearningObjectiveTestCase
            {
                Objective = defaultTestCase.Objective,
                Namespace = "Different Namespace",
                InsertedLearningObjectiveId = defaultTestCase.InsertedLearningObjectiveId,
                Description = "New Learning objective ID should be the remain same as default, but namespace different",
                ObjectiveGradeLevelDescriptorId = defaultTestCase.ObjectiveGradeLevelDescriptorId + 1,
                AcademicSubjectDescriptorId = defaultTestCase.AcademicSubjectDescriptorId + 1,
                CreateDate = new DateTime(2000, 1, 1)
            };
            var testCaseWithDifferentNamespaceExpectedResult = new LearningObjective
            {
                LearningObjectiveId = "Objective",
                Objective = "Objective",
                Namespace = "Different Namespace",
                Description = testCaseWithDifferentNamespace.Description
            };
            testCaseWithDifferentNamespace.AddExpectedResult(new LearningObjectiveResult
            {
                LearningObjective = testCaseWithDifferentNamespaceExpectedResult,
                IsParentObjective = false,
                ShouldHaveRandomlyGeneratedLearningObjectiveId = false,
                GradeLevel = defaultTestCase.ObjectiveGradeLevelDescriptorId + 1,
                Subject = defaultTestCase.AcademicSubjectDescriptorId + 1
            });
            _allTestCasesInternal.Add(testCaseWithDifferentNamespace);

            var testCaseWithDuplicateLearningObjectiveId = new LearningObjectiveTestCase
            {
                Objective = defaultTestCase.Objective,
                Namespace = defaultTestCase.Namespace,
                Description = "Duplicate test (existing): LearningObjectiveId already exists. New LearningObjectiveId should have appended integer",
                ObjectiveGradeLevelDescriptorId = defaultTestCase.ObjectiveGradeLevelDescriptorId + 2,
                AcademicSubjectDescriptorId = defaultTestCase.AcademicSubjectDescriptorId + 2,
                InsertedLearningObjectiveId = defaultTestCase.InsertedLearningObjectiveId,
                CreateDate = defaultTestCase.CreateDate.AddDays(-1)
            };
            var testCaseWithDuplicateLearningObjectiveIdExpectedResult = new LearningObjective
            {
                LearningObjectiveId = "Objective-2",
                Objective = "Objective",
                Namespace = "Objective",
                Description = testCaseWithDuplicateLearningObjectiveId.Description
            };
            testCaseWithDuplicateLearningObjectiveId.AddExpectedResult(new LearningObjectiveResult
            {
                LearningObjective = testCaseWithDuplicateLearningObjectiveIdExpectedResult,
                IsParentObjective = false,
                ShouldHaveRandomlyGeneratedLearningObjectiveId = false,
                GradeLevel = defaultTestCase.ObjectiveGradeLevelDescriptorId + 2,
                Subject = defaultTestCase.AcademicSubjectDescriptorId + 2
            });
            _allTestCasesInternal.Add(testCaseWithDuplicateLearningObjectiveId);

            var testCaseWithNullIdReplacedWithObjective = new LearningObjectiveTestCase
            {
                Objective = "ObjectiveWithNullId",
                Namespace = "ObjectiveWithNullId",
                InsertedLearningObjectiveId = null,
                Description = "New Learning objective ID should be resolved from Objective",
                ObjectiveGradeLevelDescriptorId = 1000,
                AcademicSubjectDescriptorId = 2000,
                CreateDate = new DateTime(2000, 1, 1)
            };
            var testCaseWithNullIdReplacedWithObjectiveExpectedResult = new LearningObjective
            {
                LearningObjectiveId = "ObjectiveWithNullId",
                Objective = "ObjectiveWithNullId",
                Namespace = "ObjectiveWithNullId",
                Description = testCaseWithNullIdReplacedWithObjective.Description
            };
            testCaseWithNullIdReplacedWithObjective.AddExpectedResult(new LearningObjectiveResult
            {
                LearningObjective = testCaseWithNullIdReplacedWithObjectiveExpectedResult,
                IsParentObjective = false,
                ShouldHaveRandomlyGeneratedLearningObjectiveId = false,
                GradeLevel = 1000,
                Subject = 2000
            });
            _allTestCasesInternal.Add(testCaseWithNullIdReplacedWithObjective);

            var duplicateTestCaseWithNullId = new LearningObjectiveTestCase
            {
                Objective = "ObjectiveWithNullId",
                Namespace = "ObjectiveWithNullId",
                InsertedLearningObjectiveId = null,
                Description = "Duplicate test (null): LearningObjectiveId already exists. New LearningObjectiveId is random",
                ObjectiveGradeLevelDescriptorId =
                    testCaseWithNullIdReplacedWithObjective.ObjectiveGradeLevelDescriptorId + 1,
                AcademicSubjectDescriptorId =
                    testCaseWithNullIdReplacedWithObjective.AcademicSubjectDescriptorId + 1,
                CreateDate = testCaseWithNullIdReplacedWithObjective.CreateDate.AddDays(-1)
            };
            var duplicateTestCaseWithNullIdExpectedResult = new LearningObjective
            {
                LearningObjectiveId = null,
                Objective = "ObjectiveWithNullId",
                Namespace = "ObjectiveWithNullId",
                Description = duplicateTestCaseWithNullId.Description
            };
            duplicateTestCaseWithNullId.AddExpectedResult(new LearningObjectiveResult
            {
                LearningObjective = duplicateTestCaseWithNullIdExpectedResult,
                IsParentObjective = false,
                ShouldHaveRandomlyGeneratedLearningObjectiveId = true,
                GradeLevel = testCaseWithNullIdReplacedWithObjective.ObjectiveGradeLevelDescriptorId + 1,
                Subject = testCaseWithNullIdReplacedWithObjective.AcademicSubjectDescriptorId + 1
            });
            _allTestCasesInternal.Add(duplicateTestCaseWithNullId);

            var testCaseWithNewParentObjective = new LearningObjectiveTestCase
            {
                Objective = "WithParentObjective",
                Namespace = "ParentAndChildShouldHaveSameNamespace",
                InsertedLearningObjectiveId = "WithParentObjective",
                Description = "Should cause a new parent objective to be inserted due to null ParentAcademicSubjectDescriptorId",
                ObjectiveGradeLevelDescriptorId = 1000,
                AcademicSubjectDescriptorId = 2000,
                InsertedParentObjective = "NewParentObjective",
                ParentObjectiveGradeLevelDescriptorId = 1000,
                ParentAcademicSubjectDescriptorId = null,
                CreateDate = new DateTime(2000, 1, 1)
            };
            var testCaseWithNewParentObjectiveExpectedResult = new LearningObjective
            {
                LearningObjectiveId = "WithParentObjective",
                Objective = "WithParentObjective",
                Namespace = "ParentAndChildShouldHaveSameNamespace",
                Description = testCaseWithNewParentObjective.Description
            };
            var testCaseWithNewParentObjectiveGeneratedParentExpectedResult = new LearningObjective
            {
                LearningObjectiveId = "NewParentObjective",
                Objective = "NewParentObjective",
                Namespace = "ParentAndChildShouldHaveSameNamespace",
                Description = null
            };
            testCaseWithNewParentObjective.AddExpectedResult(new LearningObjectiveResult
            {
                LearningObjective = testCaseWithNewParentObjectiveExpectedResult,
                IsParentObjective = false,
                ShouldHaveRandomlyGeneratedLearningObjectiveId = false,
                GradeLevel = 1000,
                Subject = 2000
            });

            testCaseWithNewParentObjective.AddExpectedResult(new LearningObjectiveResult
            {
                LearningObjective = testCaseWithNewParentObjectiveGeneratedParentExpectedResult,
                IsParentObjective = true,
                ShouldHaveRandomlyGeneratedLearningObjectiveId = false,
                GradeLevel = 1000,
                Subject = null
            });
            _allTestCasesInternal.Add(testCaseWithNewParentObjective);

            var testCaseWithDifferentParentObjective = new LearningObjectiveTestCase
            {
                Objective = "ParentObjectiveShouldBeDifferent",
                Namespace = "ParentObjectiveShouldBeDifferent",
                InsertedLearningObjectiveId = "ParentObjectiveShouldBeDifferent",
                Description = "Parent objective already exists.  ParentLearningObjectiveId should be remapped during upgrade.",
                ObjectiveGradeLevelDescriptorId = defaultTestCase.ObjectiveGradeLevelDescriptorId,
                AcademicSubjectDescriptorId = defaultTestCase.AcademicSubjectDescriptorId,
                InsertedParentObjective = testCaseWithDuplicateLearningObjectiveId.Objective,
                ParentObjectiveGradeLevelDescriptorId =
                    testCaseWithDuplicateLearningObjectiveId.ObjectiveGradeLevelDescriptorId,
                ParentAcademicSubjectDescriptorId =
                    testCaseWithDuplicateLearningObjectiveId.AcademicSubjectDescriptorId,
                CreateDate = defaultTestCase.CreateDate
            };
            var testCaseWithDifferentParentObjectiveParentExpectedResult = new LearningObjective
            {
                LearningObjectiveId = "ParentObjectiveShouldBeDifferent",
                Objective = "ParentObjectiveShouldBeDifferent",
                Namespace = "ParentObjectiveShouldBeDifferent",
                Description = testCaseWithDifferentParentObjective.Description
            };
            testCaseWithDifferentParentObjective.AddExpectedResult(new LearningObjectiveResult
            {
                LearningObjective = testCaseWithDifferentParentObjectiveParentExpectedResult,
                IsParentObjective = false,
                ShouldHaveRandomlyGeneratedLearningObjectiveId = false,
                GradeLevel = testCaseWithDifferentParentObjective.ObjectiveGradeLevelDescriptorId,
                Subject = testCaseWithDifferentParentObjective.AcademicSubjectDescriptorId
            });
            _allTestCasesInternal.Add(testCaseWithDifferentParentObjective);

            var testCaseWithInvalidParentSubject = new LearningObjectiveTestCase
            {
                Objective = "HasParentWithInvalidSubject",
                Namespace = "HasParentWithInvalidSubject",
                InsertedLearningObjectiveId = "HasParentWithInvalidSubject",
                Description = "Invalid Parent subject allowed under old schema.  Should not throw during upgrade.",
                ObjectiveGradeLevelDescriptorId = 1000,
                AcademicSubjectDescriptorId = 2000,
                InsertedParentObjective = "ShouldNotHaveAssociatedSubjectsOrGradeLevels",
                ParentObjectiveGradeLevelDescriptorId = null,
                ParentAcademicSubjectDescriptorId = InvalidDescriptorId,
                CreateDate = new DateTime(2000, 1, 1)
            };
            var testCaseWithInvalidParentSubjectExpectedResult = new LearningObjective
            {
                LearningObjectiveId = "HasParentWithInvalidSubject",
                Objective = "HasParentWithInvalidSubject",
                Namespace = "HasParentWithInvalidSubject",
                Description = testCaseWithInvalidParentSubject.Description
            };
            testCaseWithInvalidParentSubject.AddExpectedResult(new LearningObjectiveResult
            {
                LearningObjective = testCaseWithInvalidParentSubjectExpectedResult,
                IsParentObjective = false,
                ShouldHaveRandomlyGeneratedLearningObjectiveId = false,
                GradeLevel = 1000,
                Subject = 2000
            });
            var testCaseWithInvalidParentSubjectGeneratedParent = new LearningObjective
            {
                LearningObjectiveId = "ShouldNotHaveAssociatedSubjectsOrGradeLevels",
                Objective = "ShouldNotHaveAssociatedSubjectsOrGradeLevels",
                Description = null,
                Namespace = testCaseWithInvalidParentSubject.Namespace
            };
            testCaseWithInvalidParentSubject.AddExpectedResult(new LearningObjectiveResult
            {
                LearningObjective = testCaseWithInvalidParentSubjectGeneratedParent,
                IsParentObjective = true,
                ShouldHaveRandomlyGeneratedLearningObjectiveId = false,
                GradeLevel = null,
                Subject = null
            });
            _allTestCasesInternal.Add(testCaseWithInvalidParentSubject);

            var testCaseWithInvalidParentGradeLevel = new LearningObjectiveTestCase
            {
                Objective = "HasParentWithInvalidGradeLevel",
                Namespace = "HasParentWithInvalidGradeLevel",
                InsertedLearningObjectiveId = "HasParentWithInvalidGradeLevel",
                Description = "Invalid Parent grade level allowed under old schema.  Should not throw during upgrade.",
                ObjectiveGradeLevelDescriptorId = 1000,
                AcademicSubjectDescriptorId = 2000,
                InsertedParentObjective = "ShouldNotHaveAssociatedSubjectsOrGradeLevels",
                ParentObjectiveGradeLevelDescriptorId = InvalidDescriptorId,
                ParentAcademicSubjectDescriptorId = null,
                CreateDate = new DateTime(2000, 1, 1)
            };
            var testCaseWithInvalidParentGradeLevelExpectedResult = new LearningObjective
            {
                LearningObjectiveId = "HasParentWithInvalidGradeLevel",
                Objective = "HasParentWithInvalidGradeLevel",
                Namespace = "HasParentWithInvalidGradeLevel",
                Description = testCaseWithInvalidParentGradeLevel.Description
            };
            testCaseWithInvalidParentGradeLevel.AddExpectedResult(new LearningObjectiveResult
            {
                LearningObjective = testCaseWithInvalidParentGradeLevelExpectedResult,
                IsParentObjective = false,
                ShouldHaveRandomlyGeneratedLearningObjectiveId = false,
                GradeLevel = 1000,
                Subject = 2000
            });
            var testCaseWithInvalidParentGradeGeneratedParent = new LearningObjective
            {
                LearningObjectiveId = "ShouldNotHaveAssociatedSubjectsOrGradeLevels",
                Objective = "ShouldNotHaveAssociatedSubjectsOrGradeLevels",
                Description = null,
                Namespace = testCaseWithInvalidParentGradeLevel.Namespace
            };
            testCaseWithInvalidParentGradeLevel.AddExpectedResult(new LearningObjectiveResult
            {
                LearningObjective = testCaseWithInvalidParentGradeGeneratedParent,
                IsParentObjective = true,
                ShouldHaveRandomlyGeneratedLearningObjectiveId = false,
                GradeLevel = null,
                Subject = null
            });
            _allTestCasesInternal.Add(testCaseWithInvalidParentGradeLevel);
        }

        private void AddExpectedResult(LearningObjectiveResult expectedResult)
        {
            AssertLearningObjectiveTestCaseIsValid(expectedResult.LearningObjective, expectedResult.ShouldHaveRandomlyGeneratedLearningObjectiveId, expectedResult.IsParentObjective);
            AssertLearningObjectiveSubjectIsValid(expectedResult.Subject, expectedResult.IsParentObjective);
            AssertLearningObjectiveGradeLevelIsValid(expectedResult.GradeLevel, expectedResult.IsParentObjective);

            ExpectedResults.Add(expectedResult);
        }

        private void AssertLearningObjectiveTestCaseIsValid(LearningObjective expectedLearningObjectiveResult, bool shouldHaveRandomLearningObjectiveId, bool isParentObjective)
        {
            if (shouldHaveRandomLearningObjectiveId)
            {
                expectedLearningObjectiveResult.LearningObjectiveId.ShouldBeNull();
            }
            else if (!isParentObjective)
            {
                expectedLearningObjectiveResult.LearningObjectiveId.ShouldNotBeNull();
                expectedLearningObjectiveResult.LearningObjectiveId.StartsWith(this.Objective).ShouldBe(true, "New LearningObjectiveId should be generated based on \"Objective\" for cases where is is not expected to be random");
            }
            else
            {
                expectedLearningObjectiveResult.LearningObjectiveId.ShouldNotBeNull();
            }

            if (isParentObjective)
            {
                expectedLearningObjectiveResult.Description.ShouldBeNull("Newly generated parent objectives will be created with an empty description");
            }
            else
            {
                expectedLearningObjectiveResult.Description.ShouldNotBeNull();
                expectedLearningObjectiveResult.Description.ShouldBe(this.Description, "Description should not change during migration");
                expectedLearningObjectiveResult.Objective.ShouldBe(this.Objective, "Objective should not change during migration");
            }

            expectedLearningObjectiveResult.Objective.ShouldNotBeNull();

            expectedLearningObjectiveResult.Namespace.ShouldNotBeNull();
            expectedLearningObjectiveResult.Namespace.ShouldBe(this.Namespace, "Namespace should not change during migration");
        }

        private void AssertLearningObjectiveSubjectIsValid(int? subject, bool isParentObjective)
        {
            if (isParentObjective && subject == null)
            {
                return;
            }

            subject.ShouldNotBe(InvalidDescriptorId);
            subject.ShouldBe(isParentObjective ? ParentAcademicSubjectDescriptorId : AcademicSubjectDescriptorId);
        }


        private void AssertLearningObjectiveGradeLevelIsValid(int? gradeLevel, bool isParentObjective)
        {
            if (isParentObjective && gradeLevel == null)
            {
                return;
            }

            gradeLevel.ShouldNotBe(InvalidDescriptorId);
            gradeLevel.ShouldBe(isParentObjective ? ParentObjectiveGradeLevelDescriptorId : ObjectiveGradeLevelDescriptorId);
        }
    }

    public class LearningObjectiveResult
    {
        public LearningObjective LearningObjective { get; set; }
        public bool ShouldHaveRandomlyGeneratedLearningObjectiveId { get; set; }
        public bool IsParentObjective { get; set; }
        public int? Subject { get; set; }
        public int? GradeLevel { get; set; }
    }

}
