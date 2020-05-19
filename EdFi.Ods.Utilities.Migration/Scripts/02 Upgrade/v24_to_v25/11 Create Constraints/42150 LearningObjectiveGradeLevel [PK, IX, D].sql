-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LearningObjectiveGradeLevel_PK] on [edfi].[LearningObjectiveGradeLevel]'
GO
ALTER TABLE [edfi].[LearningObjectiveGradeLevel] ADD CONSTRAINT [LearningObjectiveGradeLevel_PK] PRIMARY KEY CLUSTERED  ([GradeLevelDescriptorId], [LearningObjectiveId], [Namespace])
GO
PRINT N'Creating index [FK_LearningObjectiveGradeLevel_GradeLevelDescriptor] on [edfi].[LearningObjectiveGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningObjectiveGradeLevel_GradeLevelDescriptor] ON [edfi].[LearningObjectiveGradeLevel] ([GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_LearningObjectiveGradeLevel_LearningObjective] on [edfi].[LearningObjectiveGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningObjectiveGradeLevel_LearningObjective] ON [edfi].[LearningObjectiveGradeLevel] ([LearningObjectiveId], [Namespace])
GO

PRINT N'Adding constraints to [edfi].[LearningObjectiveGradeLevel]'
GO
ALTER TABLE [edfi].[LearningObjectiveGradeLevel] ADD CONSTRAINT [LearningObjectiveGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

