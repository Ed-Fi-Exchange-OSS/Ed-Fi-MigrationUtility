-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GraduationPlanRequiredAssessmentAssessmentPerformanceLevel_PK] on [edfi].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel]'
GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel] ADD CONSTRAINT [GraduationPlanRequiredAssessmentAssessmentPerformanceLevel_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [Namespace])
GO
PRINT N'Creating index [FK_GraduationPlanRequiredAssessmentAssessmentPerformanceLevel_GraduationPlanRequiredAssessment] on [edfi].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanRequiredAssessmentAssessmentPerformanceLevel_GraduationPlanRequiredAssessment] ON [edfi].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel] ([AssessmentIdentifier], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [Namespace])
GO
PRINT N'Creating index [FK_GraduationPlanRequiredAssessmentAssessmentPerformanceLevel_AssessmentReportingMethodType] on [edfi].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanRequiredAssessmentAssessmentPerformanceLevel_AssessmentReportingMethodType] ON [edfi].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel] ([AssessmentReportingMethodTypeId])
GO
PRINT N'Creating index [FK_GraduationPlanRequiredAssessmentAssessmentPerformanceLevel_PerformanceLevelDescriptor] on [edfi].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanRequiredAssessmentAssessmentPerformanceLevel_PerformanceLevelDescriptor] ON [edfi].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel] ([PerformanceLevelDescriptorId])
GO
PRINT N'Creating index [FK_GraduationPlanRequiredAssessmentAssessmentPerformanceLevel_ResultDatatypeType] on [edfi].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_GraduationPlanRequiredAssessmentAssessmentPerformanceLevel_ResultDatatypeType] ON [edfi].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel] ([ResultDatatypeTypeId])
GO

PRINT N'Adding constraints to [edfi].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel]'
GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentAssessmentPerformanceLevel] ADD CONSTRAINT [GraduationPlanRequiredAssessmentAssessmentPerformanceLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

