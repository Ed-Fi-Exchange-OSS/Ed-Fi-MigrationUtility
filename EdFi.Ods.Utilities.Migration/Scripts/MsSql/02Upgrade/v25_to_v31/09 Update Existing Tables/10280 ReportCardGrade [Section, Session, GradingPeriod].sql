-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating section references in [edfi].[ReportCardGrade]'
GO

ALTER TABLE [edfi].[ReportCardGrade]
ADD [SectionIdentifier] [nvarchar] (255) NULL,
[SessionName] [nvarchar] (60) NULL
GO

UPDATE [edfi].[ReportCardGrade]
SET [SectionIdentifier] = m.[SectionIdentifier]
	, [SessionName] = m.[SessionName]
FROM [edfi].[ReportCardGrade] r
INNER JOIN [migration_tempdata].[SectionIdentityMapping] m
	ON r.[SchoolId] = m.[SchoolId]
	AND r.[ClassPeriodName] = m.[ClassPeriodName]
	AND r.[ClassroomIdentificationCode] = m.[ClassroomIdentificationCode]
	AND r.[LocalCourseCode] = m.[LocalCourseCode]
	AND r.[TermDescriptorId] = m.[TermDescriptorId]
	AND r.[SchoolYear] = m.[SchoolYear]
	AND r.[UniqueSectionCode] = m.[UniqueSectionCode]
	AND r.[SequenceOfCourse] = m.[SequenceOfCourse]
GO

ALTER TABLE [edfi].[ReportCardGrade]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[ReportCardGrade]
ALTER COLUMN  [SectionIdentifier] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[ReportCardGrade]
DROP COLUMN [ClassPeriodName]
GO

ALTER TABLE [edfi].[ReportCardGrade]
DROP COLUMN [ClassroomIdentificationCode]
GO

ALTER TABLE [edfi].[ReportCardGrade]
DROP COLUMN [UniqueSectionCode]
GO

ALTER TABLE [edfi].[ReportCardGrade]
DROP COLUMN [SequenceOfCourse]
GO

ALTER TABLE [edfi].[ReportCardGrade]
DROP COLUMN [TermDescriptorId]
GO

PRINT N'Updating GradingPeriod reference on [edfi].[ReportCardGrade]'
GO

ALTER TABLE [edfi].[ReportCardGrade]
ADD [GradingPeriodSequence] [INT] NULL,
[GradingPeriodSchoolYear] [smallint] NULL,
[GradingPeriodSchoolId] [INT] NULL
GO

UPDATE [edfi].[ReportCardGrade]
SET [GradingPeriodSequence] = m.[PeriodSequence]
,[GradingPeriodSchoolYear] = m.[SchoolYear]
, [GradingPeriodSchoolId] = m.[SchoolId]
FROM [edfi].[ReportCardGrade] r
INNER JOIN [migration_tempdata].[GradingPeriodIdentityMapping] m
	ON m.[GradingPeriodDescriptorId] = r.[GradingPeriodDescriptorId]
	AND m.[SchoolId] = r.[SchoolId]
	AND m.[BeginDate] = r.[GradingPeriodBeginDate]
GO

ALTER TABLE [edfi].[ReportCardGrade]
ALTER COLUMN [GradingPeriodSequence] [INT] NOT NULL
GO

ALTER TABLE [edfi].[ReportCardGrade]
ALTER COLUMN [GradingPeriodSchoolYear] [smallint] NOT NULL
GO

ALTER TABLE [edfi].[ReportCardGrade]
ALTER COLUMN [GradingPeriodSchoolId] [INT] NOT NULL
GO

ALTER TABLE [edfi].[ReportCardGrade]
DROP COLUMN [GradingPeriodBeginDate]
GO


PRINT N'Converting types to descriptors on [edfi].[ReportCardGrade]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'ReportCardGrade',
'edfi', 'GradeTypeDescriptor',
'edfi', 'GradeType'
GO

ALTER TABLE [edfi].[ReportCardGrade]
ALTER COLUMN [GradeTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[ReportCardGrade]
DROP COLUMN [GradeTypeId]
GO

