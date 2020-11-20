-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

ALTER TABLE [edfi].[ReportCardGradePointAverage]
    ADD CONSTRAINT [ReportCardGradePointAverage_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [GradePointAverageTypeDescriptorId] ASC,
        [GradingPeriodDescriptorId] ASC,
        [GradingPeriodSchoolId] ASC,
        [GradingPeriodSchoolYear] ASC,
        [GradingPeriodSequence] ASC,
        [StudentUSI] ASC);
GO

ALTER TABLE [edfi].[StudentAcademicRecordGradePointAverage]
    ADD CONSTRAINT [StudentAcademicRecordGradePointAverage_PK] PRIMARY KEY CLUSTERED (
          [EducationOrganizationId] ASC,
          [GradePointAverageTypeDescriptorId] ASC,
          [SchoolYear] ASC,
          [StudentUSI] ASC,
          [TermDescriptorId] ASC);
GO