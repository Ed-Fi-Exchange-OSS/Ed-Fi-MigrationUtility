-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EntryType_PK] on [edfi].[EntryType]'
GO
ALTER TABLE [edfi].[EntryType] ADD CONSTRAINT [EntryType_PK] PRIMARY KEY CLUSTERED  ([EntryTypeId])
GO
PRINT N'Creating index [UX_EntryType_Id] on [edfi].[EntryType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_EntryType_Id] ON [edfi].[EntryType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[EntryType]'
GO
ALTER TABLE [edfi].[EntryType] ADD CONSTRAINT [EntryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[EntryType] ADD CONSTRAINT [EntryType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[EntryType] ADD CONSTRAINT [EntryType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

