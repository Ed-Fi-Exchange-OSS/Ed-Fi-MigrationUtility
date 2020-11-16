-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel]'
GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel] ADD CONSTRAINT [FK_GraduationPlanRequiredAssessmentPerformanceLevel_AssessmentReportingMethodDescriptor] FOREIGN KEY ([AssessmentReportingMethodDescriptorId]) REFERENCES [edfi].[AssessmentReportingMethodDescriptor] ([AssessmentReportingMethodDescriptorId])
GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel] ADD CONSTRAINT [FK_GraduationPlanRequiredAssessmentPerformanceLevel_GraduationPlanRequiredAssessment] FOREIGN KEY ([AssessmentIdentifier], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [Namespace]) REFERENCES [edfi].[GraduationPlanRequiredAssessment] ([AssessmentIdentifier], [EducationOrganizationId], [GraduationPlanTypeDescriptorId], [GraduationSchoolYear], [Namespace]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel] ADD CONSTRAINT [FK_GraduationPlanRequiredAssessmentPerformanceLevel_PerformanceLevelDescriptor] FOREIGN KEY ([PerformanceLevelDescriptorId]) REFERENCES [edfi].[PerformanceLevelDescriptor] ([PerformanceLevelDescriptorId])
GO
ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel] ADD CONSTRAINT [FK_GraduationPlanRequiredAssessmentPerformanceLevel_ResultDatatypeTypeDescriptor] FOREIGN KEY ([ResultDatatypeTypeDescriptorId]) REFERENCES [edfi].[ResultDatatypeTypeDescriptor] ([ResultDatatypeTypeDescriptorId])
GO
