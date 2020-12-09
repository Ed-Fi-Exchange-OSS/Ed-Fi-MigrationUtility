-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentCTEProgramAssociationService_PK] on [edfi].[StudentCTEProgramAssociationService]'
GO
ALTER TABLE [edfi].[StudentCTEProgramAssociationService] ADD CONSTRAINT [StudentCTEProgramAssociationService_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [ServiceDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentCTEProgramAssociationService_StudentCTEProgramAssociation] on [edfi].[StudentCTEProgramAssociationService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCTEProgramAssociationService_StudentCTEProgramAssociation] ON [edfi].[StudentCTEProgramAssociationService] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentCTEProgramAssociationService_ServiceDescriptor] on [edfi].[StudentCTEProgramAssociationService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCTEProgramAssociationService_ServiceDescriptor] ON [edfi].[StudentCTEProgramAssociationService] ([ServiceDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentCTEProgramAssociationService]'
GO
ALTER TABLE [edfi].[StudentCTEProgramAssociationService] ADD CONSTRAINT [StudentCTEProgramAssociationService_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
