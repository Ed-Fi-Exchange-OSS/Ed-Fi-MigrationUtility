-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AttendanceEventCategoryType_PK] on [edfi].[AttendanceEventCategoryType]'
GO
ALTER TABLE [edfi].[AttendanceEventCategoryType] ADD CONSTRAINT [AttendanceEventCategoryType_PK] PRIMARY KEY CLUSTERED  ([AttendanceEventCategoryTypeId])
GO
PRINT N'Creating index [UX_AttendanceEventCategoryType_Id] on [edfi].[AttendanceEventCategoryType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AttendanceEventCategoryType_Id] ON [edfi].[AttendanceEventCategoryType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[AttendanceEventCategoryType]'
GO
ALTER TABLE [edfi].[AttendanceEventCategoryType] ADD CONSTRAINT [AttendanceEventCategoryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[AttendanceEventCategoryType] ADD CONSTRAINT [AttendanceEventCategoryType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[AttendanceEventCategoryType] ADD CONSTRAINT [AttendanceEventCategoryType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

