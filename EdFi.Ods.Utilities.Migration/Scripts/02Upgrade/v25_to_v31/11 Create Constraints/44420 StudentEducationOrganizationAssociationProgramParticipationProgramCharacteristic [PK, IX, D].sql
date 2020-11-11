-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic_PK] on [edfi].[StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic] ADD CONSTRAINT [StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [ProgramCharacteristicDescriptorId], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic_StudentEducationOrganizationAssociationProgr] on [edfi].[StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic_StudentEducationOrganizationAssociationProgr] ON [edfi].[StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic] ([EducationOrganizationId], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic_ProgramCharacteristicDescriptor] on [edfi].[StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic_ProgramCharacteristicDescriptor] ON [edfi].[StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic] ([ProgramCharacteristicDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic] ADD CONSTRAINT [StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
