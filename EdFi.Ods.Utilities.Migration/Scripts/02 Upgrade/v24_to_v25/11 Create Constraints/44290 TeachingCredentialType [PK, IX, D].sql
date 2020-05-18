-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [TeachingCredentialType_PK] on [edfi].[TeachingCredentialType]'
GO
ALTER TABLE [edfi].[TeachingCredentialType] ADD CONSTRAINT [TeachingCredentialType_PK] PRIMARY KEY CLUSTERED  ([TeachingCredentialTypeId])
GO
PRINT N'Creating index [UX_TeachingCredentialType_Id] on [edfi].[TeachingCredentialType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_TeachingCredentialType_Id] ON [edfi].[TeachingCredentialType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[TeachingCredentialType]'
GO
ALTER TABLE [edfi].[TeachingCredentialType] ADD CONSTRAINT [TeachingCredentialType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[TeachingCredentialType] ADD CONSTRAINT [TeachingCredentialType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[TeachingCredentialType] ADD CONSTRAINT [TeachingCredentialType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

