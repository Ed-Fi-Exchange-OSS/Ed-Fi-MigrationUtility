-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[Section]'
GO

ALTER TABLE [edfi].[Section] ALTER COLUMN [AvailableCredits] [decimal] (9, 3) NULL
GO

ALTER TABLE [edfi].[Section]
ADD [SessionName] [nvarchar] (60) NULL,
[SectionIdentifier] [nvarchar] (255) NULL,
[LocationSchoolId] [int] NULL,
[LocationClassroomIdentificationCode] [nvarchar] (20) NULL
GO

UPDATE [edfi].[Section]
SET [SectionIdentifier] = m.[SectionIdentifier]
	, [SessionName] = m.[SessionName]
	, [LocationSchoolId] = s.[SchoolId]
	, [LocationClassroomIdentificationCode] = s.[ClassroomIdentificationCode]
FROM [edfi].[Section] s
INNER JOIN [migration_tempdata].[SectionIdentityMapping] m
	ON s.[SchoolId] = m.[SchoolId]
	AND s.[ClassPeriodName] = m.[ClassPeriodName]
	AND s.[ClassroomIdentificationCode] = m.[ClassroomIdentificationCode]
	AND s.[LocalCourseCode] = m.[LocalCourseCode]
	AND s.[TermDescriptorId] = m.[TermDescriptorId]
	AND s.[SchoolYear] = m.[SchoolYear]
	AND s.[UniqueSectionCode] = m.[UniqueSectionCode]
	AND s.[SequenceOfCourse] = m.[SequenceOfCourse]
GO

ALTER TABLE [edfi].[Section]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[Section]
ALTER COLUMN  [SectionIdentifier] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[Section]
ALTER COLUMN [SequenceOfCourse] [int] NULL
GO

ALTER TABLE [edfi].[Section]
ALTER COLUMN [ClassroomIdentificationCode] [nvarchar] (20) NULL
GO

ALTER TABLE [edfi].[Section]
DROP COLUMN [ClassPeriodName]
GO

ALTER TABLE [edfi].[Section]
DROP COLUMN [TermDescriptorId]
GO

ALTER TABLE [edfi].[Section]
DROP COLUMN [UniqueSectionCode]
GO

PRINT N'Converting types to descriptors on [edfi].[Section]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Section',
'edfi', 'PopulationServedDescriptor',
'edfi', 'PopulationServedType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Section',
'edfi', 'MediumOfInstructionDescriptor',
'edfi', 'MediumOfInstructionType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Section',
'edfi', 'EducationalEnvironmentDescriptor',
'edfi', 'EducationalEnvironmentType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Section',
'edfi', 'CreditTypeDescriptor',
'edfi', 'CreditType',
'AvailableCreditTypeId', 'AvailableCreditTypeDescriptorId'
GO

ALTER TABLE [edfi].[Section]
DROP COLUMN
[AvailableCreditTypeId],
[EducationalEnvironmentTypeId],
[MediumOfInstructionTypeId],
[PopulationServedTypeId],
[ClassroomIdentificationCode]
GO

