-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult]'
GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult] ADD CONSTRAINT [FK_StudentAssessmentStudentObjectiveAssessmentScoreResult_AssessmentReportingMethodType] FOREIGN KEY ([AssessmentReportingMethodTypeId]) REFERENCES [edfi].[AssessmentReportingMethodType] ([AssessmentReportingMethodTypeId])
GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult] ADD CONSTRAINT [FK_StudentAssessmentStudentObjectiveAssessmentScoreResult_ResultDatatypeType] FOREIGN KEY ([ResultDatatypeTypeId]) REFERENCES [edfi].[ResultDatatypeType] ([ResultDatatypeTypeId])
GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult] ADD CONSTRAINT [FK_StudentAssessmentStudentObjectiveAssessmentScoreResult_StudentAssessmentStudentObjectiveAssessment] FOREIGN KEY ([AssessmentIdentifier], [IdentificationCode], [Namespace], [StudentAssessmentIdentifier], [StudentUSI]) REFERENCES [edfi].[StudentAssessmentStudentObjectiveAssessment] ([AssessmentIdentifier], [IdentificationCode], [Namespace], [StudentAssessmentIdentifier], [StudentUSI]) ON DELETE CASCADE
GO
