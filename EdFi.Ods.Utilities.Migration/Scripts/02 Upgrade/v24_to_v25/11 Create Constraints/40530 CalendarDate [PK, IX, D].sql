-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CalendarDate_PK] on [edfi].[CalendarDate]'
GO
ALTER TABLE [edfi].[CalendarDate] ADD CONSTRAINT [CalendarDate_PK] PRIMARY KEY CLUSTERED  ([SchoolId], [Date])
GO
PRINT N'Creating index [UX_CalendarDate_Id] on [edfi].[CalendarDate]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CalendarDate_Id] ON [edfi].[CalendarDate] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_CalendarDate_School] on [edfi].[CalendarDate]'
GO
CREATE NONCLUSTERED INDEX [FK_CalendarDate_School] ON [edfi].[CalendarDate] ([SchoolId])
GO

PRINT N'Adding constraints to [edfi].[CalendarDate]'
GO
ALTER TABLE [edfi].[CalendarDate] ADD CONSTRAINT [CalendarDate_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CalendarDate] ADD CONSTRAINT [CalendarDate_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CalendarDate] ADD CONSTRAINT [CalendarDate_DF_Id] DEFAULT (newid()) FOR [Id]
GO

