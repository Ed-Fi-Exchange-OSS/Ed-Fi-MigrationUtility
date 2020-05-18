-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LearningStandardContentStandardAuthor_PK] on [edfi].[LearningStandardContentStandardAuthor]'
GO
ALTER TABLE [edfi].[LearningStandardContentStandardAuthor] ADD CONSTRAINT [LearningStandardContentStandardAuthor_PK] PRIMARY KEY CLUSTERED  ([LearningStandardId], [Author])
GO
PRINT N'Creating index [FK_LearningStandardContentStandardAuthor_LearningStandardContentStandard] on [edfi].[LearningStandardContentStandardAuthor]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningStandardContentStandardAuthor_LearningStandardContentStandard] ON [edfi].[LearningStandardContentStandardAuthor] ([LearningStandardId])
GO

PRINT N'Adding constraints to [edfi].[LearningStandardContentStandardAuthor]'
GO
ALTER TABLE [edfi].[LearningStandardContentStandardAuthor] ADD CONSTRAINT [LearningStandardContentStandardAuthor_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

