-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentTitleIPartAProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentTitleIPartAProgramAssociation] ADD CONSTRAINT [FK_StudentTitleIPartAProgramAssociation_StudentProgramAssociation] FOREIGN KEY ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate]) REFERENCES [edfi].[StudentProgramAssociation] ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[StudentTitleIPartAProgramAssociation] ADD CONSTRAINT [FK_StudentTitleIPartAProgramAssociation_TitleIPartAParticipantType] FOREIGN KEY ([TitleIPartAParticipantTypeId]) REFERENCES [edfi].[TitleIPartAParticipantType] ([TitleIPartAParticipantTypeId])
GO
