-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ProgramLearningStandard_PK] on [edfi].[ProgramLearningStandard]'
GO
ALTER TABLE [edfi].[ProgramLearningStandard] ADD CONSTRAINT [ProgramLearningStandard_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [ProgramTypeId], [LearningStandardId], [ProgramName])
GO
PRINT N'Creating index [FK_ProgramLearningStandard_Program] on [edfi].[ProgramLearningStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_ProgramLearningStandard_Program] ON [edfi].[ProgramLearningStandard] ([EducationOrganizationId], [ProgramTypeId], [ProgramName])
GO
PRINT N'Creating index [FK_ProgramLearningStandard_LearningStandard] on [edfi].[ProgramLearningStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_ProgramLearningStandard_LearningStandard] ON [edfi].[ProgramLearningStandard] ([LearningStandardId])
GO

PRINT N'Adding constraints to [edfi].[ProgramLearningStandard]'
GO
ALTER TABLE [edfi].[ProgramLearningStandard] ADD CONSTRAINT [ProgramLearningStandard_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

