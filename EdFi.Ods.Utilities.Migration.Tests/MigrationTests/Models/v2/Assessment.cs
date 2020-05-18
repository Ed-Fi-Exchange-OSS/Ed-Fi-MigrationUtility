// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v2
{
    public class Assessment : Version2DbModel
    {
        [Key]
        public string AssessmentIdentifier { get; set; }
        [Key]
        public string Namespace { get; set; }
        public string AssessmentTitle { get; set; }
        public int? AssessmentCategoryDescriptorId { get; set; }
        public string AssessmentForm { get; set; }
        public DateTime? RevisionDate { get; set; }
        public int? MaxRawScore { get; set; }
        public string Nomenclature { get; set; }
        public int? AssessmentPeriodDescriptorId { get; set; }
        public string AssessmentFamilyTitle { get; set; }
        public int? EducationOrganizationId { get; set; }
        public bool? AdaptiveAssessment { get; set; }
        public Guid Id { get; set; }
    }
}
