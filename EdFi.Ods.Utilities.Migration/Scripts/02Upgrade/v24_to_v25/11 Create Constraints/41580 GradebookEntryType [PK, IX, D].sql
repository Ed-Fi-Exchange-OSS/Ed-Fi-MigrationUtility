-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GradebookEntryType_PK] on [edfi].[GradebookEntryType]'
GO
ALTER TABLE [edfi].[GradebookEntryType] ADD CONSTRAINT [GradebookEntryType_PK] PRIMARY KEY CLUSTERED  ([GradebookEntryTypeId])
GO
PRINT N'Creating index [UX_GradebookEntryType_Id] on [edfi].[GradebookEntryType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_GradebookEntryType_Id] ON [edfi].[GradebookEntryType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[GradebookEntryType]'
GO
ALTER TABLE [edfi].[GradebookEntryType] ADD CONSTRAINT [GradebookEntryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[GradebookEntryType] ADD CONSTRAINT [GradebookEntryType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[GradebookEntryType] ADD CONSTRAINT [GradebookEntryType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

