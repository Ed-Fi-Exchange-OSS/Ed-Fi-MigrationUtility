-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GraduationPlanRequiredAssessmentScore_PK] on [edfi].[GraduationPlanRequiredAssessmentScore]'
GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentScore] ADD CONSTRAINT [GraduationPlanRequiredAssessmentScore_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [AssessmentReportingMethodTypeId], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [Namespace])
GO
PRINT N'Creating index [FK_GraduationPlanRequiredAssessmentScore_GraduationPlanRequiredAssessment] on [edfi].[GraduationPlanRequiredAssessmentScore]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanRequiredAssessmentScore_GraduationPlanRequiredAssessment] ON [edfi].[GraduationPlanRequiredAssessmentScore] ([AssessmentIdentifier], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [Namespace])
GO
PRINT N'Creating index [FK_GraduationPlanRequiredAssessmentScore_AssessmentReportingMethodType] on [edfi].[GraduationPlanRequiredAssessmentScore]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanRequiredAssessmentScore_AssessmentReportingMethodType] ON [edfi].[GraduationPlanRequiredAssessmentScore] ([AssessmentReportingMethodTypeId])
GO
PRINT N'Creating index [FK_GraduationPlanRequiredAssessmentScore_ResultDatatypeType] on [edfi].[GraduationPlanRequiredAssessmentScore]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanRequiredAssessmentScore_ResultDatatypeType] ON [edfi].[GraduationPlanRequiredAssessmentScore] ([ResultDatatypeTypeId])
GO

PRINT N'Adding constraints to [edfi].[GraduationPlanRequiredAssessmentScore]'
GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentScore] ADD CONSTRAINT [GraduationPlanRequiredAssessmentScore_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

