-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService_PK] on [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService]'
GO
ALTER TABLE [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService] ADD CONSTRAINT [StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [SchoolFoodServiceProgramServiceDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService_StudentSchoolFoodServiceProgramAssociation] on [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService_StudentSchoolFoodServiceProgramAssociation] ON [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService_SchoolFoodServiceProgramServiceDescriptor] on [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService_SchoolFoodServiceProgramServiceDescriptor] ON [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService] ([SchoolFoodServiceProgramServiceDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService]'
GO
ALTER TABLE [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService] ADD CONSTRAINT [StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
