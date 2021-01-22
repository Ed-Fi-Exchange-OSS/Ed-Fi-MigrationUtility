// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Linq;
using DatabaseSchemaReader.DataSchema;
using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.Tests.Utilities
{
    public class TestSchemaVersion : IEquatable<TestSchemaVersion>
    {
        public TestSchemaVersion(EdFiOdsVersion version, List<EdFiOdsFeature> features)
        {
            Version = version;
            Features = features ?? new List<EdFiOdsFeature>();
        }

        public EdFiOdsVersion Version { get; }
        public IReadOnlyList<EdFiOdsFeature> Features { get; }

        private string CacheKey =>
            $"{Version.Value}{(Features.Any() ? "." : string.Empty)}{string.Join(".", Features.Select(sf => sf.Value))}";

        public bool Equals(TestSchemaVersion other)
        {
            if (ReferenceEquals(null, other)) return false;
            if (ReferenceEquals(this, other)) return true;
            return CacheKey.Equals(other.CacheKey);
        }

        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj)) return false;
            if (ReferenceEquals(this, obj)) return true;
            if (obj.GetType() != this.GetType()) return false;
            return Equals((TestSchemaVersion) obj);
        }

        public override int GetHashCode()
        {
            return CacheKey.GetHashCode();
        }

        public static bool operator ==(TestSchemaVersion left, TestSchemaVersion right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(TestSchemaVersion left, TestSchemaVersion right)
        {
            return !Equals(left, right);
        }

        public override string ToString()
        {
            return
                $"Version {Version.DisplayName}{(Features.Any() ? " with features " : string.Empty)}{string.Join(", ", Features.Select(f => f.DisplayName))}";
        }
    }

    public static class DatabaseSchemaCache
    {
        private static readonly Dictionary<TestSchemaVersion, DatabaseSchema> SchemaMetadata =
            new Dictionary<TestSchemaVersion, DatabaseSchema>();

        public static bool HasDatabaseSchema(TestSchemaVersion testSchemaVersion)
        {
            return SchemaMetadata.ContainsKey(testSchemaVersion);
        }

        public static DatabaseSchema GetDatabaseSchema(TestSchemaVersion testSchemaVersion)
        {
            if (!HasDatabaseSchema(testSchemaVersion))
            {
                throw new ApplicationException(
                    $"Cannot retrieve SchemaMetadata for {testSchemaVersion}.  Make sure it was set previously.");
            }

            return SchemaMetadata[testSchemaVersion];
        }

        public static void SetDatabaseSchema(TestSchemaVersion testSchemaVersion, DatabaseSchema databaseSchema)
        {
            SchemaMetadata[testSchemaVersion] = databaseSchema;
        }
    }
}