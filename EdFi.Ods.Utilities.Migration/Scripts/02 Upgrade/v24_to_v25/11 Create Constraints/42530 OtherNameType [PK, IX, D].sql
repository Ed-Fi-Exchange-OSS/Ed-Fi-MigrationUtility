-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [OtherNameType_PK] on [edfi].[OtherNameType]'
GO
ALTER TABLE [edfi].[OtherNameType] ADD CONSTRAINT [OtherNameType_PK] PRIMARY KEY CLUSTERED  ([OtherNameTypeId])
GO
PRINT N'Creating index [UX_OtherNameType_Id] on [edfi].[OtherNameType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_OtherNameType_Id] ON [edfi].[OtherNameType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[OtherNameType]'
GO
ALTER TABLE [edfi].[OtherNameType] ADD CONSTRAINT [OtherNameType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[OtherNameType] ADD CONSTRAINT [OtherNameType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[OtherNameType] ADD CONSTRAINT [OtherNameType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

