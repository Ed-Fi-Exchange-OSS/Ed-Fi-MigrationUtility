-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GraduationPlanCreditsByCourse_PK] on [edfi].[GraduationPlanCreditsByCourse]'
GO
ALTER TABLE [edfi].[GraduationPlanCreditsByCourse] ADD CONSTRAINT [GraduationPlanCreditsByCourse_PK] PRIMARY KEY CLUSTERED  ([CourseSetName], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear])
GO

PRINT N'Creating index [FK_GraduationPlanCreditsByCourse_CreditTypeDescriptor] on [edfi].[GraduationPlanCreditsByCourse]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanCreditsByCourse_CreditTypeDescriptor] ON [edfi].[GraduationPlanCreditsByCourse] ([CreditTypeDescriptorId])
GO

PRINT N'Creating index [FK_GraduationPlanCreditsByCourse_GraduationPlan] on [edfi].[GraduationPlanCreditsByCourse]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanCreditsByCourse_GraduationPlan] ON [edfi].[GraduationPlanCreditsByCourse] ([EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear])
GO

PRINT N'Creating index [FK_GraduationPlanCreditsByCourse_GradeLevelDescriptor] on [edfi].[GraduationPlanCreditsByCourse]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanCreditsByCourse_GradeLevelDescriptor] ON [edfi].[GraduationPlanCreditsByCourse] ([WhenTakenGradeLevelDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[GraduationPlanCreditsByCourse]'
GO
ALTER TABLE [edfi].[GraduationPlanCreditsByCourse] ADD CONSTRAINT [GraduationPlanCreditsByCourse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
