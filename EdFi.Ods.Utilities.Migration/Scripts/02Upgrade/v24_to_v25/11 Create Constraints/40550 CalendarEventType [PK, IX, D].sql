-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CalendarEventType_PK] on [edfi].[CalendarEventType]'
GO
ALTER TABLE [edfi].[CalendarEventType] ADD CONSTRAINT [CalendarEventType_PK] PRIMARY KEY CLUSTERED  ([CalendarEventTypeId])
GO
PRINT N'Creating index [UX_CalendarEventType_Id] on [edfi].[CalendarEventType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CalendarEventType_Id] ON [edfi].[CalendarEventType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[CalendarEventType]'
GO
ALTER TABLE [edfi].[CalendarEventType] ADD CONSTRAINT [CalendarEventType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CalendarEventType] ADD CONSTRAINT [CalendarEventType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CalendarEventType] ADD CONSTRAINT [CalendarEventType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

