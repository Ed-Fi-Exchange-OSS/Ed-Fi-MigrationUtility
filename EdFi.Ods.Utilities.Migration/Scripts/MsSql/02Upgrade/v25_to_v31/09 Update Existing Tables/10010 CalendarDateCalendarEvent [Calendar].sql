-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding School Year and CalendarCode to [edfi].[CalendarDateCalendarEvent]'
GO

ALTER TABLE [edfi].[CalendarDateCalendarEvent]
ADD 
	[CalendarCode] [nvarchar] (60) NULL,
	[SchoolYear] [smallint] NULL
GO

UPDATE [edfi].[CalendarDateCalendarEvent]
SET
	[CalendarCode] = c.[CalendarCode],
	[SchoolYear] = c.[SchoolYear]
FROM [edfi].[CalendarDateCalendarEvent] cdce
INNER JOIN [edfi].[CalendarDate] c
ON 
	c.[SchoolId] = cdce.[SchoolId]
	AND c.[Date] = cdce.[Date]
GO

ALTER TABLE [edfi].[CalendarDateCalendarEvent]
ALTER COLUMN
	[CalendarCode] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[CalendarDateCalendarEvent]
ALTER COLUMN
	[SchoolYear] [smallint] NOT NULL
GO

ALTER TABLE [edfi].[CalendarDateCalendarEvent]
ALTER COLUMN
	[SchoolYear] [smallint] NOT NULL
GO

PRINT N'Removing EventDuration from [edfi].[CalendarDateCalendarEvent]'
GO

ALTER TABLE [edfi].[CalendarDateCalendarEvent] DROP COLUMN [EventDuration]
GO
