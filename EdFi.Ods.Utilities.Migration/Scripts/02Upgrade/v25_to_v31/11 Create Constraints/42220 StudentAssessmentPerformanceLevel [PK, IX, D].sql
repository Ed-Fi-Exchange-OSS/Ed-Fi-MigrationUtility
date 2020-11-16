-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentAssessmentPerformanceLevel_PK] on [edfi].[StudentAssessmentPerformanceLevel]'
GO
ALTER TABLE [edfi].[StudentAssessmentPerformanceLevel] ADD CONSTRAINT [StudentAssessmentPerformanceLevel_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [AssessmentReportingMethodDescriptorId], [Namespace], [PerformanceLevelDescriptorId], [StudentAssessmentIdentifier], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentAssessmentPerformanceLevel_StudentAssessment] on [edfi].[StudentAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentPerformanceLevel_StudentAssessment] ON [edfi].[StudentAssessmentPerformanceLevel] ([AssessmentIdentifier], [Namespace], [StudentAssessmentIdentifier], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentAssessmentPerformanceLevel_AssessmentReportingMethodDescriptor] on [edfi].[StudentAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentPerformanceLevel_AssessmentReportingMethodDescriptor] ON [edfi].[StudentAssessmentPerformanceLevel] ([AssessmentReportingMethodDescriptorId])
GO

PRINT N'Creating index [FK_StudentAssessmentPerformanceLevel_PerformanceLevelDescriptor] on [edfi].[StudentAssessmentPerformanceLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentPerformanceLevel_PerformanceLevelDescriptor] ON [edfi].[StudentAssessmentPerformanceLevel] ([PerformanceLevelDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentAssessmentPerformanceLevel]'
GO
ALTER TABLE [edfi].[StudentAssessmentPerformanceLevel] ADD CONSTRAINT [StudentAssessmentPerformanceLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
