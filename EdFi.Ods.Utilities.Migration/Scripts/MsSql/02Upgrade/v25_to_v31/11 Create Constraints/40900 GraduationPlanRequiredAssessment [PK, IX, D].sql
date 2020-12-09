-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GraduationPlanRequiredAssessment_PK] on [edfi].[GraduationPlanRequiredAssessment]'
GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessment] ADD CONSTRAINT [GraduationPlanRequiredAssessment_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [Namespace])
GO

PRINT N'Creating index [FK_GraduationPlanRequiredAssessment_Assessment] on [edfi].[GraduationPlanRequiredAssessment]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanRequiredAssessment_Assessment] ON [edfi].[GraduationPlanRequiredAssessment] ([AssessmentIdentifier], [Namespace])
GO

PRINT N'Creating index [FK_GraduationPlanRequiredAssessment_GraduationPlan] on [edfi].[GraduationPlanRequiredAssessment]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanRequiredAssessment_GraduationPlan] ON [edfi].[GraduationPlanRequiredAssessment] ([EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear])
GO

PRINT N'Adding constraints to [edfi].[GraduationPlanRequiredAssessment]'
GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessment] ADD CONSTRAINT [GraduationPlanRequiredAssessment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
