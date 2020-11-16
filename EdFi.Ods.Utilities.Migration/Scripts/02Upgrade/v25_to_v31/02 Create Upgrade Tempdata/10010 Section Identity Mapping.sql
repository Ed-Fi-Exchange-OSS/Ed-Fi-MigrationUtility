-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Generating section identity mappings'
GO

IF OBJECT_ID('migration_tempdata.SectionIdentityMapping', 'U') IS NOT NULL 
DROP TABLE [migration_tempdata].[SectionIdentityMapping]
GO

CREATE TABLE [migration_tempdata].[SectionIdentityMapping]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionIdentifier] [nvarchar] (255) NOT NULL,
	[SessionName] [nvarchar](60) NOT NULL,
	[SchoolId] [int] NOT NULL,
	[ClassPeriodName] [nvarchar](20) NOT NULL,
	[ClassroomIdentificationCode] [nvarchar](20) NOT NULL,
	[LocalCourseCode] [nvarchar](60) NOT NULL,
	[TermDescriptorId] [int] NOT NULL,
	[SchoolYear] [smallint] NOT NULL,
	[UniqueSectionCode] [nvarchar](255) NOT NULL,
	[SequenceOfCourse] [int] NOT NULL,
	CONSTRAINT PK_SectionIdentityMapping PRIMARY KEY NONCLUSTERED ([Id]),
	CONSTRAINT FK_SectionIdentityMapping_SessionIdentityMapping FOREIGN KEY ([SchoolId], [SchoolYear], [TermDescriptorId], [SessionName]) REFERENCES [migration_tempdata].[SessionIdentityMapping] ([SchoolId], [SchoolYear], [TermDescriptorId], [SessionName])
)
GO

CREATE UNIQUE CLUSTERED INDEX IX_SectionIdentityMapping_SectionPK20 ON [migration_tempdata].[SectionIdentityMapping]([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse])
GO

CREATE UNIQUE INDEX IX_SectionIdentityMapping_SectionPK21 ON [migration_tempdata].[SectionIdentityMapping]([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
GO



;WITH UniqueSectionCodeNumber AS
(
SELECT s.[SchoolId],
	s.[ClassPeriodName],
	s.[ClassroomIdentificationCode],
	s.[LocalCourseCode],
	s.[TermDescriptorId],
	s.[SchoolYear],
	s.[UniqueSectionCode],
	s.[SequenceOfCourse],
	m.[SessionName],
	ROW_NUMBER() OVER (PARTITION BY s.[UniqueSectionCode], s.[SchoolId], s.[SchoolYear], m.[SessionName], s.[LocalCourseCode] ORDER BY s.[UniqueSectionCode], s.[SchoolId], s.[SchoolYear], m.[SessionName], s.[LocalCourseCode], s.[SequenceOfCourse], s.[ClassPeriodName]) AS [UniqueSectionCodeRowNumber]
FROM [edfi].[Section] s
INNER JOIN [migration_tempdata].[SessionIdentityMapping] m
	ON s.[SchoolId] = m.[SchoolId]
	AND s.[TermDescriptorId] = m.[TermDescriptorId]
	AND s.[SchoolYear] = m.[SchoolYear]
)
INSERT INTO [migration_tempdata].[SectionIdentityMapping]
SELECT
/*
	Since v2.1, the [edfi].[Section] primary key no longer requires references to ClassPeriodName, ClassroomIdentificationCode, TermDescriptorId, or UniqueSectionCode.
	In order to prevent the new primary key from referencing duplicate records, an additional value will be appended to the new SectionIdentifier 
	for any records such that the UniqueSectionCode is used more than once for the same School/Year/Session/LocalCourseCode
*/ 
	CASE 
		WHEN u.[UniqueSectionCodeRowNumber] = 1
			THEN s.[UniqueSectionCode]
		ELSE
			[migration_tempdata].[append_to_key](s.[UniqueSectionCode], CONVERT(NVARCHAR(MAX), u.[UniqueSectionCodeRowNumber]), 255)
		END
	AS [SectionIdentifier],
	u.[SessionName],
	s.[SchoolId],
	s.[ClassPeriodName],
	s.[ClassroomIdentificationCode],
	s.[LocalCourseCode],
	s.[TermDescriptorId],
	s.[SchoolYear],
	s.[UniqueSectionCode],
	s.[SequenceOfCourse]
FROM [edfi].[Section] s
INNER JOIN UniqueSectionCodeNumber u
ON 
	s.[SchoolId] = u.[SchoolId]
	AND s.[ClassPeriodName] = u.[ClassPeriodName]
	AND s.[ClassroomIdentificationCode] = u.[ClassroomIdentificationCode]
	AND s.[LocalCourseCode] = u.[LocalCourseCode]
	AND s.[TermDescriptorId] = u.[TermDescriptorId]
	AND s.[SchoolYear] = u.[SchoolYear]
	AND s.[UniqueSectionCode] = u.[UniqueSectionCode]
	AND s.[SequenceOfCourse] = u.[SequenceOfCourse]
GO
