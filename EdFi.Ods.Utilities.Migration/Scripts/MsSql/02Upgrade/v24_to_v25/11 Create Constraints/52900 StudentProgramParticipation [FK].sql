-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentProgramParticipation]'
GO
ALTER TABLE [edfi].[StudentProgramParticipation] ADD CONSTRAINT [FK_StudentProgramParticipation_ProgramType] FOREIGN KEY ([ProgramTypeId]) REFERENCES [edfi].[ProgramType] ([ProgramTypeId])
GO
ALTER TABLE [edfi].[StudentProgramParticipation] ADD CONSTRAINT [FK_StudentProgramParticipation_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI]) ON DELETE CASCADE
GO
