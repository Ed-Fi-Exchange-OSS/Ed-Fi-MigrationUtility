-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SchoolCategoryType_PK] on [edfi].[SchoolCategoryType]'
GO
ALTER TABLE [edfi].[SchoolCategoryType] ADD CONSTRAINT [SchoolCategoryType_PK] PRIMARY KEY CLUSTERED  ([SchoolCategoryTypeId])
GO
PRINT N'Creating index [UX_SchoolCategoryType_Id] on [edfi].[SchoolCategoryType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_SchoolCategoryType_Id] ON [edfi].[SchoolCategoryType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[SchoolCategoryType]'
GO
ALTER TABLE [edfi].[SchoolCategoryType] ADD CONSTRAINT [SchoolCategoryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[SchoolCategoryType] ADD CONSTRAINT [SchoolCategoryType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[SchoolCategoryType] ADD CONSTRAINT [SchoolCategoryType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

