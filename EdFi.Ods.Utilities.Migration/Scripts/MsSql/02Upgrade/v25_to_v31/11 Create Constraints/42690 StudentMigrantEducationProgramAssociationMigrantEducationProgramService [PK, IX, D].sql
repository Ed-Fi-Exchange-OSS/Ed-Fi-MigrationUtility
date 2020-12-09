-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentMigrantEducationProgramAssociationMigrantEducationProgramService_PK] on [edfi].[StudentMigrantEducationProgramAssociationMigrantEducationProgramService]'
GO
ALTER TABLE [edfi].[StudentMigrantEducationProgramAssociationMigrantEducationProgramService] ADD CONSTRAINT [StudentMigrantEducationProgramAssociationMigrantEducationProgramService_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [MigrantEducationProgramServiceDescriptorId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentMigrantEducationProgramAssociationMigrantEducationProgramService_StudentMigrantEducationProgramAssociation] on [edfi].[StudentMigrantEducationProgramAssociationMigrantEducationProgramService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentMigrantEducationProgramAssociationMigrantEducationProgramService_StudentMigrantEducationProgramAssociation] ON [edfi].[StudentMigrantEducationProgramAssociationMigrantEducationProgramService] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentMigrantEducationProgramAssociationMigrantEducationProgramService_MigrantEducationProgramServiceDescriptor] on [edfi].[StudentMigrantEducationProgramAssociationMigrantEducationProgramService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentMigrantEducationProgramAssociationMigrantEducationProgramService_MigrantEducationProgramServiceDescriptor] ON [edfi].[StudentMigrantEducationProgramAssociationMigrantEducationProgramService] ([MigrantEducationProgramServiceDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentMigrantEducationProgramAssociationMigrantEducationProgramService]'
GO
ALTER TABLE [edfi].[StudentMigrantEducationProgramAssociationMigrantEducationProgramService] ADD CONSTRAINT [StudentMigrantEducationProgramAssociationMigrantEducationProgramService_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
