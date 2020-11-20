-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [PublicationStatusType_PK] on [edfi].[PublicationStatusType]'
GO
ALTER TABLE [edfi].[PublicationStatusType] ADD CONSTRAINT [PublicationStatusType_PK] PRIMARY KEY CLUSTERED  ([PublicationStatusTypeId])
GO
PRINT N'Creating index [UX_PublicationStatusType_Id] on [edfi].[PublicationStatusType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_PublicationStatusType_Id] ON [edfi].[PublicationStatusType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[PublicationStatusType]'
GO
ALTER TABLE [edfi].[PublicationStatusType] ADD CONSTRAINT [PublicationStatusType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[PublicationStatusType] ADD CONSTRAINT [PublicationStatusType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[PublicationStatusType] ADD CONSTRAINT [PublicationStatusType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

