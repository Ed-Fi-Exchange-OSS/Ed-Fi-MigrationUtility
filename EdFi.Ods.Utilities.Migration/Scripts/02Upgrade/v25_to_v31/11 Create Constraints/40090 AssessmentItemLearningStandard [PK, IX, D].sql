-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentItemLearningStandard_PK] on [edfi].[AssessmentItemLearningStandard]'
GO
ALTER TABLE [edfi].[AssessmentItemLearningStandard] ADD CONSTRAINT [AssessmentItemLearningStandard_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [IdentificationCode], [LearningStandardId], [Namespace])
GO

PRINT N'Creating index [FK_AssessmentItemLearningStandard_AssessmentItem] on [edfi].[AssessmentItemLearningStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentItemLearningStandard_AssessmentItem] ON [edfi].[AssessmentItemLearningStandard] ([AssessmentIdentifier], [IdentificationCode], [Namespace])
GO

PRINT N'Creating index [FK_AssessmentItemLearningStandard_LearningStandard] on [edfi].[AssessmentItemLearningStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentItemLearningStandard_LearningStandard] ON [edfi].[AssessmentItemLearningStandard] ([LearningStandardId])
GO

PRINT N'Adding constraints to [edfi].[AssessmentItemLearningStandard]'
GO
ALTER TABLE [edfi].[AssessmentItemLearningStandard] ADD CONSTRAINT [AssessmentItemLearningStandard_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
