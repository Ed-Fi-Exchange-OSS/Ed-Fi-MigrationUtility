-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EntryGradeLevelReasonType_PK] on [edfi].[EntryGradeLevelReasonType]'
GO
ALTER TABLE [edfi].[EntryGradeLevelReasonType] ADD CONSTRAINT [EntryGradeLevelReasonType_PK] PRIMARY KEY CLUSTERED  ([EntryGradeLevelReasonTypeId])
GO
PRINT N'Creating index [UX_EntryGradeLevelReasonType_Id] on [edfi].[EntryGradeLevelReasonType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_EntryGradeLevelReasonType_Id] ON [edfi].[EntryGradeLevelReasonType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[EntryGradeLevelReasonType]'
GO
ALTER TABLE [edfi].[EntryGradeLevelReasonType] ADD CONSTRAINT [EntryGradeLevelReasonType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[EntryGradeLevelReasonType] ADD CONSTRAINT [EntryGradeLevelReasonType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[EntryGradeLevelReasonType] ADD CONSTRAINT [EntryGradeLevelReasonType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

