-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating section references in [edfi].[StudentCohortAssociationSection]'

ALTER TABLE [edfi].[StudentCohortAssociationSection]
ADD [SectionIdentifier] [nvarchar] (255) NULL
GO

ALTER TABLE [edfi].[StudentCohortAssociationSection]
ADD [SessionName] [nvarchar] (60) NULL
GO

UPDATE [edfi].[StudentCohortAssociationSection]
SET [SectionIdentifier] = m.[SectionIdentifier]
	, [SessionName] = m.[SessionName]
FROM [edfi].[StudentCohortAssociationSection] scas
INNER JOIN [migration_tempdata].[SectionIdentityMapping] m
	ON scas.[SchoolId] = m.[SchoolId]
	AND scas.[ClassPeriodName] = m.[ClassPeriodName]
	AND scas.[ClassroomIdentificationCode] = m.[ClassroomIdentificationCode]
	AND scas.[LocalCourseCode] = m.[LocalCourseCode]
	AND scas.[TermDescriptorId] = m.[TermDescriptorId]
	AND scas.[SchoolYear] = m.[SchoolYear]
	AND scas.[UniqueSectionCode] = m.[UniqueSectionCode]
	AND scas.[SequenceOfCourse] = m.[SequenceOfCourse]
GO

ALTER TABLE [edfi].[StudentCohortAssociationSection]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[StudentCohortAssociationSection]
ALTER COLUMN  [SectionIdentifier] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[StudentCohortAssociationSection]
DROP COLUMN [ClassPeriodName]
GO

ALTER TABLE [edfi].[StudentCohortAssociationSection]
DROP COLUMN [ClassroomIdentificationCode]
GO

ALTER TABLE [edfi].[StudentCohortAssociationSection]
DROP COLUMN [UniqueSectionCode]
GO

ALTER TABLE [edfi].[StudentCohortAssociationSection]
DROP COLUMN [SequenceOfCourse]
GO

ALTER TABLE [edfi].[StudentCohortAssociationSection]
DROP COLUMN [TermDescriptorId]
GO
