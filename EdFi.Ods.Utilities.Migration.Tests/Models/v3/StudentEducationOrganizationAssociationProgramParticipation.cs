// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;

namespace EdFi.Ods.Utilities.Migration.Tests.Models.v3
{
    public class StudentEducationOrganizationAssociationProgramParticipation : Version3DbModel
    {
        [Key]
        public int EducationOrganizationId { get; set; }

        [Key]
        public int ProgramTypeDescriptorId { get; set; }

        [Key]
        public int StudentUSI { get; set; }

        public DateTime? BeginDate { get; set; }

        public DateTime? EndDate { get; set; }

        public string DesignatedBy { get; set; }
    }
}
