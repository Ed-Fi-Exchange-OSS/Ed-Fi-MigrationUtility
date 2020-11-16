-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentCTEProgramAssociationCTEProgram]'
GO
ALTER TABLE [edfi].[StudentCTEProgramAssociationCTEProgram] ADD CONSTRAINT [FK_StudentCTEProgramAssociationCTEProgram_CareerPathwayType] FOREIGN KEY ([CareerPathwayTypeId]) REFERENCES [edfi].[CareerPathwayType] ([CareerPathwayTypeId])
GO
ALTER TABLE [edfi].[StudentCTEProgramAssociationCTEProgram] ADD CONSTRAINT [FK_StudentCTEProgramAssociationCTEProgram_StudentCTEProgramAssociation] FOREIGN KEY ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate]) REFERENCES [edfi].[StudentCTEProgramAssociation] ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate]) ON DELETE CASCADE
GO
