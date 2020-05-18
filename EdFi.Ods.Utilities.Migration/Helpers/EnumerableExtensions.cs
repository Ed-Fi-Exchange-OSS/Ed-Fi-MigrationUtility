// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using System.Collections.Generic;
using System.Linq;

namespace EdFi.Ods.Utilities.Migration.Helpers
{
    public static class EnumerableExtensions
    {
        public static string ToBulletedList<T>(this IEnumerable<T> items)
        {
            var stringList = items.Select(x => x.ToString()).ToList();
            return $@"{Environment.NewLine} * {string.Join($"{Environment.NewLine} * ", stringList)}";
        }

        public static bool ContainsPartial<T>(this IEnumerable<T> items, IEnumerable<T> comparisonItems, double minPercentMatch)
        {
            var itemList = items.ToList();
            var comparisonList = comparisonItems.ToList();

            if (!itemList.Any() && !comparisonList.Any())
            {
                return true;
            }

            var minimumMatchingItems = (int) Math.Floor(comparisonList.Count * minPercentMatch);
            var actualMatchingItems = itemList.Count(comparisonList.Contains);
            return actualMatchingItems >= minimumMatchingItems;
        }

        public static bool ContainsAll<T>(this IEnumerable<T> items, IEnumerable<T> comparisonItems)
        {
            return !comparisonItems.Except(items).Any();
        }

        public static bool ContainsNone<T>(this IEnumerable<T> items, IEnumerable<T> comparisonItems)
        {
            return !comparisonItems.Any(c => items.Any(i => i.Equals(c)));
        }


    }
}
