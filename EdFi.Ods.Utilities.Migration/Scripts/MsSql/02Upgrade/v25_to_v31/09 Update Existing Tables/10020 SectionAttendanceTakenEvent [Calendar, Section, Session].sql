-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding CalendarCode to [edfi].[SectionAttendanceTakenEvent]'
GO

ALTER TABLE [edfi].[SectionAttendanceTakenEvent]
ADD 
	[CalendarCode] [nvarchar] (60) NULL
GO

UPDATE [edfi].[SectionAttendanceTakenEvent]
SET
	[CalendarCode] = c.[CalendarCode]
FROM [edfi].[SectionAttendanceTakenEvent] s
INNER JOIN [edfi].[CalendarDate] c
ON 
	c.[SchoolId] = s.[SchoolId]
	AND c.[Date] = s.[Date]
GO

ALTER TABLE [edfi].[SectionAttendanceTakenEvent]
ALTER COLUMN
	[CalendarCode] [nvarchar] (60) NOT NULL
GO

PRINT N'Updating section references in [edfi].[SectionAttendanceTakenEvent]'

ALTER TABLE [edfi].[SectionAttendanceTakenEvent]
ADD [SectionIdentifier] [nvarchar] (255) NULL
GO

ALTER TABLE [edfi].[SectionAttendanceTakenEvent]
ADD [SessionName] [nvarchar] (60) NULL
GO

UPDATE [edfi].[SectionAttendanceTakenEvent]
SET [SectionIdentifier] = m.[SectionIdentifier]
	, [SessionName] = m.[SessionName]
FROM [edfi].[SectionAttendanceTakenEvent] sat
INNER JOIN [migration_tempdata].[SectionIdentityMapping] m
	ON sat.[SchoolId] = m.[SchoolId]
	AND sat.[ClassPeriodName] = m.[ClassPeriodName]
	AND sat.[ClassroomIdentificationCode] = m.[ClassroomIdentificationCode]
	AND sat.[LocalCourseCode] = m.[LocalCourseCode]
	AND sat.[TermDescriptorId] = m.[TermDescriptorId]
	AND sat.[SchoolYear] = m.[SchoolYear]
	AND sat.[UniqueSectionCode] = m.[UniqueSectionCode]
	AND sat.[SequenceOfCourse] = m.[SequenceOfCourse]
GO

ALTER TABLE [edfi].[SectionAttendanceTakenEvent]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[SectionAttendanceTakenEvent]
ALTER COLUMN  [SectionIdentifier] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[SectionAttendanceTakenEvent]
DROP COLUMN [ClassPeriodName]
GO

ALTER TABLE [edfi].[SectionAttendanceTakenEvent]
DROP COLUMN [ClassroomIdentificationCode]
GO

ALTER TABLE [edfi].[SectionAttendanceTakenEvent]
DROP COLUMN [UniqueSectionCode]
GO

ALTER TABLE [edfi].[SectionAttendanceTakenEvent]
DROP COLUMN [SequenceOfCourse]
GO

ALTER TABLE [edfi].[SectionAttendanceTakenEvent]
DROP COLUMN [TermDescriptorId]
GO
