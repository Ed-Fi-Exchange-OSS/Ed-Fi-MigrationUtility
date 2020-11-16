-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting type to descriptor on [edfi].[StudentSectionAttendanceEvent]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentSectionAttendanceEvent',
'edfi', 'EducationalEnvironmentDescriptor',
'edfi', 'EducationalEnvironmentType'
GO

PRINT N'Preparing to update section references in [edfi].[StudentSectionAttendanceEvent]. This can take a long time on larger sets of data'
GO

CREATE TABLE [edfi].[_UPDATE_IN_PROGRESS-StudentSchoolAttendanceEvent]
(
	[AttendanceEventCategoryDescriptorId] [int] NOT NULL,
	[EventDate] [date] NOT NULL,
	[LocalCourseCode] [nvarchar](60) NOT NULL,
	[SchoolId] [int] NOT NULL,
	[SchoolYear] [smallint] NOT NULL,
	[SectionIdentifier] [nvarchar](255) NOT NULL,
	[SessionName] [nvarchar](60) NOT NULL,
	[StudentUSI] [int] NOT NULL,
	[AttendanceEventReason] [nvarchar](40) NULL,
	[EducationalEnvironmentDescriptorId] [int] NULL,
	[EventDuration] [decimal](3, 2) NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[Id] [uniqueidentifier] NOT NULL
)
GO

/*
	Developer note:

	For some users with a large number of students, the StudentSectionAttendanceEvent table 
	can contain a large number of records.  The temporary index below is used to split the
	update task into more than one operation and prevent timeout issues
*/
CREATE NONCLUSTERED INDEX [IX_StudentSectionAttendanceEvent_Tmp]
    ON [edfi].[StudentSectionAttendanceEvent]  ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse]) 
GO 

PRINT N'Creating new section references for [edfi].[StudentSectionAttendanceEvent].  This can take a long time on larger sets of data'
GO

INSERT [edfi].[_UPDATE_IN_PROGRESS-StudentSchoolAttendanceEvent]
(
	[AttendanceEventCategoryDescriptorId],
	[EventDate],
	[LocalCourseCode],
	[SchoolId],
	[SchoolYear],
	[SectionIdentifier],
	[SessionName],
	[StudentUSI],
	[AttendanceEventReason],
	[EducationalEnvironmentDescriptorId],
	[CreateDate],
	[LastModifiedDate],
	[Id]
)
SELECT
	s.[AttendanceEventCategoryDescriptorId],
	s.[EventDate],
	s.[LocalCourseCode],
	s.[SchoolId],
	s.[SchoolYear],
	m.[SectionIdentifier],
	m.[SessionName],
	s.[StudentUSI],
	s.[AttendanceEventReason],
	s.[EducationalEnvironmentDescriptorId],
	s.[CreateDate],
	s.[LastModifiedDate],
	s.[Id]
FROM [edfi].[StudentSectionAttendanceEvent] s
INNER JOIN [migration_tempdata].[SectionIdentityMapping] m
	ON s.[SchoolId] = m.[SchoolId]
	AND s.[ClassPeriodName] = m.[ClassPeriodName]
	AND s.[ClassroomIdentificationCode] = m.[ClassroomIdentificationCode]
	AND s.[LocalCourseCode] = m.[LocalCourseCode]
	AND s.[TermDescriptorId] = m.[TermDescriptorId]
	AND s.[SchoolYear] = m.[SchoolYear]
	AND s.[UniqueSectionCode] = m.[UniqueSectionCode]
	AND s.[SequenceOfCourse] = m.[SequenceOfCourse]
GO

PRINT N'Completing update of section references on [edfi].[StudentSectionAttendanceEvent]'
GO

DROP TABLE [edfi].[StudentSectionAttendanceEvent]
GO

EXEC sp_rename 'edfi._UPDATE_IN_PROGRESS-StudentSchoolAttendanceEvent', 'StudentSectionAttendanceEvent';  
GO


