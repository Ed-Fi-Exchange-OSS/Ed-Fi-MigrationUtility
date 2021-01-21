// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using EdFi.Ods.Utilities.Migration.VersionLevel;
using NUnit.Framework;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MsSql.VersionLevel
{
    [TestFixture]
    public class DatabaseScriptJournalEntryTests
    {
        private const string DefaultScriptSource = "EdFi.Ods.Standard";
        private const string DefaultArtifactsMarker = "Artifacts";
        private const string DefaultDatabaseEngine = "MsSql";
        private const string DefaultScriptType = "Structure";
        private const string DefaultDatabase = "Ods";
        private const string DefaultFeature = "changes";
        private const string DefaultScriptName = "0010-Schema.sql";

        protected static string GetValidRelativePath(string scriptSource = null, string artifactsMarker = null,
            string databaseEngine = null, string scriptType = null, string database = null,
            string scriptName = null)
        {
            return
                $@"{scriptSource ?? DefaultScriptSource}\{artifactsMarker ?? DefaultArtifactsMarker}\{databaseEngine ?? DefaultDatabaseEngine}\{scriptType ?? DefaultScriptType}\{database ?? DefaultDatabase}\{scriptName ?? DefaultScriptName}";
        }

        protected static string GetValidRelativePathWithFeature(string scriptSource = null, string artifactsMarker = null,
            string databaseEngine = null, string scriptType = null, string database = null, string feature = null,
            string scriptName = null)
        {
            return
                $@"{scriptSource ?? DefaultScriptSource}\{artifactsMarker ?? DefaultArtifactsMarker}\{databaseEngine ?? DefaultDatabaseEngine}\{scriptType ?? DefaultScriptType}\{database ?? DefaultDatabase}\{feature ?? DefaultFeature}\{scriptName ?? DefaultScriptName}";
        }

        public class DatabaseScriptJournalEntryFromRelativeFilePathTests
        {
            [Test]
            public void ShouldBuildDatabaseScriptJournalEntryFromValidRelativeFilePath()
            {
                var result = DatabaseScriptJournalEntry.FromRelativeFilePath(
                    GetValidRelativePath());

                result.ScriptSource.ShouldBeGreaterThanOrEqualTo(DefaultScriptSource);
                result.ArtifactsMarker.ShouldBeGreaterThanOrEqualTo(DefaultArtifactsMarker);
                result.DatabaseEngine.ShouldBeGreaterThanOrEqualTo(DefaultDatabaseEngine);
                result.ScriptType.ShouldBeGreaterThanOrEqualTo(DefaultScriptType);
                result.Database.ShouldBeGreaterThanOrEqualTo(DefaultDatabase);
                result.ScriptName.ShouldBeGreaterThanOrEqualTo(DefaultScriptName);

                result.Feature.ShouldBeNull();
            }

            [Test]
            public void ShouldBuildDatabaseScriptJournalEntryFromValidRelativeFilePathWithLeadingSlash()
            {
                var result = DatabaseScriptJournalEntry.FromRelativeFilePath(
                    "\\" + GetValidRelativePath());

                result.ScriptSource.ShouldBeGreaterThanOrEqualTo(DefaultScriptSource);
                result.ArtifactsMarker.ShouldBeGreaterThanOrEqualTo(DefaultArtifactsMarker);
                result.DatabaseEngine.ShouldBeGreaterThanOrEqualTo(DefaultDatabaseEngine);
                result.ScriptType.ShouldBeGreaterThanOrEqualTo(DefaultScriptType);
                result.Database.ShouldBeGreaterThanOrEqualTo(DefaultDatabase);
                result.ScriptName.ShouldBeGreaterThanOrEqualTo(DefaultScriptName);

                result.Feature.ShouldBeNull();
            }

            [Test]
            public void ShouldBuildDatabaseScriptJournalEntryFromValidRelativeFilePathWithAlternativeDirectorySeparator()
            {
                var result = DatabaseScriptJournalEntry.FromRelativeFilePath(
                    $"{DefaultScriptSource}/{DefaultArtifactsMarker}/{DefaultDatabaseEngine}/{DefaultScriptType}/{DefaultDatabase}/{DefaultScriptName}");

                result.ScriptSource.ShouldBeGreaterThanOrEqualTo(DefaultScriptSource);
                result.ArtifactsMarker.ShouldBeGreaterThanOrEqualTo(DefaultArtifactsMarker);
                result.DatabaseEngine.ShouldBeGreaterThanOrEqualTo(DefaultDatabaseEngine);
                result.ScriptType.ShouldBeGreaterThanOrEqualTo(DefaultScriptType);
                result.Database.ShouldBeGreaterThanOrEqualTo(DefaultDatabase);
                result.ScriptName.ShouldBeGreaterThanOrEqualTo(DefaultScriptName);

                result.Feature.ShouldBeNull();
            }

            [Test]
            public void ShouldBuildDatabaseScriptJournalEntryFromValidRelativeFilePathWithSubType()
            {
                var result = DatabaseScriptJournalEntry.FromRelativeFilePath(
                    GetValidRelativePathWithFeature());

                result.ScriptSource.ShouldBeGreaterThanOrEqualTo(DefaultScriptSource);
                result.ArtifactsMarker.ShouldBeGreaterThanOrEqualTo(DefaultArtifactsMarker);
                result.DatabaseEngine.ShouldBeGreaterThanOrEqualTo(DefaultDatabaseEngine);
                result.ScriptType.ShouldBeGreaterThanOrEqualTo(DefaultScriptType);
                result.Database.ShouldBeGreaterThanOrEqualTo(DefaultDatabase);
                result.Feature.ShouldBeGreaterThanOrEqualTo(DefaultFeature);
                result.ScriptName.ShouldBeGreaterThanOrEqualTo(DefaultScriptName);
            }

            [Test]
            public void ShouldBuildDatabaseScriptJournalEntryFromValidRelativeFilePathWithAnyFolderNames()
            {
                var result = DatabaseScriptJournalEntry.FromRelativeFilePath(
                    GetValidRelativePathWithFeature(
                        "ScriptSource", "ArtifactsMarker", "DatabaseEngine", "ScriptType", "Database", "Feature"));

                result.ScriptSource.ShouldBeGreaterThanOrEqualTo("ScriptSource");
                result.ArtifactsMarker.ShouldBeGreaterThanOrEqualTo("ArtifactsMarker");
                result.DatabaseEngine.ShouldBeGreaterThanOrEqualTo("DatabaseEngine");
                result.ScriptType.ShouldBeGreaterThanOrEqualTo("ScriptType");
                result.Database.ShouldBeGreaterThanOrEqualTo("Database");
                result.Feature.ShouldBeGreaterThanOrEqualTo("Feature");
                result.ScriptName.ShouldBeGreaterThanOrEqualTo(DefaultScriptName);
            }

            [TestCase(null)]
            [TestCase("")]
            [TestCase("   ")]
            public void ShouldFailToBuildDatabaseScriptJournalEntryFromNullOrEmptyRelativeFilePaths(string relativePath)
            {
                var exception =
                    Should.Throw<ArgumentException>(() => DatabaseScriptJournalEntry.FromRelativeFilePath(relativePath));

                exception.Message.ShouldContain("Argument cannot be an empty string or whitespace.");
            }

            [Test]
            public void ShouldFailToBuildDatabaseScriptJournalEntryFromAbsoluteFilePath()
            {
                var exception = Should.Throw<ArgumentException>(
                    () => DatabaseScriptJournalEntry.FromRelativeFilePath(@"C:\SS\AM\DE\ST\D\SN.sql"));

                exception.Message.ShouldContain("Argument cannot be an absolute path.");
            }

            [TestCase(@"SS\AM\DE\ST\D\SN")]
            [TestCase(@"SS\AM\DE\ST\D\SN\")]
            [TestCase(@"SS\AM\DE\ST\D\SN\NotAScript.txt")]
            public void ShouldFailToBuildDatabaseScriptJournalEntryFromNonSqlRelativeFilePath(string relativePath)
            {
                var exception = Should.Throw<ArgumentException>(
                    () => DatabaseScriptJournalEntry.FromRelativeFilePath(@"SS\AM\DE\ST\D\SN"));

                exception.Message.ShouldContain("Argument must be a relative path ending in .sql, no file detected.");
            }

            [TestCase(@"SS\AM\DE\ST\SN.sql", 4, "Not enough directories")]
            [TestCase(@"SS\AM\DE\ST\\SN.sql", 4, "Empty directory causing not enough directories")]
            [TestCase(@"SS\AM\DE\ST\  \SN.sql", 4, "Whitespace directory causing not enough directories")]
            [TestCase(@"SS\AM\DE\ST\D\F\Extra\SN.sql", 7, "Extra directory causing too many directories")]
            public void ShouldFailToBuildDatabaseScriptJournalEntryFromRelativeFilePathsWithIncorrectSegmentCount(
                string relativePath, int expectedErrorSegmentCount, string testCustomMessage)
            {
                var exception = Should.Throw<ArgumentException>(
                    () => DatabaseScriptJournalEntry.FromRelativeFilePath(relativePath), testCustomMessage);

                exception.Message.ShouldContain(
                    $"Argument is expected to contain either 5 or 6 directories plus the script name, but {expectedErrorSegmentCount} directories were found.");
            }
        }

        public class DatabaseScriptJournalEntryEqualityTests
        {
            public class EqualityTestCase
            {
                public EqualityTestCase(string sourceRelativeFilePath, string targetRelativeFilePath,
                    bool expectedEqualityResult)
                {
                    SourceRelativeFilePath = sourceRelativeFilePath;
                    TargetRelativeFilePath = targetRelativeFilePath;
                    ExpectedEqualityResult = expectedEqualityResult;
                }

                public string SourceRelativeFilePath { get; }
                public string TargetRelativeFilePath { get;  }
                public bool ExpectedEqualityResult { get; }
            }

            private static readonly List<EqualityTestCase> _equalityTestCases = GetEqualityTestCases();

            private static List<EqualityTestCase> GetEqualityTestCases()
            {
                return new List<EqualityTestCase>
                {
                    new EqualityTestCase(GetValidRelativePath(), GetValidRelativePath(), true),
                    new EqualityTestCase(GetValidRelativePathWithFeature(), GetValidRelativePathWithFeature(), true),
                    new EqualityTestCase(GetValidRelativePath(scriptSource: "ScriptSourceA"), GetValidRelativePath(scriptSource: "ScriptSourceB"), false),
                    new EqualityTestCase(GetValidRelativePath(artifactsMarker: "ArtifactsMarkerA"), GetValidRelativePath(artifactsMarker: "ArtifactsMarkerB"), false),
                    new EqualityTestCase(GetValidRelativePath(databaseEngine: "DatabaseEngineA"), GetValidRelativePath(databaseEngine: "DatabaseEngineB"), false),
                    new EqualityTestCase(GetValidRelativePath(scriptType: "ScriptTypeA"), GetValidRelativePath(scriptType: "ScriptTypeB"), false),
                    new EqualityTestCase(GetValidRelativePath(scriptName: "ScriptNameA.sql"), GetValidRelativePath(scriptName: "ScriptNameB.sql"), false),
                    new EqualityTestCase(GetValidRelativePathWithFeature(scriptName: "ScriptNameA.sql"), GetValidRelativePathWithFeature(scriptName: "ScriptNameB.sql"), false),
                    new EqualityTestCase(GetValidRelativePathWithFeature(feature: "FeatureA"), GetValidRelativePathWithFeature(feature: "FeatureB"), false),
                    new EqualityTestCase(GetValidRelativePath(), GetValidRelativePathWithFeature(), false)
                };
            }

            [Test, TestCaseSource(nameof(_equalityTestCases))]
            public void ShouldHaveCorrectEquality(EqualityTestCase equalityTestCase)
            {
                var sourceDatabaseScriptJournalEntry =
                    DatabaseScriptJournalEntry.FromRelativeFilePath(equalityTestCase.SourceRelativeFilePath);
                var targetDatabaseScriptJournalEntry =
                    DatabaseScriptJournalEntry.FromRelativeFilePath(equalityTestCase.TargetRelativeFilePath);

                var equalsOperatorResult = sourceDatabaseScriptJournalEntry == targetDatabaseScriptJournalEntry;
                var notEqualsOperatorResult = sourceDatabaseScriptJournalEntry != targetDatabaseScriptJournalEntry;
                var equalsMethodResult = sourceDatabaseScriptJournalEntry.Equals(targetDatabaseScriptJournalEntry);

                equalsOperatorResult.ShouldBe(equalityTestCase.ExpectedEqualityResult, "Unexpected result {equalsOperatorResult} when testing with equals operator.");
                notEqualsOperatorResult.ShouldBe(!equalityTestCase.ExpectedEqualityResult, "Unexpected result {equalsOperatorResult} when testing with not equals operator.");
                equalsMethodResult.ShouldBe(equalityTestCase.ExpectedEqualityResult, "Unexpected result {equalsOperatorResult} when testing with equals method.");
            }

            [Test]
            public void ShouldHaveCorrectEqualityForNullableCases()
            {
                DatabaseScriptJournalEntry nullDatabaseScriptJournalEntry = null;

                var validDatabaseScriptJournalEntry =
                    DatabaseScriptJournalEntry.FromRelativeFilePath(GetValidRelativePath());

                var equalsOperatorResultNullSource = validDatabaseScriptJournalEntry == nullDatabaseScriptJournalEntry;
                var equalsOperatorResultNullTarget = nullDatabaseScriptJournalEntry == validDatabaseScriptJournalEntry;
                var notEqualsOperatorResultNullSource = nullDatabaseScriptJournalEntry != validDatabaseScriptJournalEntry;
                var notEqualsOperatorResultNullTarget = validDatabaseScriptJournalEntry != nullDatabaseScriptJournalEntry;
                var equalsMethodResultNullTarget = validDatabaseScriptJournalEntry.Equals(nullDatabaseScriptJournalEntry);

                equalsOperatorResultNullSource.ShouldBe(
                    false, "Unexpected result {equalsOperatorResult} when testing with equals operator with null source.");

                equalsOperatorResultNullTarget.ShouldBe(
                    false, "Unexpected result {equalsOperatorResult} when testing with equals operator with null target.");

                notEqualsOperatorResultNullSource.ShouldBe(
                    true, "Unexpected result {equalsOperatorResult} when testing with not equals operator with null target.");

                notEqualsOperatorResultNullTarget.ShouldBe(
                    true, "Unexpected result {equalsOperatorResult} when testing with not equals operator with null target.");

                equalsMethodResultNullTarget.ShouldBe(
                    false, "Unexpected result {equalsOperatorResult} when testing with equals method with null target.");
            }
        }

        public class DatabaseScriptJournalEntryPropertyTests
        {
            [Test]
            public void ShouldHaveCorrectDatabaseScriptJournalEntry()
            {
                var databaseScriptJournalEntry = DatabaseScriptJournalEntry.FromRelativeFilePath(GetValidRelativePath());
                databaseScriptJournalEntry.JournalScriptEntry.ShouldBe($"{DefaultScriptSource}.{DefaultArtifactsMarker}.{DefaultDatabaseEngine}.{DefaultScriptType}.{DefaultDatabase}.{DefaultScriptName}");
            }

            [Test]
            public void ShouldHaveCorrectDatabaseScriptJournalEntryWithFeature()
            {
                var databaseScriptJournalEntry = DatabaseScriptJournalEntry.FromRelativeFilePath(GetValidRelativePathWithFeature());
                databaseScriptJournalEntry.JournalScriptEntry.ShouldBe($"{DefaultScriptSource}.{DefaultArtifactsMarker}.{DefaultDatabaseEngine}.{DefaultScriptType}.{DefaultDatabase}.{DefaultFeature}.{DefaultScriptName}");
            }

            [Test]
            public void ShouldHaveCorrectRelativeFilePath()
            {
                var databaseScriptJournalEntry = DatabaseScriptJournalEntry.FromRelativeFilePath(GetValidRelativePath());
                databaseScriptJournalEntry.RelativeFilePath.ShouldBe($@"{DefaultScriptSource}\{DefaultArtifactsMarker}\{DefaultDatabaseEngine}\{DefaultScriptType}\{DefaultDatabase}\{DefaultScriptName}");
            }

            [Test]
            public void ShouldHaveCorrectRelativeFilePathWithFeature()
            {
                var databaseScriptJournalEntry = DatabaseScriptJournalEntry.FromRelativeFilePath(GetValidRelativePathWithFeature());
                databaseScriptJournalEntry.RelativeFilePath.ShouldBe($@"{DefaultScriptSource}\{DefaultArtifactsMarker}\{DefaultDatabaseEngine}\{DefaultScriptType}\{DefaultDatabase}\{DefaultFeature}\{DefaultScriptName}");
            }
        }
    }
}
