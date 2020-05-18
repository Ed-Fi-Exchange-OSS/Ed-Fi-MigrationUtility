-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentSpecialEducationProgramAssociationDisability]'
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationDisability] ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationDisability_DisabilityDescriptor] FOREIGN KEY ([DisabilityDescriptorId]) REFERENCES [edfi].[DisabilityDescriptor] ([DisabilityDescriptorId])
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationDisability] ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationDisability_DisabilityDeterminationSourceTypeDescriptor] FOREIGN KEY ([DisabilityDeterminationSourceTypeDescriptorId]) REFERENCES [edfi].[DisabilityDeterminationSourceTypeDescriptor] ([DisabilityDeterminationSourceTypeDescriptorId])
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationDisability] ADD CONSTRAINT [FK_StudentSpecialEducationProgramAssociationDisability_StudentSpecialEducationProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[StudentSpecialEducationProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE
GO
