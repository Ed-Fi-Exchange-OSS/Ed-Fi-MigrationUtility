-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService]'
GO
ALTER TABLE [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService] ADD CONSTRAINT [FK_StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService_SchoolFoodServiceProgramServiceDescriptor] FOREIGN KEY ([SchoolFoodServiceProgramServiceDescriptorId]) REFERENCES [edfi].[SchoolFoodServiceProgramServiceDescriptor] ([SchoolFoodServiceProgramServiceDescriptorId])
GO
ALTER TABLE [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService] ADD CONSTRAINT [FK_StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService_StudentSchoolFoodServiceProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[StudentSchoolFoodServiceProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE
GO
