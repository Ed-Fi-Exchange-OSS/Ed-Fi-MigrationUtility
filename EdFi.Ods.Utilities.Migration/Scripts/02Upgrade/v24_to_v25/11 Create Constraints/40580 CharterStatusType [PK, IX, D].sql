-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CharterStatusType_PK] on [edfi].[CharterStatusType]'
GO
ALTER TABLE [edfi].[CharterStatusType] ADD CONSTRAINT [CharterStatusType_PK] PRIMARY KEY CLUSTERED  ([CharterStatusTypeId])
GO
PRINT N'Creating index [UX_CharterStatusType_Id] on [edfi].[CharterStatusType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CharterStatusType_Id] ON [edfi].[CharterStatusType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[CharterStatusType]'
GO
ALTER TABLE [edfi].[CharterStatusType] ADD CONSTRAINT [CharterStatusType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CharterStatusType] ADD CONSTRAINT [CharterStatusType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CharterStatusType] ADD CONSTRAINT [CharterStatusType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

