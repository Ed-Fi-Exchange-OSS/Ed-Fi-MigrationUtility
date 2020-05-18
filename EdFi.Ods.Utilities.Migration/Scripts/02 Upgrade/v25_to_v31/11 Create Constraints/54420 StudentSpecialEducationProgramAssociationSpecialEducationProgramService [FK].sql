-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService]'
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService] ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationSpecialEducationProgramService_SpecialEducationProgramServiceDescriptor] FOREIGN KEY ([SpecialEducationProgramServiceDescriptorId]) REFERENCES [edfi].[SpecialEducationProgramServiceDescriptor] ([SpecialEducationProgramServiceDescriptorId])
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService] ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationSpecialEducationProgramService_StudentSpecialEducationProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[StudentSpecialEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE
GO
