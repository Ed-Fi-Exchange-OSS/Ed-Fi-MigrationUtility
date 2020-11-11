-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating section references in [edfi].[Grade]'
GO

ALTER TABLE [edfi].[Grade]
ADD [SectionIdentifier] [nvarchar] (255) NULL
GO

ALTER TABLE [edfi].[Grade]
ADD [SessionName] [nvarchar] (60) NULL
GO

UPDATE [edfi].[Grade]
SET [SectionIdentifier] = m.[SectionIdentifier]
	, [SessionName] = m.[SessionName]
FROM [edfi].[Grade] g
INNER JOIN [migration_tempdata].[SectionIdentityMapping] m
	ON g.[SchoolId] = m.[SchoolId]
	AND g.[ClassPeriodName] = m.[ClassPeriodName]
	AND g.[ClassroomIdentificationCode] = m.[ClassroomIdentificationCode]
	AND g.[LocalCourseCode] = m.[LocalCourseCode]
	AND g.[TermDescriptorId] = m.[TermDescriptorId]
	AND g.[SchoolYear] = m.[SchoolYear]
	AND g.[UniqueSectionCode] = m.[UniqueSectionCode]
	AND g.[SequenceOfCourse] = m.[SequenceOfCourse]
GO

ALTER TABLE [edfi].[Grade]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[Grade]
ALTER COLUMN  [SectionIdentifier] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[Grade]
DROP COLUMN [ClassPeriodName]
GO

ALTER TABLE [edfi].[Grade]
DROP COLUMN [ClassroomIdentificationCode]
GO

ALTER TABLE [edfi].[Grade]
DROP COLUMN [UniqueSectionCode]
GO

ALTER TABLE [edfi].[Grade]
DROP COLUMN [SequenceOfCourse]
GO

ALTER TABLE [edfi].[Grade]
DROP COLUMN [TermDescriptorId]
GO

PRINT N'Updating GradingPeriod reference on [edfi].[Grade]'
GO

ALTER TABLE [edfi].[Grade]
ADD [GradingPeriodSequence] [INT] NULL,
[GradingPeriodSchoolYear] [smallint] NULL
GO


UPDATE [edfi].[Grade]
SET [GradingPeriodSequence] = m.[PeriodSequence]
,[GradingPeriodSchoolYear] = m.[SchoolYear]
FROM [edfi].[Grade] g
INNER JOIN [migration_tempdata].[GradingPeriodIdentityMapping] m
	ON m.[GradingPeriodDescriptorId] = g.[GradingPeriodDescriptorId]
	AND m.[SchoolId] = g.[SchoolId]
	AND m.[BeginDate] = g.[GradingPeriodBeginDate]
GO

ALTER TABLE [edfi].[Grade]
ALTER COLUMN [GradingPeriodSequence] [INT] NOT NULL
GO

ALTER TABLE [edfi].[Grade]
ALTER COLUMN [GradingPeriodSchoolYear] [smallint] NOT NULL
GO

ALTER TABLE [edfi].[Grade]
DROP COLUMN [GradingPeriodBeginDate]
GO

PRINT N'Converting types to descriptors on [edfi].[Grade]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Grade',
'edfi', 'PerformanceBaseConversionDescriptor',
'edfi', 'PerformanceBaseConversionType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Grade',
'edfi', 'GradeTypeDescriptor',
'edfi', 'GradeType'
GO

ALTER TABLE [edfi].[Grade]
ALTER COLUMN [GradeTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[Grade]
DROP COLUMN
[PerformanceBaseConversionTypeId]
,[GradeTypeId]
GO
