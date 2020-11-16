-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LearningObjectiveLearningStandard_PK] on [edfi].[LearningObjectiveLearningStandard]'
GO
ALTER TABLE [edfi].[LearningObjectiveLearningStandard] ADD CONSTRAINT [LearningObjectiveLearningStandard_PK] PRIMARY KEY CLUSTERED  ([LearningObjectiveId], [LearningStandardId], [Namespace])
GO

PRINT N'Creating index [FK_LearningObjectiveLearningStandard_LearningObjective] on [edfi].[LearningObjectiveLearningStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningObjectiveLearningStandard_LearningObjective] ON [edfi].[LearningObjectiveLearningStandard] ([LearningObjectiveId], [Namespace])
GO

PRINT N'Creating index [FK_LearningObjectiveLearningStandard_LearningStandard] on [edfi].[LearningObjectiveLearningStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningObjectiveLearningStandard_LearningStandard] ON [edfi].[LearningObjectiveLearningStandard] ([LearningStandardId])
GO

PRINT N'Adding constraints to [edfi].[LearningObjectiveLearningStandard]'
GO
ALTER TABLE [edfi].[LearningObjectiveLearningStandard] ADD CONSTRAINT [LearningObjectiveLearningStandard_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
