-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[GraduationPlanRequiredAssessment]'
GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessment] ADD CONSTRAINT [FK_GraduationPlanRequiredAssessment_Assessment] FOREIGN KEY ([AssessmentIdentifier], [Namespace]) REFERENCES [edfi].[Assessment] ([AssessmentIdentifier], [Namespace])
GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessment] ADD CONSTRAINT [FK_GraduationPlanRequiredAssessment_GraduationPlan] FOREIGN KEY ([GraduationPlanTypeDescriptorId], [EducationOrganizationId], [GraduationSchoolYear]) REFERENCES [edfi].[GraduationPlan] ([GraduationPlanTypeDescriptorId], [EducationOrganizationId], [GraduationSchoolYear])
GO
