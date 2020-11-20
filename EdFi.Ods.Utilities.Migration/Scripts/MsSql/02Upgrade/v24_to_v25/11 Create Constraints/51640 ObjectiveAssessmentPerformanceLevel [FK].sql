-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ObjectiveAssessmentPerformanceLevel]'
GO
ALTER TABLE [edfi].[ObjectiveAssessmentPerformanceLevel] ADD CONSTRAINT [FK_ObjectiveAssessmentPerformanceLevel_AssessmentReportingMethodType] FOREIGN KEY ([AssessmentReportingMethodTypeId]) REFERENCES [edfi].[AssessmentReportingMethodType] ([AssessmentReportingMethodTypeId])
GO
ALTER TABLE [edfi].[ObjectiveAssessmentPerformanceLevel] ADD CONSTRAINT [FK_ObjectiveAssessmentPerformanceLevel_ObjectiveAssessment] FOREIGN KEY ([AssessmentIdentifier], [IdentificationCode], [Namespace]) REFERENCES [edfi].[ObjectiveAssessment] ([AssessmentIdentifier], [IdentificationCode], [Namespace]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[ObjectiveAssessmentPerformanceLevel] ADD CONSTRAINT [FK_ObjectiveAssessmentPerformanceLevel_PerformanceLevelDescriptor] FOREIGN KEY ([PerformanceLevelDescriptorId]) REFERENCES [edfi].[PerformanceLevelDescriptor] ([PerformanceLevelDescriptorId])
GO
ALTER TABLE [edfi].[ObjectiveAssessmentPerformanceLevel] ADD CONSTRAINT [FK_ObjectiveAssessmentPerformanceLevel_ResultDatatypeType] FOREIGN KEY ([ResultDatatypeTypeId]) REFERENCES [edfi].[ResultDatatypeType] ([ResultDatatypeTypeId])
GO
