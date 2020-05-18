-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ObjectiveAssessmentPerformanceLevel_PK] on [edfi].[ObjectiveAssessmentPerformanceLevel]'
GO
ALTER TABLE [edfi].[ObjectiveAssessmentPerformanceLevel] ADD CONSTRAINT [ObjectiveAssessmentPerformanceLevel_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [AssessmentReportingMethodTypeId], [IdentificationCode], [Namespace], [PerformanceLevelDescriptorId])
GO
PRINT N'Creating index [FK_ObjectiveAssessmentPerformanceLevel_ObjectiveAssessment] on [edfi].[ObjectiveAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentPerformanceLevel_ObjectiveAssessment] ON [edfi].[ObjectiveAssessmentPerformanceLevel] ([AssessmentIdentifier], [IdentificationCode], [Namespace])
GO
PRINT N'Creating index [FK_ObjectiveAssessmentPerformanceLevel_AssessmentReportingMethodType] on [edfi].[ObjectiveAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentPerformanceLevel_AssessmentReportingMethodType] ON [edfi].[ObjectiveAssessmentPerformanceLevel] ([AssessmentReportingMethodTypeId])
GO
PRINT N'Creating index [FK_ObjectiveAssessmentPerformanceLevel_PerformanceLevelDescriptor] on [edfi].[ObjectiveAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentPerformanceLevel_PerformanceLevelDescriptor] ON [edfi].[ObjectiveAssessmentPerformanceLevel] ([PerformanceLevelDescriptorId])
GO
PRINT N'Creating index [FK_ObjectiveAssessmentPerformanceLevel_ResultDatatypeType] on [edfi].[ObjectiveAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentPerformanceLevel_ResultDatatypeType] ON [edfi].[ObjectiveAssessmentPerformanceLevel] ([ResultDatatypeTypeId])
GO

PRINT N'Adding constraints to [edfi].[ObjectiveAssessmentPerformanceLevel]'
GO
ALTER TABLE [edfi].[ObjectiveAssessmentPerformanceLevel] ADD CONSTRAINT [ObjectiveAssessmentPerformanceLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

