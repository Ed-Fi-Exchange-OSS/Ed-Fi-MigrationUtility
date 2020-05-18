// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v3
{
    public class StudentEducationOrganizationResponsibilityAssociation : Version3DbModel
    {
        [Key]
        public DateTime BeginDate { get; set; }

        [Key]
        public int EducationOrganizationId { get; set; }

        [Key]
        public int ResponsibilityDescriptorId { get; set; }

        [Key]
        public int StudentUSI { get; set; }

        public DateTime? EndDate { get; set; }
    }
}
