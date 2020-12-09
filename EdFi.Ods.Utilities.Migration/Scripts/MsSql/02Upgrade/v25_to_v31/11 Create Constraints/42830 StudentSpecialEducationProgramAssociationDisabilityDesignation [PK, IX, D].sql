-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentSpecialEducationProgramAssociationDisabilityDesignation_PK] on [edfi].[StudentSpecialEducationProgramAssociationDisabilityDesignation]'
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationDisabilityDesignation] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationDisabilityDesignation_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [DisabilityDescriptorId], [DisabilityDesignationDescriptorId], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentSpecialEducationProgramAssociationDisabilityDesignation_StudentSpecialEducationProgramAssociationDisability] on [edfi].[StudentSpecialEducationProgramAssociationDisabilityDesignation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationDisabilityDesignation_StudentSpecialEducationProgramAssociationDisability] ON [edfi].[StudentSpecialEducationProgramAssociationDisabilityDesignation] ([BeginDate], [DisabilityDescriptorId], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentSpecialEducationProgramAssociationDisabilityDesignation_DisabilityDesignationDescriptor] on [edfi].[StudentSpecialEducationProgramAssociationDisabilityDesignation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationDisabilityDesignation_DisabilityDesignationDescriptor] ON [edfi].[StudentSpecialEducationProgramAssociationDisabilityDesignation] ([DisabilityDesignationDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentSpecialEducationProgramAssociationDisabilityDesignation]'
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationDisabilityDesignation] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationDisabilityDesignation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
