-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[GraduationPlanCreditsByCourseCourse]'
GO
ALTER TABLE [edfi].[GraduationPlanCreditsByCourseCourse] ADD CONSTRAINT [FK_GraduationPlanCreditsByCourseCourse_Course] FOREIGN KEY ([CourseCode], [CourseEducationOrganizationId]) REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO
ALTER TABLE [edfi].[GraduationPlanCreditsByCourseCourse] ADD CONSTRAINT [FK_GraduationPlanCreditsByCourseCourse_GraduationPlanCreditsByCourse] FOREIGN KEY ([CourseSetName], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear]) REFERENCES [edfi].[GraduationPlanCreditsByCourse] ([CourseSetName], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear]) ON DELETE CASCADE
GO
