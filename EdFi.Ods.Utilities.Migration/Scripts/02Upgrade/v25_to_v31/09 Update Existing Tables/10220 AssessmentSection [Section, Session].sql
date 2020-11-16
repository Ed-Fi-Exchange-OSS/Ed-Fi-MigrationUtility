-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting namespace to v3 format on [edfi].[AssessmentSection]'
GO

UPDATE [edfi].[AssessmentSection]
SET
	[AssessmentIdentifier] = m.[V3AssessmentIdentifier],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[AssessmentIdentityMapping] m
INNER JOIN [edfi].[AssessmentSection] a
	ON a.[AssessmentIdentifier] = m.[V2AssessmentIdentifier]
	AND a.[Namespace] = m.[V2Namespace]
GO

PRINT N'Updating section references in [edfi].[AssessmentSection]'
GO

ALTER TABLE [edfi].[AssessmentSection]
ADD [SectionIdentifier] [nvarchar] (255) NULL
GO

ALTER TABLE [edfi].[AssessmentSection]
ADD [SessionName] [nvarchar] (60) NULL
GO

UPDATE [edfi].[AssessmentSection]
SET [SectionIdentifier] = m.[SectionIdentifier]
	, [SessionName] = m.[SessionName]
FROM [edfi].[AssessmentSection] a
INNER JOIN [migration_tempdata].[SectionIdentityMapping] m
	ON a.[SchoolId] = m.[SchoolId]
	AND a.[ClassPeriodName] = m.[ClassPeriodName]
	AND a.[ClassroomIdentificationCode] = m.[ClassroomIdentificationCode]
	AND a.[LocalCourseCode] = m.[LocalCourseCode]
	AND a.[TermDescriptorId] = m.[TermDescriptorId]
	AND a.[SchoolYear] = m.[SchoolYear]
	AND a.[UniqueSectionCode] = m.[UniqueSectionCode]
	AND a.[SequenceOfCourse] = m.[SequenceOfCourse]
GO

ALTER TABLE [edfi].[AssessmentSection]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[AssessmentSection]
ALTER COLUMN  [SectionIdentifier] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[AssessmentSection]
DROP COLUMN [ClassPeriodName]
GO

ALTER TABLE [edfi].[AssessmentSection]
DROP COLUMN [ClassroomIdentificationCode]
GO

ALTER TABLE [edfi].[AssessmentSection]
DROP COLUMN [UniqueSectionCode]
GO

ALTER TABLE [edfi].[AssessmentSection]
DROP COLUMN [SequenceOfCourse]
GO

ALTER TABLE [edfi].[AssessmentSection]
DROP COLUMN [TermDescriptorId]
GO
