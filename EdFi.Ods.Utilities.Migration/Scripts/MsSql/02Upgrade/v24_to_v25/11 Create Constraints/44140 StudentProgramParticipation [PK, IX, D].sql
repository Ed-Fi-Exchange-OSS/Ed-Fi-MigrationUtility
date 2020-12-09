-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentProgramParticipation_PK] on [edfi].[StudentProgramParticipation]'
GO
ALTER TABLE [edfi].[StudentProgramParticipation] ADD CONSTRAINT [StudentProgramParticipation_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [ProgramTypeId])
GO
PRINT N'Creating index [FK_StudentProgramParticipation_ProgramType] on [edfi].[StudentProgramParticipation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentProgramParticipation_ProgramType] ON [edfi].[StudentProgramParticipation] ([ProgramTypeId])
GO
PRINT N'Creating index [FK_StudentProgramParticipation_Student] on [edfi].[StudentProgramParticipation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentProgramParticipation_Student] ON [edfi].[StudentProgramParticipation] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentProgramParticipation]'
GO
ALTER TABLE [edfi].[StudentProgramParticipation] ADD CONSTRAINT [StudentProgramParticipation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

