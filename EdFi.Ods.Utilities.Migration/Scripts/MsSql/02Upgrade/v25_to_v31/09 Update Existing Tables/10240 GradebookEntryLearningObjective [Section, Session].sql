-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting namespace to v3 format on [edfi].[GradebookEntryLearningObjective]'
GO

UPDATE [edfi].[GradebookEntryLearningObjective]
SET
	[LearningObjectiveId] = m.[V3LearningObjectiveId],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[LearningObjectiveIdentityMapping] m
INNER JOIN [edfi].[GradebookEntryLearningObjective] l
	ON l.[LearningObjectiveId] = m.[V2LearningObjectiveId]
	AND l.[Namespace] = m.[V2Namespace]
GO

PRINT N'Updating section references in [edfi].[GradebookEntryLearningObjective]'
GO

ALTER TABLE [edfi].[GradebookEntryLearningObjective]
ADD [SectionIdentifier] [nvarchar] (255) NULL
GO

ALTER TABLE [edfi].[GradebookEntryLearningObjective]
ADD [SessionName] [nvarchar] (60) NULL
GO

UPDATE [edfi].[GradebookEntryLearningObjective]
SET [SectionIdentifier] = m.[SectionIdentifier]
	, [SessionName] = m.[SessionName]
FROM [edfi].[GradebookEntryLearningObjective] g
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

ALTER TABLE [edfi].[GradebookEntryLearningObjective]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[GradebookEntryLearningObjective]
ALTER COLUMN  [SectionIdentifier] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[GradebookEntryLearningObjective]
DROP COLUMN [ClassPeriodName]
GO

ALTER TABLE [edfi].[GradebookEntryLearningObjective]
DROP COLUMN [ClassroomIdentificationCode]
GO

ALTER TABLE [edfi].[GradebookEntryLearningObjective]
DROP COLUMN [UniqueSectionCode]
GO

ALTER TABLE [edfi].[GradebookEntryLearningObjective]
DROP COLUMN [SequenceOfCourse]
GO

ALTER TABLE [edfi].[GradebookEntryLearningObjective]
DROP COLUMN [TermDescriptorId]
GO
