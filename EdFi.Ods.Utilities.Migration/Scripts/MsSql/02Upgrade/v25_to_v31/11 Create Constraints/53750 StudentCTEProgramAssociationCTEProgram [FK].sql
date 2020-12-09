-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentCTEProgramAssociationCTEProgram]'
GO
ALTER TABLE [edfi].[StudentCTEProgramAssociationCTEProgram] ADD CONSTRAINT [FK_StudentCTEProgramAssociationCTEProgram_CareerPathwayDescriptor] FOREIGN KEY ([CareerPathwayDescriptorId]) REFERENCES [edfi].[CareerPathwayDescriptor] ([CareerPathwayDescriptorId])
GO
ALTER TABLE [edfi].[StudentCTEProgramAssociationCTEProgram] ADD CONSTRAINT [FK_StudentCTEProgramAssociationCTEProgram_StudentCTEProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[StudentCTEProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE
GO
