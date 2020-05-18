-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CalendarEventDescriptor_PK] on [edfi].[CalendarEventDescriptor]'
GO
ALTER TABLE [edfi].[CalendarEventDescriptor] ADD CONSTRAINT [CalendarEventDescriptor_PK] PRIMARY KEY CLUSTERED  ([CalendarEventDescriptorId])
GO
PRINT N'Creating index [FK_CalendarEventDescriptor_Descriptor] on [edfi].[CalendarEventDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_CalendarEventDescriptor_Descriptor] ON [edfi].[CalendarEventDescriptor] ([CalendarEventDescriptorId])
GO
PRINT N'Creating index [FK_CalendarEventDescriptor_CalendarEventType] on [edfi].[CalendarEventDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_CalendarEventDescriptor_CalendarEventType] ON [edfi].[CalendarEventDescriptor] ([CalendarEventTypeId])
GO

