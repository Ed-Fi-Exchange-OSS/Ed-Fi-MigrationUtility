-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating section references in [edfi].[StudentGradebookEntry]'

ALTER TABLE [edfi].[StudentGradebookEntry]
ADD [SectionIdentifier] [nvarchar] (255) NULL
GO

ALTER TABLE [edfi].[StudentGradebookEntry]
ADD [SessionName] [nvarchar] (60) NULL
GO

UPDATE [edfi].[StudentGradebookEntry]
SET [SectionIdentifier] = m.[SectionIdentifier]
	, [SessionName] = m.[SessionName]
FROM [edfi].[StudentGradebookEntry] sge
INNER JOIN [migration_tempdata].[SectionIdentityMapping] m
	ON sge.[SchoolId] = m.[SchoolId]
	AND sge.[ClassPeriodName] = m.[ClassPeriodName]
	AND sge.[ClassroomIdentificationCode] = m.[ClassroomIdentificationCode]
	AND sge.[LocalCourseCode] = m.[LocalCourseCode]
	AND sge.[TermDescriptorId] = m.[TermDescriptorId]
	AND sge.[SchoolYear] = m.[SchoolYear]
	AND sge.[UniqueSectionCode] = m.[UniqueSectionCode]
	AND sge.[SequenceOfCourse] = m.[SequenceOfCourse]
GO

ALTER TABLE [edfi].[StudentGradebookEntry]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[StudentGradebookEntry]
ALTER COLUMN  [SectionIdentifier] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[StudentGradebookEntry]
DROP COLUMN [ClassPeriodName]
GO

ALTER TABLE [edfi].[StudentGradebookEntry]
DROP COLUMN [ClassroomIdentificationCode]
GO

ALTER TABLE [edfi].[StudentGradebookEntry]
DROP COLUMN [UniqueSectionCode]
GO

ALTER TABLE [edfi].[StudentGradebookEntry]
DROP COLUMN [SequenceOfCourse]
GO

ALTER TABLE [edfi].[StudentGradebookEntry]
DROP COLUMN [TermDescriptorId]
GO
