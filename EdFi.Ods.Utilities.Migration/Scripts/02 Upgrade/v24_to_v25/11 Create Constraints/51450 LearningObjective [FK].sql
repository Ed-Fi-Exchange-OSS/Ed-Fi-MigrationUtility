-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[LearningObjective]'
GO
ALTER TABLE [edfi].[LearningObjective] ADD CONSTRAINT [FK_LearningObjective_LearningObjective] FOREIGN KEY ([ParentLearningObjectiveId], [ParentNamespace]) REFERENCES [edfi].[LearningObjective] ([LearningObjectiveId], [Namespace])
GO
