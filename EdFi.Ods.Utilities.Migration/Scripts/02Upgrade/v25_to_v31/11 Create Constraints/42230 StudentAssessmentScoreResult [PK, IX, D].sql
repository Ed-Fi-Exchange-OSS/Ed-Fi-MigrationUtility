-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentAssessmentScoreResult_PK] on [edfi].[StudentAssessmentScoreResult]'
GO
ALTER TABLE [edfi].[StudentAssessmentScoreResult] ADD CONSTRAINT [StudentAssessmentScoreResult_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [AssessmentReportingMethodDescriptorId], [Namespace], [StudentAssessmentIdentifier], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentAssessmentScoreResult_StudentAssessment] on [edfi].[StudentAssessmentScoreResult]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentScoreResult_StudentAssessment] ON [edfi].[StudentAssessmentScoreResult] ([AssessmentIdentifier], [Namespace], [StudentAssessmentIdentifier], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentAssessmentScoreResult_AssessmentReportingMethodDescriptor] on [edfi].[StudentAssessmentScoreResult]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentScoreResult_AssessmentReportingMethodDescriptor] ON [edfi].[StudentAssessmentScoreResult] ([AssessmentReportingMethodDescriptorId])
GO

PRINT N'Creating index [FK_StudentAssessmentScoreResult_ResultDatatypeTypeDescriptor] on [edfi].[StudentAssessmentScoreResult]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentScoreResult_ResultDatatypeTypeDescriptor] ON [edfi].[StudentAssessmentScoreResult] ([ResultDatatypeTypeDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentAssessmentScoreResult]'
GO
ALTER TABLE [edfi].[StudentAssessmentScoreResult] ADD CONSTRAINT [StudentAssessmentScoreResult_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
