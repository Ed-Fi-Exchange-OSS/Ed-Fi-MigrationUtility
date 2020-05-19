-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating section references in [edfi].[SectionCharacteristic]'

ALTER TABLE [edfi].[SectionCharacteristic]
ADD [SectionIdentifier] [nvarchar] (255) NULL
GO

ALTER TABLE [edfi].[SectionCharacteristic]
ADD [SessionName] [nvarchar] (60) NULL
GO

UPDATE [edfi].[SectionCharacteristic]
SET [SectionIdentifier] = m.[SectionIdentifier]
	, [SessionName] = m.[SessionName]
FROM [edfi].[SectionCharacteristic] sc
INNER JOIN [migration_tempdata].[SectionIdentityMapping] m
	ON sc.[SchoolId] = m.[SchoolId]
	AND sc.[ClassPeriodName] = m.[ClassPeriodName]
	AND sc.[ClassroomIdentificationCode] = m.[ClassroomIdentificationCode]
	AND sc.[LocalCourseCode] = m.[LocalCourseCode]
	AND sc.[TermDescriptorId] = m.[TermDescriptorId]
	AND sc.[SchoolYear] = m.[SchoolYear]
	AND sc.[UniqueSectionCode] = m.[UniqueSectionCode]
	AND sc.[SequenceOfCourse] = m.[SequenceOfCourse]
GO

ALTER TABLE [edfi].[SectionCharacteristic]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[SectionCharacteristic]
ALTER COLUMN  [SectionIdentifier] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[SectionCharacteristic]
DROP COLUMN [ClassPeriodName]
GO

ALTER TABLE [edfi].[SectionCharacteristic]
DROP COLUMN [ClassroomIdentificationCode]
GO

ALTER TABLE [edfi].[SectionCharacteristic]
DROP COLUMN [UniqueSectionCode]
GO

ALTER TABLE [edfi].[SectionCharacteristic]
DROP COLUMN [SequenceOfCourse]
GO

ALTER TABLE [edfi].[SectionCharacteristic]
DROP COLUMN [TermDescriptorId]
GO

