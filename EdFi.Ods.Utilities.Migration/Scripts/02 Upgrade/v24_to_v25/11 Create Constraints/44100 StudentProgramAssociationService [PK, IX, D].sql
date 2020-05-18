-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentProgramAssociationService_PK] on [edfi].[StudentProgramAssociationService]'
GO
ALTER TABLE [edfi].[StudentProgramAssociationService] ADD CONSTRAINT [StudentProgramAssociationService_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate], [ServiceDescriptorId])
GO
PRINT N'Creating index [FK_StudentProgramAssociationService_ServiceDescriptor] on [edfi].[StudentProgramAssociationService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentProgramAssociationService_ServiceDescriptor] ON [edfi].[StudentProgramAssociationService] ([ServiceDescriptorId])
GO
PRINT N'Creating index [FK_StudentProgramAssociationService_StudentProgramAssociation] on [edfi].[StudentProgramAssociationService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentProgramAssociationService_StudentProgramAssociation] ON [edfi].[StudentProgramAssociationService] ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate])
GO

PRINT N'Adding constraints to [edfi].[StudentProgramAssociationService]'
GO
ALTER TABLE [edfi].[StudentProgramAssociationService] ADD CONSTRAINT [StudentProgramAssociationService_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

