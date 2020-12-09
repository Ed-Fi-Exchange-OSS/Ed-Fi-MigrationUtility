-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LevelDescriptorGradeLevel_PK] on [edfi].[LevelDescriptorGradeLevel]'
GO
ALTER TABLE [edfi].[LevelDescriptorGradeLevel] ADD CONSTRAINT [LevelDescriptorGradeLevel_PK] PRIMARY KEY CLUSTERED  ([LevelDescriptorId], [GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_LevelDescriptorGradeLevel_GradeLevelDescriptor] on [edfi].[LevelDescriptorGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_LevelDescriptorGradeLevel_GradeLevelDescriptor] ON [edfi].[LevelDescriptorGradeLevel] ([GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_LevelDescriptorGradeLevel_LevelDescriptor] on [edfi].[LevelDescriptorGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_LevelDescriptorGradeLevel_LevelDescriptor] ON [edfi].[LevelDescriptorGradeLevel] ([LevelDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[LevelDescriptorGradeLevel]'
GO
ALTER TABLE [edfi].[LevelDescriptorGradeLevel] ADD CONSTRAINT [LevelDescriptorGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

