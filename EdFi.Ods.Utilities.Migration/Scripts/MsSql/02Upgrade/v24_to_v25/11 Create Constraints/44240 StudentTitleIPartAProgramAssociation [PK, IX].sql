-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentTitleIPartAProgramAssociation_PK] on [edfi].[StudentTitleIPartAProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentTitleIPartAProgramAssociation] ADD CONSTRAINT [StudentTitleIPartAProgramAssociation_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate])
GO
PRINT N'Creating index [FK_StudentTitleIPartAProgramAssociation_StudentProgramAssociation] on [edfi].[StudentTitleIPartAProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentTitleIPartAProgramAssociation_StudentProgramAssociation] ON [edfi].[StudentTitleIPartAProgramAssociation] ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate])
GO
PRINT N'Creating index [FK_StudentTitleIPartAProgramAssociation_TitleIPartAParticipantType] on [edfi].[StudentTitleIPartAProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentTitleIPartAProgramAssociation_TitleIPartAParticipantType] ON [edfi].[StudentTitleIPartAProgramAssociation] ([TitleIPartAParticipantTypeId])
GO

