-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating section references in [edfi].[GradebookEntry]'
GO

ALTER TABLE [edfi].[GradebookEntry]
ADD [SectionIdentifier] [nvarchar] (255) NULL
GO

ALTER TABLE [edfi].[GradebookEntry]
ADD [SessionName] [nvarchar] (60) NULL
GO

UPDATE [edfi].[GradebookEntry]
SET [SectionIdentifier] = m.[SectionIdentifier]
	, [SessionName] = m.[SessionName]
FROM [edfi].[GradebookEntry] g
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

ALTER TABLE [edfi].[GradebookEntry]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[GradebookEntry]
ALTER COLUMN  [SectionIdentifier] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[GradebookEntry] DROP 
COLUMN [ClassPeriodName],
COLUMN [ClassroomIdentificationCode],
COLUMN [UniqueSectionCode],
COLUMN [SequenceOfCourse],
COLUMN [TermDescriptorId]
GO

PRINT N'Updating GradingPeriod reference on [edfi].[GradebookEntry]'
GO

ALTER TABLE [edfi].[GradebookEntry]
ADD [PeriodSequence] [INT] NULL
GO

UPDATE [edfi].[GradebookEntry]
SET [PeriodSequence] = m.[PeriodSequence]
FROM [edfi].[GradebookEntry] g
INNER JOIN [migration_tempdata].[GradingPeriodIdentityMapping] m
	ON m.[GradingPeriodDescriptorId] = g.[GradingPeriodDescriptorId]
	AND m.[SchoolId] = g.[SchoolId]
	AND m.[BeginDate] = g.[BeginDate]
GO

ALTER TABLE [edfi].[GradebookEntry]
DROP COLUMN [BeginDate]
GO

PRINT N'Converting type to descriptor on [edfi].[GradebookEntry]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'GradebookEntry',
'edfi', 'GradebookEntryTypeDescriptor',
'edfi', 'GradebookEntryType'
GO

ALTER TABLE [edfi].[GradebookEntry]
DROP COLUMN [GradebookEntryTypeId]
GO
