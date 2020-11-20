-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentProgramParticipationProgramCharacteristic_PK] on [edfi].[StudentProgramParticipationProgramCharacteristic]'
GO
ALTER TABLE [edfi].[StudentProgramParticipationProgramCharacteristic] ADD CONSTRAINT [StudentProgramParticipationProgramCharacteristic_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [ProgramTypeId], [ProgramCharacteristicDescriptorId])
GO
PRINT N'Creating index [FK_StudentProgramParticipationProgramCharacteristic_ProgramCharacteristicDescriptor] on [edfi].[StudentProgramParticipationProgramCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentProgramParticipationProgramCharacteristic_ProgramCharacteristicDescriptor] ON [edfi].[StudentProgramParticipationProgramCharacteristic] ([ProgramCharacteristicDescriptorId])
GO
PRINT N'Creating index [FK_StudentProgramParticipationProgramCharacteristic_StudentProgramParticipation] on [edfi].[StudentProgramParticipationProgramCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentProgramParticipationProgramCharacteristic_StudentProgramParticipation] ON [edfi].[StudentProgramParticipationProgramCharacteristic] ([StudentUSI], [ProgramTypeId])
GO

PRINT N'Adding constraints to [edfi].[StudentProgramParticipationProgramCharacteristic]'
GO
ALTER TABLE [edfi].[StudentProgramParticipationProgramCharacteristic] ADD CONSTRAINT [StudentProgramParticipationProgramCharacteristic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

