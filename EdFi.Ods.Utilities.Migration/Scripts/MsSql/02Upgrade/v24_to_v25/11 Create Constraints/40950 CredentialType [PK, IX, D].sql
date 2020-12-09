-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CredentialType_PK] on [edfi].[CredentialType]'
GO
ALTER TABLE [edfi].[CredentialType] ADD CONSTRAINT [CredentialType_PK] PRIMARY KEY CLUSTERED  ([CredentialTypeId])
GO
PRINT N'Creating index [UX_CredentialType_Id] on [edfi].[CredentialType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CredentialType_Id] ON [edfi].[CredentialType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[CredentialType]'
GO
ALTER TABLE [edfi].[CredentialType] ADD CONSTRAINT [CredentialType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CredentialType] ADD CONSTRAINT [CredentialType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CredentialType] ADD CONSTRAINT [CredentialType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

