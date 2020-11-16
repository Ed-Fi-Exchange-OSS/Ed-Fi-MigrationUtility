-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GraduationPlanCreditsByCourseCourse_PK] on [edfi].[GraduationPlanCreditsByCourseCourse]'
GO
ALTER TABLE [edfi].[GraduationPlanCreditsByCourseCourse] ADD CONSTRAINT [GraduationPlanCreditsByCourseCourse_PK] PRIMARY KEY CLUSTERED  ([CourseCode], [CourseEducationOrganizationId], [CourseSetName], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear])
GO

PRINT N'Creating index [FK_GraduationPlanCreditsByCourseCourse_Course] on [edfi].[GraduationPlanCreditsByCourseCourse]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanCreditsByCourseCourse_Course] ON [edfi].[GraduationPlanCreditsByCourseCourse] ([CourseCode], [CourseEducationOrganizationId])
GO

PRINT N'Creating index [FK_GraduationPlanCreditsByCourseCourse_GraduationPlanCreditsByCourse] on [edfi].[GraduationPlanCreditsByCourseCourse]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanCreditsByCourseCourse_GraduationPlanCreditsByCourse] ON [edfi].[GraduationPlanCreditsByCourseCourse] ([CourseSetName], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear])
GO

PRINT N'Adding constraints to [edfi].[GraduationPlanCreditsByCourseCourse]'
GO
ALTER TABLE [edfi].[GraduationPlanCreditsByCourseCourse] ADD CONSTRAINT [GraduationPlanCreditsByCourseCourse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
