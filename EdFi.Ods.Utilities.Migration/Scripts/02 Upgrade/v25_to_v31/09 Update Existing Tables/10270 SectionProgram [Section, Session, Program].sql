-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating section references in [edfi].[SectionProgram]'
GO

ALTER TABLE [edfi].[SectionProgram]
ADD [SectionIdentifier] [nvarchar] (255) NULL
GO

ALTER TABLE [edfi].[SectionProgram]
ADD [SessionName] [nvarchar] (60) NULL
GO

UPDATE [edfi].[SectionProgram]
SET [SectionIdentifier] = m.[SectionIdentifier]
	, [SessionName] = m.[SessionName]
FROM [edfi].[SectionProgram] sp
INNER JOIN [migration_tempdata].[SectionIdentityMapping] m
	ON sp.[SchoolId] = m.[SchoolId]
	AND sp.[ClassPeriodName] = m.[ClassPeriodName]
	AND sp.[ClassroomIdentificationCode] = m.[ClassroomIdentificationCode]
	AND sp.[LocalCourseCode] = m.[LocalCourseCode]
	AND sp.[TermDescriptorId] = m.[TermDescriptorId]
	AND sp.[SchoolYear] = m.[SchoolYear]
	AND sp.[UniqueSectionCode] = m.[UniqueSectionCode]
	AND sp.[SequenceOfCourse] = m.[SequenceOfCourse]
GO

ALTER TABLE [edfi].[SectionProgram]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[SectionProgram]
ALTER COLUMN  [SectionIdentifier] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[SectionProgram]
DROP COLUMN [ClassPeriodName]
GO

ALTER TABLE [edfi].[SectionProgram]
DROP COLUMN [ClassroomIdentificationCode]
GO

ALTER TABLE [edfi].[SectionProgram]
DROP COLUMN [UniqueSectionCode]
GO

ALTER TABLE [edfi].[SectionProgram]
DROP COLUMN [SequenceOfCourse]
GO

ALTER TABLE [edfi].[SectionProgram]
DROP COLUMN [TermDescriptorId]
GO

PRINT N'Converting type to descriptor on [edfi].[SectionProgram]'
GO

ALTER TABLE [edfi].[SectionProgram]
ADD [ProgramTypeDescriptorId] [int] NULL
GO

UPDATE [edfi].[SectionProgram]
SET [ProgramTypeDescriptorId] = m.[ProgramTypeDescriptorId]
FROM [edfi].[SectionProgram] s
INNER JOIN [migration_tempdata].[ProgramIdentityMapping] m
ON m.[EducationOrganizationId] = s.[EducationOrganizationId]
	AND m.[ProgramTypeId] = s.[ProgramTypeId]
	AND m.[ProgramName] = s.[ProgramName]

ALTER TABLE [edfi].[SectionProgram]
ALTER COLUMN [ProgramTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[SectionProgram]
DROP COLUMN [ProgramTypeId]
GO
