-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentHomelessProgramAssociationHomelessProgramService_PK] on [edfi].[StudentHomelessProgramAssociationHomelessProgramService]'
GO
ALTER TABLE [edfi].[StudentHomelessProgramAssociationHomelessProgramService] ADD CONSTRAINT [StudentHomelessProgramAssociationHomelessProgramService_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [HomelessProgramServiceDescriptorId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentHomelessProgramAssociationHomelessProgramService_StudentHomelessProgramAssociation] on [edfi].[StudentHomelessProgramAssociationHomelessProgramService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentHomelessProgramAssociationHomelessProgramService_StudentHomelessProgramAssociation] ON [edfi].[StudentHomelessProgramAssociationHomelessProgramService] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentHomelessProgramAssociationHomelessProgramService_HomelessProgramServiceDescriptor] on [edfi].[StudentHomelessProgramAssociationHomelessProgramService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentHomelessProgramAssociationHomelessProgramService_HomelessProgramServiceDescriptor] ON [edfi].[StudentHomelessProgramAssociationHomelessProgramService] ([HomelessProgramServiceDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentHomelessProgramAssociationHomelessProgramService]'
GO
ALTER TABLE [edfi].[StudentHomelessProgramAssociationHomelessProgramService] ADD CONSTRAINT [StudentHomelessProgramAssociationHomelessProgramService_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
