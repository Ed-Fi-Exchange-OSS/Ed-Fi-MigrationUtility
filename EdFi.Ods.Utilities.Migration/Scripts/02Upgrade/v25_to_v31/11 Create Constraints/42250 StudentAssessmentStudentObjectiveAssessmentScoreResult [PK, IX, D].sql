-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentAssessmentStudentObjectiveAssessmentScoreResult_PK] on [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult]'
GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult] ADD CONSTRAINT [StudentAssessmentStudentObjectiveAssessmentScoreResult_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [AssessmentReportingMethodDescriptorId], [IdentificationCode], [Namespace], [StudentAssessmentIdentifier], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentAssessmentStudentObjectiveAssessmentScoreResult_StudentAssessmentStudentObjectiveAssessment] on [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentStudentObjectiveAssessmentScoreResult_StudentAssessmentStudentObjectiveAssessment] ON [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult] ([AssessmentIdentifier], [IdentificationCode], [Namespace], [StudentAssessmentIdentifier], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentAssessmentStudentObjectiveAssessmentScoreResult_AssessmentReportingMethodDescriptor] on [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentStudentObjectiveAssessmentScoreResult_AssessmentReportingMethodDescriptor] ON [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult] ([AssessmentReportingMethodDescriptorId])
GO

PRINT N'Creating index [FK_StudentAssessmentStudentObjectiveAssessmentScoreResult_ResultDatatypeTypeDescriptor] on [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentStudentObjectiveAssessmentScoreResult_ResultDatatypeTypeDescriptor] ON [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult] ([ResultDatatypeTypeDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult]'
GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult] ADD CONSTRAINT [StudentAssessmentStudentObjectiveAssessmentScoreResult_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
