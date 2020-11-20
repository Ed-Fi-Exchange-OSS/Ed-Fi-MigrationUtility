-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating section references in [edfi].[StaffSectionAssociation]'

ALTER TABLE [edfi].[StaffSectionAssociation]
ADD [SectionIdentifier] [nvarchar] (255) NULL
GO

ALTER TABLE [edfi].[StaffSectionAssociation]
ADD [SessionName] [nvarchar] (60) NULL
GO

UPDATE [edfi].[StaffSectionAssociation]
SET [SectionIdentifier] = m.[SectionIdentifier]
	, [SessionName] = m.[SessionName]
FROM [edfi].[StaffSectionAssociation] ssa
INNER JOIN [migration_tempdata].[SectionIdentityMapping] m
	ON ssa.[SchoolId] = m.[SchoolId]
	AND ssa.[ClassPeriodName] = m.[ClassPeriodName]
	AND ssa.[ClassroomIdentificationCode] = m.[ClassroomIdentificationCode]
	AND ssa.[LocalCourseCode] = m.[LocalCourseCode]
	AND ssa.[TermDescriptorId] = m.[TermDescriptorId]
	AND ssa.[SchoolYear] = m.[SchoolYear]
	AND ssa.[UniqueSectionCode] = m.[UniqueSectionCode]
	AND ssa.[SequenceOfCourse] = m.[SequenceOfCourse]
GO

ALTER TABLE [edfi].[StaffSectionAssociation]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[StaffSectionAssociation]
ALTER COLUMN  [SectionIdentifier] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[StaffSectionAssociation]
DROP COLUMN [ClassPeriodName]
GO

ALTER TABLE [edfi].[StaffSectionAssociation]
DROP COLUMN [ClassroomIdentificationCode]
GO

ALTER TABLE [edfi].[StaffSectionAssociation]
DROP COLUMN [UniqueSectionCode]
GO

ALTER TABLE [edfi].[StaffSectionAssociation]
DROP COLUMN [SequenceOfCourse]
GO

ALTER TABLE [edfi].[StaffSectionAssociation]
DROP COLUMN [TermDescriptorId]
GO
