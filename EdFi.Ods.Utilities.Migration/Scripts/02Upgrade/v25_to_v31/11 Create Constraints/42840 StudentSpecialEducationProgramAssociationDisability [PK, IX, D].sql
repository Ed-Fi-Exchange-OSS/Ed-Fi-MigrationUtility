-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentSpecialEducationProgramAssociationDisability_PK] on [edfi].[StudentSpecialEducationProgramAssociationDisability]'
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationDisability] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationDisability_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [DisabilityDescriptorId], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentSpecialEducationProgramAssociationDisability_StudentSpecialEducationProgramAssociation] on [edfi].[StudentSpecialEducationProgramAssociationDisability]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationDisability_StudentSpecialEducationProgramAssociation] ON [edfi].[StudentSpecialEducationProgramAssociationDisability] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentSpecialEducationProgramAssociationDisability_DisabilityDescriptor] on [edfi].[StudentSpecialEducationProgramAssociationDisability]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationDisability_DisabilityDescriptor] ON [edfi].[StudentSpecialEducationProgramAssociationDisability] ([DisabilityDescriptorId])
GO

PRINT N'Creating index [FK_StudentSpecialEducationProgramAssociationDisability_DisabilityDeterminationSourceTypeDescriptor] on [edfi].[StudentSpecialEducationProgramAssociationDisability]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationDisability_DisabilityDeterminationSourceTypeDescriptor] ON [edfi].[StudentSpecialEducationProgramAssociationDisability] ([DisabilityDeterminationSourceTypeDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentSpecialEducationProgramAssociationDisability]'
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationDisability] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationDisability_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
