-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic] ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic_ProgramCharacteristicDescriptor] FOREIGN KEY ([ProgramCharacteristicDescriptorId]) REFERENCES [edfi].[ProgramCharacteristicDescriptor] ([ProgramCharacteristicDescriptorId])
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic] ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic_StudentEducationOrganizationAssociationProgr] FOREIGN KEY ([EducationOrganizationId], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociationProgramParticipation] ([EducationOrganizationId], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE
GO
