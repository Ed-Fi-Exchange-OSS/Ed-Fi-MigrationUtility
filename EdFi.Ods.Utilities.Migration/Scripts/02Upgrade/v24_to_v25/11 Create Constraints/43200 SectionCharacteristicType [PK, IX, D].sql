-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SectionCharacteristicType_PK] on [edfi].[SectionCharacteristicType]'
GO
ALTER TABLE [edfi].[SectionCharacteristicType] ADD CONSTRAINT [SectionCharacteristicType_PK] PRIMARY KEY CLUSTERED  ([SectionCharacteristicTypeId])
GO
PRINT N'Creating index [UX_SectionCharacteristicType_Id] on [edfi].[SectionCharacteristicType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_SectionCharacteristicType_Id] ON [edfi].[SectionCharacteristicType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[SectionCharacteristicType]'
GO
ALTER TABLE [edfi].[SectionCharacteristicType] ADD CONSTRAINT [SectionCharacteristicType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[SectionCharacteristicType] ADD CONSTRAINT [SectionCharacteristicType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[SectionCharacteristicType] ADD CONSTRAINT [SectionCharacteristicType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

