-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ProgramLearningObjective]'
GO
ALTER TABLE [edfi].[ProgramLearningObjective] ADD CONSTRAINT [FK_ProgramLearningObjective_LearningObjective] FOREIGN KEY ([LearningObjectiveId], [Namespace]) REFERENCES [edfi].[LearningObjective] ([LearningObjectiveId], [Namespace])
GO
ALTER TABLE [edfi].[ProgramLearningObjective] ADD CONSTRAINT [FK_ProgramLearningObjective_Program] FOREIGN KEY ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId]) REFERENCES [edfi].[Program] ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId]) ON DELETE CASCADE
GO
