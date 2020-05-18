-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AddressType_PK] on [edfi].[AddressType]'
GO
ALTER TABLE [edfi].[AddressType] ADD CONSTRAINT [AddressType_PK] PRIMARY KEY CLUSTERED  ([AddressTypeId])
GO
PRINT N'Creating index [UX_AddressType_Id] on [edfi].[AddressType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AddressType_Id] ON [edfi].[AddressType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[AddressType]'
GO
ALTER TABLE [edfi].[AddressType] ADD CONSTRAINT [AddressType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[AddressType] ADD CONSTRAINT [AddressType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[AddressType] ADD CONSTRAINT [AddressType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

