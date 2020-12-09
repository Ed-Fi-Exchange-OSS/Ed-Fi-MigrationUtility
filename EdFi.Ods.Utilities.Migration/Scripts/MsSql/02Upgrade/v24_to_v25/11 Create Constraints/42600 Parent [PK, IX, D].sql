-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Parent_PK] on [edfi].[Parent]'
GO
ALTER TABLE [edfi].[Parent] ADD CONSTRAINT [Parent_PK] PRIMARY KEY CLUSTERED  ([ParentUSI])
GO
PRINT N'Creating index [UX_Parent_Id] on [edfi].[Parent]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Parent_Id] ON [edfi].[Parent] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [Parent_UI_ParentUniqueId] on [edfi].[Parent]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [Parent_UI_ParentUniqueId] ON [edfi].[Parent] ([ParentUniqueId])
GO
PRINT N'Creating index [FK_Parent_SexType] on [edfi].[Parent]'
GO
CREATE NONCLUSTERED INDEX [FK_Parent_SexType] ON [edfi].[Parent] ([SexTypeId])
GO

PRINT N'Adding constraints to [edfi].[Parent]'
GO
ALTER TABLE [edfi].[Parent] ADD CONSTRAINT [Parent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Parent] ADD CONSTRAINT [Parent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Parent] ADD CONSTRAINT [Parent_DF_Id] DEFAULT (newid()) FOR [Id]
GO

