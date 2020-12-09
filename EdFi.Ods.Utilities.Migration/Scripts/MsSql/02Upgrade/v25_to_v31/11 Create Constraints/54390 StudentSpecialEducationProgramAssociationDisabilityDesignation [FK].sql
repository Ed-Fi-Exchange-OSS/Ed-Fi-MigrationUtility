-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentSpecialEducationProgramAssociationDisabilityDesignation]'
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationDisabilityDesignation] ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationDisabilityDesignation_DisabilityDesignationDescriptor] FOREIGN KEY ([DisabilityDesignationDescriptorId]) REFERENCES [edfi].[DisabilityDesignationDescriptor] ([DisabilityDesignationDescriptorId])
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationDisabilityDesignation] ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationDisabilityDesignation_StudentSpecialEducationProgramAssociationDisability] FOREIGN KEY ([BeginDate], [DisabilityDescriptorId], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[StudentSpecialEducationProgramAssociationDisability] ([BeginDate], [DisabilityDescriptorId], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE
GO
