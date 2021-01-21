﻿// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

namespace EdFi.Ods.Utilities.Migration.Tests.Models.v2
{
    public class AssessmentAcademicSubject : Version2DbModel
    {
        [Key]
        public int AcademicSubjectDescriptorId { get; set; }
        [Key]
        public string AssessmentIdentifier { get; set; }
        [Key]
        public string Namespace { get; set; }
    }
}