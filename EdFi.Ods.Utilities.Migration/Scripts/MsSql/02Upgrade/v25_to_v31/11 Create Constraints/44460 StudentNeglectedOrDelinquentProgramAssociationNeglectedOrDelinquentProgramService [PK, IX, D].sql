-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService_PK] on [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService]'
GO
ALTER TABLE [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService] ADD CONSTRAINT [StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [NeglectedOrDelinquentProgramServiceDescriptorId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService_StudentNeglectedOrDelinquentProgramAssociat] on [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService_StudentNeglectedOrDelinquentProgramAssociat] ON [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService_NeglectedOrDelinquentProgramServiceDescript] on [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService_NeglectedOrDelinquentProgramServiceDescript] ON [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService] ([NeglectedOrDelinquentProgramServiceDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService]'
GO
ALTER TABLE [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService] ADD CONSTRAINT [StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
