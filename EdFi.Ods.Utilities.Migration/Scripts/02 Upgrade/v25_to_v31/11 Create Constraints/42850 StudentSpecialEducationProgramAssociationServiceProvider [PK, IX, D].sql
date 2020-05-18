-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentSpecialEducationProgramAssociationServiceProvider_PK] on [edfi].[StudentSpecialEducationProgramAssociationServiceProvider]'
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationServiceProvider] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationServiceProvider_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StaffUSI], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentSpecialEducationProgramAssociationServiceProvider_StudentSpecialEducationProgramAssociation] on [edfi].[StudentSpecialEducationProgramAssociationServiceProvider]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationServiceProvider_StudentSpecialEducationProgramAssociation] ON [edfi].[StudentSpecialEducationProgramAssociationServiceProvider] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentSpecialEducationProgramAssociationServiceProvider_Staff] on [edfi].[StudentSpecialEducationProgramAssociationServiceProvider]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationServiceProvider_Staff] ON [edfi].[StudentSpecialEducationProgramAssociationServiceProvider] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentSpecialEducationProgramAssociationServiceProvider]'
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationServiceProvider] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationServiceProvider_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
