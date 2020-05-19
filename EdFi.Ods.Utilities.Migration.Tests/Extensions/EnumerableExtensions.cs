// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.Linq;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.Extensions
{
    public static class EnumerableExtensions
    {
        public static T Single<T>(this IEnumerable<dynamic> list)
        {
            return (T) list.Single();
        }

        public static void ShouldHaveTheSameKeysAs<T>(this IEnumerable<T> thisEnumerable, IEnumerable<T> otherEnumerable)
            where T : DbModelBase
        {
            var thisArray = thisEnumerable
                           .OrderBy(x => x.GetUniqueKey())
                           .ToArray();

            var otherArray = otherEnumerable
                            .OrderBy(x => x.GetUniqueKey())
                            .ToArray();

            thisArray.Length.ShouldBe(otherArray.Length, "List lengths not equal");

            thisArray.Select(x => x.GetUniqueKey()).ShouldBeSubsetOf(
                otherArray.Select(x => x.GetUniqueKey()),
                @"List lengths are equal, but contain different set of primary keys.");

            for (var i = 0; i < thisArray.Length; i++)
            {
                thisArray[i].GetUniqueKey()
                            .Equals(otherArray[i].GetUniqueKey())
                            .ShouldBe(
                                 true,
                                 $"Primary keys are equivalent, but not in the same order.  First difference was found at index {i}");
            }
        }
    }
}
