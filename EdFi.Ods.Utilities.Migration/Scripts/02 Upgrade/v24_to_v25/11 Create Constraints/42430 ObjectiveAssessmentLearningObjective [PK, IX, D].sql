-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ObjectiveAssessmentLearningObjective_PK] on [edfi].[ObjectiveAssessmentLearningObjective]'
GO
ALTER TABLE [edfi].[ObjectiveAssessmentLearningObjective] ADD CONSTRAINT [ObjectiveAssessmentLearningObjective_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [IdentificationCode], [LearningObjectiveId], [LearningObjectiveNamespace], [Namespace])
GO
PRINT N'Creating index [FK_ObjectiveAssessmentLearningObjective_ObjectiveAssessment] on [edfi].[ObjectiveAssessmentLearningObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentLearningObjective_ObjectiveAssessment] ON [edfi].[ObjectiveAssessmentLearningObjective] ([AssessmentIdentifier], [IdentificationCode], [Namespace])
GO
PRINT N'Creating index [FK_ObjectiveAssessmentLearningObjective_LearningObjective] on [edfi].[ObjectiveAssessmentLearningObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentLearningObjective_LearningObjective] ON [edfi].[ObjectiveAssessmentLearningObjective] ([LearningObjectiveId], [LearningObjectiveNamespace])
GO

PRINT N'Adding constraints to [edfi].[ObjectiveAssessmentLearningObjective]'
GO
ALTER TABLE [edfi].[ObjectiveAssessmentLearningObjective] ADD CONSTRAINT [ObjectiveAssessmentLearningObjective_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

