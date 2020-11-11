-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SexType_PK] on [edfi].[SexType]'
GO
ALTER TABLE [edfi].[SexType] ADD CONSTRAINT [SexType_PK] PRIMARY KEY CLUSTERED  ([SexTypeId])
GO
PRINT N'Creating index [UX_SexType_Id] on [edfi].[SexType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_SexType_Id] ON [edfi].[SexType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[SexType]'
GO
ALTER TABLE [edfi].[SexType] ADD CONSTRAINT [SexType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[SexType] ADD CONSTRAINT [SexType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[SexType] ADD CONSTRAINT [SexType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

