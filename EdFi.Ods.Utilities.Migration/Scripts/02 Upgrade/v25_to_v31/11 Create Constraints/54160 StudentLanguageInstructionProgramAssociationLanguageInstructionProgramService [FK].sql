-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService]'
GO
ALTER TABLE [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService] ADD CONSTRAINT [FK_StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService_LanguageInstructionProgramServiceDescriptor] FOREIGN KEY ([LanguageInstructionProgramServiceDescriptorId]) REFERENCES [edfi].[LanguageInstructionProgramServiceDescriptor] ([LanguageInstructionProgramServiceDescriptorId])
GO
ALTER TABLE [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService] ADD CONSTRAINT [FK_StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService_StudentLanguageInstructionProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[StudentLanguageInstructionProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE
GO
