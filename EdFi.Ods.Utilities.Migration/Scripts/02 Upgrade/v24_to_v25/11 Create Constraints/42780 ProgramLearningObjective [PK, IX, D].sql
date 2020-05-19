-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ProgramLearningObjective_PK] on [edfi].[ProgramLearningObjective]'
GO
ALTER TABLE [edfi].[ProgramLearningObjective] ADD CONSTRAINT [ProgramLearningObjective_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [LearningObjectiveId], [Namespace], [ProgramName], [ProgramTypeId])
GO
PRINT N'Creating index [FK_ProgramLearningObjective_Program] on [edfi].[ProgramLearningObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_ProgramLearningObjective_Program] ON [edfi].[ProgramLearningObjective] ([EducationOrganizationId], [ProgramTypeId], [ProgramName])
GO
PRINT N'Creating index [FK_ProgramLearningObjective_LearningObjective] on [edfi].[ProgramLearningObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_ProgramLearningObjective_LearningObjective] ON [edfi].[ProgramLearningObjective] ([LearningObjectiveId], [Namespace])
GO

PRINT N'Adding constraints to [edfi].[ProgramLearningObjective]'
GO
ALTER TABLE [edfi].[ProgramLearningObjective] ADD CONSTRAINT [ProgramLearningObjective_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

