-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [TermType_PK] on [edfi].[TermType]'
GO
ALTER TABLE [edfi].[TermType] ADD CONSTRAINT [TermType_PK] PRIMARY KEY CLUSTERED  ([TermTypeId])
GO
PRINT N'Creating index [UX_TermType_Id] on [edfi].[TermType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_TermType_Id] ON [edfi].[TermType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[TermType]'
GO
ALTER TABLE [edfi].[TermType] ADD CONSTRAINT [TermType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[TermType] ADD CONSTRAINT [TermType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[TermType] ADD CONSTRAINT [TermType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

