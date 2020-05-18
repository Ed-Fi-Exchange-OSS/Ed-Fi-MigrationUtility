-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentAssessmentScoreResult_PK] on [edfi].[StudentAssessmentScoreResult]'
GO
ALTER TABLE [edfi].[StudentAssessmentScoreResult] ADD CONSTRAINT [StudentAssessmentScoreResult_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [AssessmentReportingMethodTypeId], [Namespace], [StudentAssessmentIdentifier], [StudentUSI])
GO
PRINT N'Creating index [FK_StudentAssessmentScoreResult_StudentAssessment] on [edfi].[StudentAssessmentScoreResult]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentScoreResult_StudentAssessment] ON [edfi].[StudentAssessmentScoreResult] ([AssessmentIdentifier], [Namespace], [StudentAssessmentIdentifier], [StudentUSI])
GO
PRINT N'Creating index [FK_StudentAssessmentScoreResult_AssessmentReportingMethodType] on [edfi].[StudentAssessmentScoreResult]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentScoreResult_AssessmentReportingMethodType] ON [edfi].[StudentAssessmentScoreResult] ([AssessmentReportingMethodTypeId])
GO
PRINT N'Creating index [FK_StudentAssessmentScoreResult_ResultDatatypeType] on [edfi].[StudentAssessmentScoreResult]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentScoreResult_ResultDatatypeType] ON [edfi].[StudentAssessmentScoreResult] ([ResultDatatypeTypeId])
GO
PRINT N'Adding constraints to [edfi].[StudentAssessmentScoreResult]'
GO
ALTER TABLE [edfi].[StudentAssessmentScoreResult] ADD CONSTRAINT [StudentAssessmentScoreResult_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
