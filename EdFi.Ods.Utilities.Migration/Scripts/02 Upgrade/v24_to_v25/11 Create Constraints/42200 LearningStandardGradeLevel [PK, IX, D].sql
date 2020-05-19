-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LearningStandardGradeLevel_PK] on [edfi].[LearningStandardGradeLevel]'
GO
ALTER TABLE [edfi].[LearningStandardGradeLevel] ADD CONSTRAINT [LearningStandardGradeLevel_PK] PRIMARY KEY CLUSTERED  ([LearningStandardId], [GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_LearningStandardGradeLevel_GradeLevelDescriptor] on [edfi].[LearningStandardGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningStandardGradeLevel_GradeLevelDescriptor] ON [edfi].[LearningStandardGradeLevel] ([GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_LearningStandardGradeLevel_LearningStandard] on [edfi].[LearningStandardGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningStandardGradeLevel_LearningStandard] ON [edfi].[LearningStandardGradeLevel] ([LearningStandardId])
GO

PRINT N'Adding constraints to [edfi].[LearningStandardGradeLevel]'
GO
ALTER TABLE [edfi].[LearningStandardGradeLevel] ADD CONSTRAINT [LearningStandardGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

