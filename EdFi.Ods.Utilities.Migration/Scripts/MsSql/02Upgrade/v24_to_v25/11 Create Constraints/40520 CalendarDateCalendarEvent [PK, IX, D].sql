-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CalendarDateCalendarEvent_PK] on [edfi].[CalendarDateCalendarEvent]'
GO
ALTER TABLE [edfi].[CalendarDateCalendarEvent] ADD CONSTRAINT [CalendarDateCalendarEvent_PK] PRIMARY KEY CLUSTERED  ([SchoolId], [Date], [CalendarEventDescriptorId])
GO
PRINT N'Creating index [FK_CalendarDateCalendarEvent_CalendarEventDescriptor] on [edfi].[CalendarDateCalendarEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_CalendarDateCalendarEvent_CalendarEventDescriptor] ON [edfi].[CalendarDateCalendarEvent] ([CalendarEventDescriptorId])
GO
PRINT N'Creating index [FK_CalendarDateCalendarEvent_CalendarDate] on [edfi].[CalendarDateCalendarEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_CalendarDateCalendarEvent_CalendarDate] ON [edfi].[CalendarDateCalendarEvent] ([SchoolId], [Date])
GO

PRINT N'Adding constraints to [edfi].[CalendarDateCalendarEvent]'
GO
ALTER TABLE [edfi].[CalendarDateCalendarEvent] ADD CONSTRAINT [CalendarDateCalendarEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

