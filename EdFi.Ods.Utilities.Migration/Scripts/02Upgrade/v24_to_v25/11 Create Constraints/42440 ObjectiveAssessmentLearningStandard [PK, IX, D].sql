-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ObjectiveAssessmentLearningStandard_PK] on [edfi].[ObjectiveAssessmentLearningStandard]'
GO
ALTER TABLE [edfi].[ObjectiveAssessmentLearningStandard] ADD CONSTRAINT [ObjectiveAssessmentLearningStandard_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [IdentificationCode], [LearningStandardId], [Namespace])
GO
PRINT N'Creating index [FK_ObjectiveAssessmentLearningStandard_ObjectiveAssessment] on [edfi].[ObjectiveAssessmentLearningStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentLearningStandard_ObjectiveAssessment] ON [edfi].[ObjectiveAssessmentLearningStandard] ([AssessmentIdentifier], [IdentificationCode], [Namespace])
GO
PRINT N'Creating index [FK_ObjectiveAssessmentLearningStandard_LearningStandard] on [edfi].[ObjectiveAssessmentLearningStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_ObjectiveAssessmentLearningStandard_LearningStandard] ON [edfi].[ObjectiveAssessmentLearningStandard] ([LearningStandardId])
GO

PRINT N'Adding constraints to [edfi].[ObjectiveAssessmentLearningStandard]'
GO
ALTER TABLE [edfi].[ObjectiveAssessmentLearningStandard] ADD CONSTRAINT [ObjectiveAssessmentLearningStandard_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

