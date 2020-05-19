-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LearningObjectiveContentStandardAuthor_PK] on [edfi].[LearningObjectiveContentStandardAuthor]'
GO
ALTER TABLE [edfi].[LearningObjectiveContentStandardAuthor] ADD CONSTRAINT [LearningObjectiveContentStandardAuthor_PK] PRIMARY KEY CLUSTERED  ([Author], [LearningObjectiveId], [Namespace])
GO

PRINT N'Creating index [FK_LearningObjectiveContentStandardAuthor_LearningObjectiveContentStandard] on [edfi].[LearningObjectiveContentStandardAuthor]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningObjectiveContentStandardAuthor_LearningObjectiveContentStandard] ON [edfi].[LearningObjectiveContentStandardAuthor] ([LearningObjectiveId], [Namespace])
GO

PRINT N'Adding constraints to [edfi].[LearningObjectiveContentStandardAuthor]'
GO
ALTER TABLE [edfi].[LearningObjectiveContentStandardAuthor] ADD CONSTRAINT [LearningObjectiveContentStandardAuthor_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
