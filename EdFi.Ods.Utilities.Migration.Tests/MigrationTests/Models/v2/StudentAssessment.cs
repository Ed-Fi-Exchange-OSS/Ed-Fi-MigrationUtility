// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v2;

public class StudentAssessment : Version2DbModel
{
    [Key]
    public string AssessmentIdentifier { get; set; }
    [Key]
    public string Namespace { get; set; }
    [Key]
    public string StudentAssessmentIdentifier { get; set; }
    [Key]
    public int StudentUSI { get; set; }
    public DateTime AdministrationDate { get; set; }
    public DateTime? AdministrationEndDate { get; set; }
    public string SerialNumber { get; set; }
    public int? AdministrationLanguageDescriptorId { get; set; }
    public int? AdministrationEnvironmentTypeId { get; set; }
    public int? RetestIndicatorTypeId { get; set; }
    public int? ReasonNotTestedTypeId { get; set; }
    public int? WhenAssessedGradeLevelDescriptorId { get; set; }
    public int? EventCircumstanceTypeId { get; set; }
    public string EventDescription { get; set; }
}