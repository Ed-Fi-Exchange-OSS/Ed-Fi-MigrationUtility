-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentTitleIPartAProgramAssociationService_PK] on [edfi].[StudentTitleIPartAProgramAssociationService]'
GO
ALTER TABLE [edfi].[StudentTitleIPartAProgramAssociationService] ADD CONSTRAINT [StudentTitleIPartAProgramAssociationService_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [ServiceDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentTitleIPartAProgramAssociationService_StudentTitleIPartAProgramAssociation] on [edfi].[StudentTitleIPartAProgramAssociationService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentTitleIPartAProgramAssociationService_StudentTitleIPartAProgramAssociation] ON [edfi].[StudentTitleIPartAProgramAssociationService] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentTitleIPartAProgramAssociationService_ServiceDescriptor] on [edfi].[StudentTitleIPartAProgramAssociationService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentTitleIPartAProgramAssociationService_ServiceDescriptor] ON [edfi].[StudentTitleIPartAProgramAssociationService] ([ServiceDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentTitleIPartAProgramAssociationService]'
GO
ALTER TABLE [edfi].[StudentTitleIPartAProgramAssociationService] ADD CONSTRAINT [StudentTitleIPartAProgramAssociationService_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
