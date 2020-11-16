-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [PostSecondaryEventCategoryType_PK] on [edfi].[PostSecondaryEventCategoryType]'
GO
ALTER TABLE [edfi].[PostSecondaryEventCategoryType] ADD CONSTRAINT [PostSecondaryEventCategoryType_PK] PRIMARY KEY CLUSTERED  ([PostSecondaryEventCategoryTypeId])
GO
PRINT N'Creating index [UX_PostSecondaryEventCategoryType_Id] on [edfi].[PostSecondaryEventCategoryType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_PostSecondaryEventCategoryType_Id] ON [edfi].[PostSecondaryEventCategoryType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[PostSecondaryEventCategoryType]'
GO
ALTER TABLE [edfi].[PostSecondaryEventCategoryType] ADD CONSTRAINT [PostSecondaryEventCategoryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[PostSecondaryEventCategoryType] ADD CONSTRAINT [PostSecondaryEventCategoryType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[PostSecondaryEventCategoryType] ADD CONSTRAINT [PostSecondaryEventCategoryType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

