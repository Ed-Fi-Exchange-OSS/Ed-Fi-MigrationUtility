-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentAssessmentStudentObjectiveAssessment_PK] on [edfi].[StudentAssessmentStudentObjectiveAssessment]'
GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessment] ADD CONSTRAINT [StudentAssessmentStudentObjectiveAssessment_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [IdentificationCode], [Namespace], [StudentAssessmentIdentifier], [StudentUSI])
GO
PRINT N'Creating index [FK_StudentAssessmentStudentObjectiveAssessment_ObjectiveAssessment] on [edfi].[StudentAssessmentStudentObjectiveAssessment]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentStudentObjectiveAssessment_ObjectiveAssessment] ON [edfi].[StudentAssessmentStudentObjectiveAssessment] ([AssessmentIdentifier], [IdentificationCode], [Namespace])
GO
PRINT N'Creating index [FK_StudentAssessmentStudentObjectiveAssessment_StudentAssessment] on [edfi].[StudentAssessmentStudentObjectiveAssessment]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentAssessmentStudentObjectiveAssessment_StudentAssessment] ON [edfi].[StudentAssessmentStudentObjectiveAssessment] ([AssessmentIdentifier], [Namespace], [StudentAssessmentIdentifier], [StudentUSI])
GO
PRINT N'Adding constraints to [edfi].[StudentAssessmentStudentObjectiveAssessment]'
GO
ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessment] ADD CONSTRAINT [StudentAssessmentStudentObjectiveAssessment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
