-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating section references in [edfi].[GradebookEntryLearningStandard]'

ALTER TABLE [edfi].[GradebookEntryLearningStandard]
ADD [SectionIdentifier] [nvarchar] (255) NULL
GO

ALTER TABLE [edfi].[GradebookEntryLearningStandard]
ADD [SessionName] [nvarchar] (60) NULL
GO

UPDATE [edfi].[GradebookEntryLearningStandard]
SET [SectionIdentifier] = m.[SectionIdentifier]
	, [SessionName] = m.[SessionName]
FROM [edfi].[GradebookEntryLearningStandard] g
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

ALTER TABLE [edfi].[GradebookEntryLearningStandard]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[GradebookEntryLearningStandard]
ALTER COLUMN  [SectionIdentifier] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[GradebookEntryLearningStandard]
DROP COLUMN [ClassPeriodName]
GO

ALTER TABLE [edfi].[GradebookEntryLearningStandard]
DROP COLUMN [ClassroomIdentificationCode]
GO

ALTER TABLE [edfi].[GradebookEntryLearningStandard]
DROP COLUMN [UniqueSectionCode]
GO

ALTER TABLE [edfi].[GradebookEntryLearningStandard]
DROP COLUMN [SequenceOfCourse]
GO

ALTER TABLE [edfi].[GradebookEntryLearningStandard]
DROP COLUMN [TermDescriptorId]
GO
