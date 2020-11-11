-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ProgramCharacteristicType_PK] on [edfi].[ProgramCharacteristicType]'
GO
ALTER TABLE [edfi].[ProgramCharacteristicType] ADD CONSTRAINT [ProgramCharacteristicType_PK] PRIMARY KEY CLUSTERED  ([ProgramCharacteristicTypeId])
GO
PRINT N'Creating index [UX_ProgramCharacteristicType_Id] on [edfi].[ProgramCharacteristicType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_ProgramCharacteristicType_Id] ON [edfi].[ProgramCharacteristicType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[ProgramCharacteristicType]'
GO
ALTER TABLE [edfi].[ProgramCharacteristicType] ADD CONSTRAINT [ProgramCharacteristicType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[ProgramCharacteristicType] ADD CONSTRAINT [ProgramCharacteristicType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[ProgramCharacteristicType] ADD CONSTRAINT [ProgramCharacteristicType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

