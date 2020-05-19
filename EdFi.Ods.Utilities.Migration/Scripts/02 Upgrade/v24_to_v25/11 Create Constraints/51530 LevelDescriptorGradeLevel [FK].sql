-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[LevelDescriptorGradeLevel]'
GO
ALTER TABLE [edfi].[LevelDescriptorGradeLevel] ADD CONSTRAINT [FK_LevelDescriptorGradeLevel_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId]) REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO
ALTER TABLE [edfi].[LevelDescriptorGradeLevel] ADD CONSTRAINT [FK_LevelDescriptorGradeLevel_LevelDescriptor] FOREIGN KEY ([LevelDescriptorId]) REFERENCES [edfi].[LevelDescriptor] ([LevelDescriptorId]) ON DELETE CASCADE
GO
