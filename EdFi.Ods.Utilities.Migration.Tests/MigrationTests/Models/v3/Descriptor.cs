// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.Linq;
using Shouldly;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v3
{
    public class Descriptor : Version3DbModel
    {
        [Key]
        public string CodeValue { get; set; }

        [Key]
        public string Namespace { get; set; }

        public int DescriptorId { get; set; }

        public string Description { get; set; }

        public string ShortDescription { get; set; }
    }

    public static class DescriptorResultShouldlyExtensions
    {
        public static void ShouldBe(this Descriptor actual, Descriptor expected)
        {
            actual.CodeValue.ShouldBe(expected.CodeValue);
            actual.Namespace.ShouldBe(expected.Namespace);
            actual.Description.ShouldBe(expected.Description);
            actual.ShortDescription.ShouldBe(expected.ShortDescription);
        }

        public static void ShouldBe(this List<Descriptor> actual, List<Descriptor> expected)
        {
            actual.Count.ShouldBe(expected.Count);
            var array1 = actual.OrderBy(x => x.CodeValue).ThenBy(x => x.Namespace).ToArray();
            var array2 = expected.OrderBy(x => x.CodeValue).ThenBy(x => x.Namespace).ToArray();

            for (var i = 0; i <= array1.Count() - 1; i++)
            {
                array1[i].ShouldBe(array2[i]);
            }
        }
    }
}
