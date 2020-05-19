-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService_PK] on [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService]'
GO
ALTER TABLE [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService] ADD CONSTRAINT [StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [LanguageInstructionProgramServiceDescriptorId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService_StudentLanguageInstructionProgramAssociation] on [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService_StudentLanguageInstructionProgramAssociation] ON [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService_LanguageInstructionProgramServiceDescriptor] on [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService_LanguageInstructionProgramServiceDescriptor] ON [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService] ([LanguageInstructionProgramServiceDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService]'
GO
ALTER TABLE [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService] ADD CONSTRAINT [StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
