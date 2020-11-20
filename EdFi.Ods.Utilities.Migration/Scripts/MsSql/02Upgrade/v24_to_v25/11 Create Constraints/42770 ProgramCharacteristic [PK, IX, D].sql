-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ProgramCharacteristic_PK] on [edfi].[ProgramCharacteristic]'
GO
ALTER TABLE [edfi].[ProgramCharacteristic] ADD CONSTRAINT [ProgramCharacteristic_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [ProgramTypeId], [ProgramCharacteristicDescriptorId], [ProgramName])
GO
PRINT N'Creating index [FK_ProgramCharacteristic_Program] on [edfi].[ProgramCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_ProgramCharacteristic_Program] ON [edfi].[ProgramCharacteristic] ([EducationOrganizationId], [ProgramTypeId], [ProgramName])
GO
PRINT N'Creating index [FK_ProgramCharacteristic_ProgramCharacteristicDescriptor] on [edfi].[ProgramCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_ProgramCharacteristic_ProgramCharacteristicDescriptor] ON [edfi].[ProgramCharacteristic] ([ProgramCharacteristicDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[ProgramCharacteristic]'
GO
ALTER TABLE [edfi].[ProgramCharacteristic] ADD CONSTRAINT [ProgramCharacteristic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

