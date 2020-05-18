-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentPerformanceLevel_PK] on [edfi].[AssessmentPerformanceLevel]'
GO
ALTER TABLE [edfi].[AssessmentPerformanceLevel] ADD CONSTRAINT [AssessmentPerformanceLevel_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [AssessmentReportingMethodDescriptorId], [Namespace], [PerformanceLevelDescriptorId])
GO

PRINT N'Creating index [FK_AssessmentPerformanceLevel_Assessment] on [edfi].[AssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentPerformanceLevel_Assessment] ON [edfi].[AssessmentPerformanceLevel] ([AssessmentIdentifier], [Namespace])
GO

PRINT N'Creating index [FK_AssessmentPerformanceLevel_AssessmentReportingMethodDescriptor] on [edfi].[AssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentPerformanceLevel_AssessmentReportingMethodDescriptor] ON [edfi].[AssessmentPerformanceLevel] ([AssessmentReportingMethodDescriptorId])
GO

PRINT N'Creating index [FK_AssessmentPerformanceLevel_PerformanceLevelDescriptor] on [edfi].[AssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentPerformanceLevel_PerformanceLevelDescriptor] ON [edfi].[AssessmentPerformanceLevel] ([PerformanceLevelDescriptorId])
GO

PRINT N'Creating index [FK_AssessmentPerformanceLevel_ResultDatatypeTypeDescriptor] on [edfi].[AssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentPerformanceLevel_ResultDatatypeTypeDescriptor] ON [edfi].[AssessmentPerformanceLevel] ([ResultDatatypeTypeDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[AssessmentPerformanceLevel]'
GO
ALTER TABLE [edfi].[AssessmentPerformanceLevel] ADD CONSTRAINT [AssessmentPerformanceLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
