-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LearningObjective_PK] on [edfi].[LearningObjective]'
GO
ALTER TABLE [edfi].[LearningObjective] ADD CONSTRAINT [LearningObjective_PK] PRIMARY KEY CLUSTERED  ([LearningObjectiveId], [Namespace])
GO

PRINT N'Creating index [UX_LearningObjective_Id] on [edfi].[LearningObjective]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_LearningObjective_Id] ON [edfi].[LearningObjective] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_LearningObjective_LearningObjective] on [edfi].[LearningObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningObjective_LearningObjective] ON [edfi].[LearningObjective] ([ParentLearningObjectiveId], [ParentNamespace])
GO

PRINT N'Adding constraints to [edfi].[LearningObjective]'
GO
ALTER TABLE [edfi].[LearningObjective] ADD CONSTRAINT [LearningObjective_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[LearningObjective] ADD CONSTRAINT [LearningObjective_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[LearningObjective] ADD CONSTRAINT [LearningObjective_DF_Id] DEFAULT (newid()) FOR [Id]
GO
