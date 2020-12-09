-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LeaveEventCategoryType_PK] on [edfi].[LeaveEventCategoryType]'
GO
ALTER TABLE [edfi].[LeaveEventCategoryType] ADD CONSTRAINT [LeaveEventCategoryType_PK] PRIMARY KEY CLUSTERED  ([LeaveEventCategoryTypeId])
GO
PRINT N'Creating index [UX_LeaveEventCategoryType_Id] on [edfi].[LeaveEventCategoryType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_LeaveEventCategoryType_Id] ON [edfi].[LeaveEventCategoryType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[LeaveEventCategoryType]'
GO
ALTER TABLE [edfi].[LeaveEventCategoryType] ADD CONSTRAINT [LeaveEventCategoryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[LeaveEventCategoryType] ADD CONSTRAINT [LeaveEventCategoryType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[LeaveEventCategoryType] ADD CONSTRAINT [LeaveEventCategoryType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

