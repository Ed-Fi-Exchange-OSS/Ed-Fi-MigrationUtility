-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GraduationPlanCreditsBySubject_PK] on [edfi].[GraduationPlanCreditsBySubject]'
GO
ALTER TABLE [edfi].[GraduationPlanCreditsBySubject] ADD CONSTRAINT [GraduationPlanCreditsBySubject_PK] PRIMARY KEY CLUSTERED  ([AcademicSubjectDescriptorId], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear])
GO

PRINT N'Creating index [FK_GraduationPlanCreditsBySubject_AcademicSubjectDescriptor] on [edfi].[GraduationPlanCreditsBySubject]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanCreditsBySubject_AcademicSubjectDescriptor] ON [edfi].[GraduationPlanCreditsBySubject] ([AcademicSubjectDescriptorId])
GO

PRINT N'Creating index [FK_GraduationPlanCreditsBySubject_CreditTypeDescriptor] on [edfi].[GraduationPlanCreditsBySubject]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanCreditsBySubject_CreditTypeDescriptor] ON [edfi].[GraduationPlanCreditsBySubject] ([CreditTypeDescriptorId])
GO

PRINT N'Creating index [FK_GraduationPlanCreditsBySubject_GraduationPlan] on [edfi].[GraduationPlanCreditsBySubject]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanCreditsBySubject_GraduationPlan] ON [edfi].[GraduationPlanCreditsBySubject] ([EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear])
GO

PRINT N'Adding constraints to [edfi].[GraduationPlanCreditsBySubject]'
GO
ALTER TABLE [edfi].[GraduationPlanCreditsBySubject] ADD CONSTRAINT [GraduationPlanCreditsBySubject_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
