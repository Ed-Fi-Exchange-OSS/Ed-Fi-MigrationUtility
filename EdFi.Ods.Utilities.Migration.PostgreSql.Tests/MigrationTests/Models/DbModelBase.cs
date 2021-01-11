// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Linq;
using EdFi.Ods.Utilities.Migration.Enumerations;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.PostgreSql.Tests.MigrationTests.Models
{
    public abstract class DbModelBase
    {
        public abstract EdFiOdsVersion Version { get; }

        public string FullTableName => $"{SchemaName}.{TableName}";

        protected virtual string SchemaName => "edfi";

        protected virtual string TableName => GetType().Name;

        public string GetUniqueKey()
        {
            var keyProperties = GetType()
                               .GetProperties()
                               .Where(p => Attribute.IsDefined(p, typeof(KeyAttribute)))
                               .ToList();

            if (!keyProperties.Any())
            {
                throw new InvalidOperationException($"Primary key attributes not defined on model {GetType().FullName}");
            }

            var uniqueKeyString = $"{{{string.Join(", ", keyProperties.Select(p => $"{p.Name}:{p.GetValue(this)}"))}}}";

            return uniqueKeyString;
        }
    }

    public static class DbModelBaseExtensions
    {
        public static void ShouldHaveTheSameKeyAs(this DbModelBase actual, DbModelBase expected)
        {
            actual.GetUniqueKey().Equals(expected.GetUniqueKey()).ShouldBe(true);
        }
    }

    public class KeyAttribute : Attribute { }
}
