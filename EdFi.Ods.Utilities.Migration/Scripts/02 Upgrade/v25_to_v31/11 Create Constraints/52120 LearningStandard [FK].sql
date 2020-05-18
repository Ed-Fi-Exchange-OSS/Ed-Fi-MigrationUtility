-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[LearningStandard]'
GO
ALTER TABLE [edfi].[LearningStandard] ADD CONSTRAINT [FK_LearningStandard_LearningStandard] FOREIGN KEY ([ParentLearningStandardId]) REFERENCES [edfi].[LearningStandard] ([LearningStandardId])
GO
ALTER TABLE [edfi].[LearningStandard] ADD CONSTRAINT [FK_LearningStandard_LearningStandardCategoryDescriptor] FOREIGN KEY ([LearningStandardCategoryDescriptorId]) REFERENCES [edfi].[LearningStandardCategoryDescriptor] ([LearningStandardCategoryDescriptorId])
GO
