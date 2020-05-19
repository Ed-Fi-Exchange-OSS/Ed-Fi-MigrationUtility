-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[LearningStandardContentStandardAuthor]'
GO
ALTER TABLE [edfi].[LearningStandardContentStandardAuthor] ADD CONSTRAINT [FK_LearningStandardContentStandardAuthor_LearningStandardContentStandard] FOREIGN KEY ([LearningStandardId]) REFERENCES [edfi].[LearningStandardContentStandard] ([LearningStandardId]) ON DELETE CASCADE
GO
