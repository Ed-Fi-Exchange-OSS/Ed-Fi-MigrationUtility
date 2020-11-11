-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentHomelessProgramAssociationHomelessProgramService]'
GO
ALTER TABLE [edfi].[StudentHomelessProgramAssociationHomelessProgramService] ADD CONSTRAINT [FK_StudentHomelessProgramAssociationHomelessProgramService_HomelessProgramServiceDescriptor] FOREIGN KEY ([HomelessProgramServiceDescriptorId]) REFERENCES [edfi].[HomelessProgramServiceDescriptor] ([HomelessProgramServiceDescriptorId])
GO
ALTER TABLE [edfi].[StudentHomelessProgramAssociationHomelessProgramService] ADD CONSTRAINT [FK_StudentHomelessProgramAssociationHomelessProgramService_StudentHomelessProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[StudentHomelessProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE
GO
