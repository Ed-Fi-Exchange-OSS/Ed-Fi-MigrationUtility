-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[CalendarDateCalendarEvent]'
GO
ALTER TABLE [edfi].[CalendarDateCalendarEvent] ADD CONSTRAINT [FK_CalendarDateCalendarEvent_CalendarDate] FOREIGN KEY ([SchoolId], [Date]) REFERENCES [edfi].[CalendarDate] ([SchoolId], [Date]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[CalendarDateCalendarEvent] ADD CONSTRAINT [FK_CalendarDateCalendarEvent_CalendarEventDescriptor] FOREIGN KEY ([CalendarEventDescriptorId]) REFERENCES [edfi].[CalendarEventDescriptor] ([CalendarEventDescriptorId])
GO
