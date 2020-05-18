-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentCTEProgramAssociationCTEProgram_PK] on [edfi].[StudentCTEProgramAssociationCTEProgram]'
GO
ALTER TABLE [edfi].[StudentCTEProgramAssociationCTEProgram] ADD CONSTRAINT [StudentCTEProgramAssociationCTEProgram_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [CareerPathwayDescriptorId], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentCTEProgramAssociationCTEProgram_StudentCTEProgramAssociation] on [edfi].[StudentCTEProgramAssociationCTEProgram]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCTEProgramAssociationCTEProgram_StudentCTEProgramAssociation] ON [edfi].[StudentCTEProgramAssociationCTEProgram] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentCTEProgramAssociationCTEProgram_CareerPathwayDescriptor] on [edfi].[StudentCTEProgramAssociationCTEProgram]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCTEProgramAssociationCTEProgram_CareerPathwayDescriptor] ON [edfi].[StudentCTEProgramAssociationCTEProgram] ([CareerPathwayDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentCTEProgramAssociationCTEProgram]'
GO
ALTER TABLE [edfi].[StudentCTEProgramAssociationCTEProgram] ADD CONSTRAINT [StudentCTEProgramAssociationCTEProgram_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
