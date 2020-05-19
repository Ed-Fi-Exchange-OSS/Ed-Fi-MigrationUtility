-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GraduationPlanRequiredAssessmentPerformanceLevel_PK] on [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel]'
GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel] ADD CONSTRAINT [GraduationPlanRequiredAssessmentPerformanceLevel_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [Namespace])
GO

PRINT N'Creating index [FK_GraduationPlanRequiredAssessmentPerformanceLevel_AssessmentReportingMethodDescriptor] on [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanRequiredAssessmentPerformanceLevel_AssessmentReportingMethodDescriptor] ON [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel] ([AssessmentReportingMethodDescriptorId])
GO

PRINT N'Creating index [FK_GraduationPlanRequiredAssessmentPerformanceLevel_PerformanceLevelDescriptor] on [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanRequiredAssessmentPerformanceLevel_PerformanceLevelDescriptor] ON [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel] ([PerformanceLevelDescriptorId])
GO

PRINT N'Creating index [FK_GraduationPlanRequiredAssessmentPerformanceLevel_ResultDatatypeTypeDescriptor] on [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanRequiredAssessmentPerformanceLevel_ResultDatatypeTypeDescriptor] ON [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel] ([ResultDatatypeTypeDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel]'
GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel] ADD CONSTRAINT [GraduationPlanRequiredAssessmentPerformanceLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
