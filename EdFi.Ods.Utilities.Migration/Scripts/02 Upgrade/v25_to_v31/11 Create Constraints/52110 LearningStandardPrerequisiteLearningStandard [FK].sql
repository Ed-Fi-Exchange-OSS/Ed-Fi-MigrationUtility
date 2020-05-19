-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[LearningStandardPrerequisiteLearningStandard]'
GO
ALTER TABLE [edfi].[LearningStandardPrerequisiteLearningStandard] ADD CONSTRAINT [FK_LearningStandardPrerequisiteLearningStandard_LearningStandard] FOREIGN KEY ([LearningStandardId]) REFERENCES [edfi].[LearningStandard] ([LearningStandardId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[LearningStandardPrerequisiteLearningStandard] ADD CONSTRAINT [FK_LearningStandardPrerequisiteLearningStandard_LearningStandard1] FOREIGN KEY ([PrerequisiteLearningStandardId]) REFERENCES [edfi].[LearningStandard] ([LearningStandardId])
GO
