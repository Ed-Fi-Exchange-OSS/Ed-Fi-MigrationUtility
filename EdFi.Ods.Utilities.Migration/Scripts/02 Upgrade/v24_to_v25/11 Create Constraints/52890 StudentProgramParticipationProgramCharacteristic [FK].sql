-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentProgramParticipationProgramCharacteristic]'
GO
ALTER TABLE [edfi].[StudentProgramParticipationProgramCharacteristic] ADD CONSTRAINT [FK_StudentProgramParticipationProgramCharacteristic_ProgramCharacteristicDescriptor] FOREIGN KEY ([ProgramCharacteristicDescriptorId]) REFERENCES [edfi].[ProgramCharacteristicDescriptor] ([ProgramCharacteristicDescriptorId])
GO
ALTER TABLE [edfi].[StudentProgramParticipationProgramCharacteristic] ADD CONSTRAINT [FK_StudentProgramParticipationProgramCharacteristic_StudentProgramParticipation] FOREIGN KEY ([StudentUSI], [ProgramTypeId]) REFERENCES [edfi].[StudentProgramParticipation] ([StudentUSI], [ProgramTypeId]) ON DELETE CASCADE
GO
