-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ObjectiveAssessmentPerformanceLevel_PK] on [edfi].[ObjectiveAssessmentPerformanceLevel]'
GO
ALTER TABLE [edfi].[ObjectiveAssessmentPerformanceLevel] ADD CONSTRAINT [ObjectiveAssessmentPerformanceLevel_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [AssessmentReportingMethodDescriptorId], [IdentificationCode], [Namespace], [PerformanceLevelDescriptorId])
GO

PRINT N'Creating index [FK_ObjectiveAssessmentPerformanceLevel_ObjectiveAssessment] on [edfi].[ObjectiveAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentPerformanceLevel_ObjectiveAssessment] ON [edfi].[ObjectiveAssessmentPerformanceLevel] ([AssessmentIdentifier], [IdentificationCode], [Namespace])
GO

PRINT N'Creating index [FK_ObjectiveAssessmentPerformanceLevel_AssessmentReportingMethodDescriptor] on [edfi].[ObjectiveAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentPerformanceLevel_AssessmentReportingMethodDescriptor] ON [edfi].[ObjectiveAssessmentPerformanceLevel] ([AssessmentReportingMethodDescriptorId])
GO

PRINT N'Creating index [FK_ObjectiveAssessmentPerformanceLevel_PerformanceLevelDescriptor] on [edfi].[ObjectiveAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentPerformanceLevel_PerformanceLevelDescriptor] ON [edfi].[ObjectiveAssessmentPerformanceLevel] ([PerformanceLevelDescriptorId])
GO

PRINT N'Creating index [FK_ObjectiveAssessmentPerformanceLevel_ResultDatatypeTypeDescriptor] on [edfi].[ObjectiveAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentPerformanceLevel_ResultDatatypeTypeDescriptor] ON [edfi].[ObjectiveAssessmentPerformanceLevel] ([ResultDatatypeTypeDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[ObjectiveAssessmentPerformanceLevel]'
GO
ALTER TABLE [edfi].[ObjectiveAssessmentPerformanceLevel] ADD CONSTRAINT [ObjectiveAssessmentPerformanceLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
