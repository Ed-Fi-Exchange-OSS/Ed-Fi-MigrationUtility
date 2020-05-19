-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentCharacteristicType_PK] on [edfi].[StudentCharacteristicType]'
GO
ALTER TABLE [edfi].[StudentCharacteristicType] ADD CONSTRAINT [StudentCharacteristicType_PK] PRIMARY KEY CLUSTERED  ([StudentCharacteristicTypeId])
GO
PRINT N'Creating index [UX_StudentCharacteristicType_Id] on [edfi].[StudentCharacteristicType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentCharacteristicType_Id] ON [edfi].[StudentCharacteristicType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[StudentCharacteristicType]'
GO
ALTER TABLE [edfi].[StudentCharacteristicType] ADD CONSTRAINT [StudentCharacteristicType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentCharacteristicType] ADD CONSTRAINT [StudentCharacteristicType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentCharacteristicType] ADD CONSTRAINT [StudentCharacteristicType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

