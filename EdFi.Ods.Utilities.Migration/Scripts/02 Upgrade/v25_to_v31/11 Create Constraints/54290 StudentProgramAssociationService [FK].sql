-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentProgramAssociationService]'
GO
ALTER TABLE [edfi].[StudentProgramAssociationService] ADD CONSTRAINT [FK_StudentProgramAssociationService_ServiceDescriptor] FOREIGN KEY ([ServiceDescriptorId]) REFERENCES [edfi].[ServiceDescriptor] ([ServiceDescriptorId])
GO
ALTER TABLE [edfi].[StudentProgramAssociationService] ADD CONSTRAINT [FK_StudentProgramAssociationService_StudentProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[StudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE
GO
