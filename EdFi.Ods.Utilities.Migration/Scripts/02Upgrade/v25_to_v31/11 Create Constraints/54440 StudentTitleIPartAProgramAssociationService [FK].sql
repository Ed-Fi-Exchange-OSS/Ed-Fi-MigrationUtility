-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentTitleIPartAProgramAssociationService]'
GO
ALTER TABLE [edfi].[StudentTitleIPartAProgramAssociationService] ADD CONSTRAINT [FK_StudentTitleIPartAProgramAssociationService_ServiceDescriptor] FOREIGN KEY ([ServiceDescriptorId]) REFERENCES [edfi].[ServiceDescriptor] ([ServiceDescriptorId])
GO
ALTER TABLE [edfi].[StudentTitleIPartAProgramAssociationService] ADD CONSTRAINT [FK_StudentTitleIPartAProgramAssociationService_StudentTitleIPartAProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[StudentTitleIPartAProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE
GO
