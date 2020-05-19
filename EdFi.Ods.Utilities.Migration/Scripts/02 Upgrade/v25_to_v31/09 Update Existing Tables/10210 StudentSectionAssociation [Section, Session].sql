-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[StudentSectionAssociation] with section references'
GO

ALTER TABLE [edfi].[StudentSectionAssociation]
ADD
[SectionIdentifier] [nvarchar] (255) NULL,
[SessionName] [nvarchar] (60) NULL,
[AttemptStatusDescriptorId] [int] NULL
GO

UPDATE [edfi].[StudentSectionAssociation]
SET [SectionIdentifier] = m.[SectionIdentifier]
	, [SessionName] = m.[SessionName]
FROM [edfi].[StudentSectionAssociation] ssa
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

ALTER TABLE [edfi].[StudentSectionAssociation]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[StudentSectionAssociation]
ALTER COLUMN  [SectionIdentifier] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[StudentSectionAssociation]
DROP COLUMN [ClassPeriodName]
GO

ALTER TABLE [edfi].[StudentSectionAssociation]
DROP COLUMN [ClassroomIdentificationCode]
GO

ALTER TABLE [edfi].[StudentSectionAssociation]
DROP COLUMN [UniqueSectionCode]
GO

ALTER TABLE [edfi].[StudentSectionAssociation]
DROP COLUMN [SequenceOfCourse]
GO

ALTER TABLE [edfi].[StudentSectionAssociation]
DROP COLUMN [TermDescriptorId]
GO

PRINT N'Converting type to descriptor on [edfi].[StudentSectionAssociation]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentSectionAssociation',
'edfi', 'RepeatIdentifierDescriptor',
'edfi', 'RepeatIdentifierType'
GO

ALTER TABLE [edfi].[StudentSectionAssociation]
DROP COLUMN [RepeatIdentifierTypeId]
GO
