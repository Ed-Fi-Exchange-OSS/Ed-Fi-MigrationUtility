-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[GraduationPlanRequiredAssessmentScore]'
GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentScore] ADD CONSTRAINT [FK_GraduationPlanRequiredAssessmentScore_AssessmentReportingMethodType] FOREIGN KEY ([AssessmentReportingMethodTypeId]) REFERENCES [edfi].[AssessmentReportingMethodType] ([AssessmentReportingMethodTypeId])
GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentScore] ADD CONSTRAINT [FK_GraduationPlanRequiredAssessmentScore_GraduationPlanRequiredAssessment] FOREIGN KEY ([AssessmentIdentifier], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [Namespace]) REFERENCES [edfi].[GraduationPlanRequiredAssessment] ([AssessmentIdentifier], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [Namespace])
GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentScore] ADD CONSTRAINT [FK_GraduationPlanRequiredAssessmentScore_ResultDatatypeType] FOREIGN KEY ([ResultDatatypeTypeId]) REFERENCES [edfi].[ResultDatatypeType] ([ResultDatatypeTypeId])
GO
