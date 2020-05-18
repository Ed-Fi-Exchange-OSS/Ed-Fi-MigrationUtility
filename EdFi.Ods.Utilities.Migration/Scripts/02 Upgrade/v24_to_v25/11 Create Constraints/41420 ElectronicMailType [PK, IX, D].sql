-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ElectronicMailType_PK] on [edfi].[ElectronicMailType]'
GO
ALTER TABLE [edfi].[ElectronicMailType] ADD CONSTRAINT [ElectronicMailType_PK] PRIMARY KEY CLUSTERED  ([ElectronicMailTypeId])
GO
PRINT N'Creating index [UX_ElectronicMailType_Id] on [edfi].[ElectronicMailType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_ElectronicMailType_Id] ON [edfi].[ElectronicMailType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[ElectronicMailType]'
GO
ALTER TABLE [edfi].[ElectronicMailType] ADD CONSTRAINT [ElectronicMailType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[ElectronicMailType] ADD CONSTRAINT [ElectronicMailType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[ElectronicMailType] ADD CONSTRAINT [ElectronicMailType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

