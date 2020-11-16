-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GraduationPlan_PK] on [edfi].[GraduationPlan]'
GO
ALTER TABLE [edfi].[GraduationPlan] ADD CONSTRAINT [GraduationPlan_PK] PRIMARY KEY CLUSTERED  ([GraduationPlanTypeDescriptorId], [EducationOrganizationId], [GraduationSchoolYear])
GO
PRINT N'Creating index [UX_GraduationPlan_Id] on [edfi].[GraduationPlan]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_GraduationPlan_Id] ON [edfi].[GraduationPlan] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_GraduationPlan_EducationOrganization] on [edfi].[GraduationPlan]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlan_EducationOrganization] ON [edfi].[GraduationPlan] ([EducationOrganizationId])
GO
PRINT N'Creating index [FK_GraduationPlan_GraduationPlanTypeDescriptor] on [edfi].[GraduationPlan]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlan_GraduationPlanTypeDescriptor] ON [edfi].[GraduationPlan] ([GraduationPlanTypeDescriptorId])
GO
PRINT N'Creating index [FK_GraduationPlan_SchoolYearType] on [edfi].[GraduationPlan]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlan_SchoolYearType] ON [edfi].[GraduationPlan] ([GraduationSchoolYear])
GO
PRINT N'Creating index [FK_GraduationPlan_CreditType] on [edfi].[GraduationPlan]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlan_CreditType] ON [edfi].[GraduationPlan] ([TotalRequiredCreditTypeId])
GO

PRINT N'Adding constraints to [edfi].[GraduationPlan]'
GO
ALTER TABLE [edfi].[GraduationPlan] ADD CONSTRAINT [GraduationPlan_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[GraduationPlan] ADD CONSTRAINT [GraduationPlan_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[GraduationPlan] ADD CONSTRAINT [GraduationPlan_DF_Id] DEFAULT (newid()) FOR [Id]
GO

