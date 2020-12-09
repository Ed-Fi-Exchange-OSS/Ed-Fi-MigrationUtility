-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AchievementCategoryType_PK] on [edfi].[AchievementCategoryType]'
GO
ALTER TABLE [edfi].[AchievementCategoryType] ADD CONSTRAINT [AchievementCategoryType_PK] PRIMARY KEY CLUSTERED  ([AchievementCategoryTypeId])
GO
PRINT N'Creating index [UX_AchievementCategoryType_Id] on [edfi].[AchievementCategoryType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AchievementCategoryType_Id] ON [edfi].[AchievementCategoryType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[AchievementCategoryType]'
GO
ALTER TABLE [edfi].[AchievementCategoryType] ADD CONSTRAINT [AchievementCategoryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[AchievementCategoryType] ADD CONSTRAINT [AchievementCategoryType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[AchievementCategoryType] ADD CONSTRAINT [AchievementCategoryType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

