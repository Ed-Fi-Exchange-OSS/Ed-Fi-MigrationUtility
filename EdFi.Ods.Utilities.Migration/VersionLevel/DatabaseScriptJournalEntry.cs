// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.IO;
using System.Linq;

namespace EdFi.Ods.Utilities.Migration.VersionLevel
{
    public class DatabaseScriptJournalEntry : IEquatable<DatabaseScriptJournalEntry>
    {
        public string ScriptSource { get; private set; }

        public string ArtifactsMarker { get; private set; }

        public string DatabaseEngine { get; private set; }

        public string ScriptType { get; private set; }

        public string Database { get; private set; }

        public string Feature { get; private set; }

        public bool IsFeature => !string.IsNullOrWhiteSpace(Feature);

        public string ScriptName { get; private set; }

        public string JournalScriptEntry => GenerateCombinedString('.');

        public string RelativeFilePath => GenerateCombinedString(Path.DirectorySeparatorChar);

        private string GenerateCombinedString(char separator)
        {
            var subType = string.IsNullOrWhiteSpace(Feature)
                ? string.Empty
                : $"{separator}{Feature}";

            return
                $"{ScriptSource}{separator}{ArtifactsMarker}{separator}{DatabaseEngine}{separator}{ScriptType}{separator}{Database}{subType}{separator}{ScriptName}";
        }

        private DatabaseScriptJournalEntry(string[] segments)
        {
            ScriptSource = segments[0];
            ArtifactsMarker = segments[1];
            DatabaseEngine = segments[2];
            ScriptType = segments[3];
            Database = segments[4];

            Feature = segments.Length == 7
                ? segments[5]
                : null;

            ScriptName = segments.Last();
        }

        /// <summary>
        /// Expects a file path with the necessary segments to create the DatabaseScriptJournalEntry
        /// </summary>
        /// <param name="relativeFilePath"></param>
        public static DatabaseScriptJournalEntry FromRelativeFilePath(string relativeFilePath)
        {
            if (string.IsNullOrWhiteSpace(relativeFilePath))
            {
                throw new ArgumentException("Argument cannot be an empty string or whitespace.", nameof(relativeFilePath));
            }

            if (Path.IsPathRooted(relativeFilePath))
            {
                var pathRoot = Path.GetPathRoot(relativeFilePath);

                if (!pathRoot.Equals(Path.DirectorySeparatorChar.ToString()) &&
                    !pathRoot.Equals(Path.AltDirectorySeparatorChar.ToString()))
                {
                    throw new ArgumentException("Argument cannot be an absolute path.", nameof(relativeFilePath));
                }
            }

            if (!Path.GetFileName(relativeFilePath).EndsWith(".sql"))
            {
                throw new ArgumentException("Argument must be a relative path ending in .sql, no file detected.", nameof(relativeFilePath));
            }

            var segments = relativeFilePath.Split(Path.DirectorySeparatorChar, Path.AltDirectorySeparatorChar)
                .Where(s => !string.IsNullOrWhiteSpace(s)).ToArray();

            // 6 without feature folder, 7 with
            if (segments.Length != 6 && segments.Length != 7)
            {
                throw new ArgumentException(
                    $"Argument is expected to contain either 5 or 6 directories plus the script name, but "
                    + $"{segments.Length - 1} directories were found.",
                    nameof(relativeFilePath));
            }

            return new DatabaseScriptJournalEntry(segments);
        }

        public bool Equals(DatabaseScriptJournalEntry other)
        {
            if (ReferenceEquals(null, other))
            {
                return false;
            }

            if (ReferenceEquals(this, other))
            {
                return true;
            }

            return string.Equals(JournalScriptEntry, other.JournalScriptEntry);
        }

        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj))
            {
                return false;
            }

            if (ReferenceEquals(this, obj))
            {
                return true;
            }

            if (obj.GetType() != this.GetType())
            {
                return false;
            }

            return Equals((DatabaseScriptJournalEntry) obj);
        }

        public override int GetHashCode() => (JournalScriptEntry != null
            ? JournalScriptEntry.GetHashCode()
            : 0);

        public static bool operator ==(DatabaseScriptJournalEntry left, DatabaseScriptJournalEntry right) => Equals(left, right);

        public static bool operator !=(DatabaseScriptJournalEntry left, DatabaseScriptJournalEntry right) => !Equals(left, right);
    }
}