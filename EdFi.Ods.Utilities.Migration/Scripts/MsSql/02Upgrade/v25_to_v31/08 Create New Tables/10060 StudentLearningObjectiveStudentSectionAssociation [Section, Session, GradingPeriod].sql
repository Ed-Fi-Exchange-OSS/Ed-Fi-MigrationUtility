-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentLearningObjectiveStudentSectionAssociation]'
GO


CREATE TABLE [edfi].[StudentLearningObjectiveStudentSectionAssociation]
(
[BeginDate] [date] NOT NULL,
[GradingPeriodDescriptorId] [int] NOT NULL,
[GradingPeriodSchoolId] [int] NOT NULL,
[GradingPeriodSchoolYear] [smallint] NOT NULL,
[GradingPeriodSequence] [int] NOT NULL,
[LocalCourseCode] [nvarchar] (60) NOT NULL,
[LearningObjectiveId] [nvarchar] (60) NOT NULL,
[Namespace] [nvarchar] (255) NOT NULL,
[SchoolId] [int] NOT NULL,
[SchoolYear] [smallint] NOT NULL,
[SectionIdentifier] [nvarchar] (255) NOT NULL,
[SessionName] [nvarchar] (60) NOT NULL,
[StudentUSI] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[StudentLearningObjectiveStudentSectionAssociation]
(
[BeginDate],
[GradingPeriodDescriptorId],
[GradingPeriodSchoolId],
[GradingPeriodSchoolYear],
[GradingPeriodSequence],
[LocalCourseCode],
[LearningObjectiveId],
[Namespace],
[SchoolId],
[SchoolYear],
[SectionIdentifier],
[SessionName],
[StudentUSI],
[CreateDate]
)
SELECT
l.[StudentSectionAssociationBeginDate],
l.[GradingPeriodDescriptorId],
l.[SchoolId],
g.[SchoolYear],
g.[PeriodSequence],
l.[LocalCourseCode],
l.[LearningObjectiveId],
l.[Namespace],
l.[SchoolId],
l.[SchoolYear],
sect.[SectionIdentifier],
sess.[SessionName],
l.[StudentUSI],
GETDATE()
FROM [edfi].[StudentLearningObjective] l
INNER JOIN [migration_tempdata].[SessionIdentityMapping] sess
	ON sess.[TermDescriptorId] = l.[TermDescriptorId]
	AND sess.[SchoolYear] = l.[SchoolYear]
	AND sess.[SchoolId] = l.[SchoolId]
INNER JOIN [migration_tempdata].[SectionIdentityMapping] sect
	ON l.[SchoolId] = sect.[SchoolId]
	AND l.[ClassPeriodName] = sect.[ClassPeriodName]
	AND l.[ClassroomIdentificationCode] = sect.[ClassroomIdentificationCode]
	AND l.[LocalCourseCode] = sect.[LocalCourseCode]
	AND sess.[TermDescriptorId] = sect.[TermDescriptorId]
	AND l.[SchoolYear] = sect.[SchoolYear]
	AND l.[UniqueSectionCode] = sect.[UniqueSectionCode]
	AND l.[SequenceOfCourse] = sect.[SequenceOfCourse]
INNER JOIN [edfi].[StudentSectionAssociation] s
	ON l.[StudentUSI] = s.[StudentUSI]
	AND l.[SchoolId] = s.[SchoolId]
	AND l.[ClassPeriodName] = s.[ClassPeriodName]
	AND l.[ClassroomIdentificationCode] = s.[ClassroomIdentificationCode]
	AND l.[LocalCourseCode] = s.[LocalCourseCode]
	AND l.[UniqueSectionCode] = s.[UniqueSectionCode]
	AND l.[SequenceOfCourse] = s.[SequenceOfCourse]
	AND l.[SchoolYear] = s.[SchoolYear]
	AND l.[TermDescriptorId] = s.[TermDescriptorId]
	AND l.[StudentSectionAssociationBeginDate] = s.[BeginDate]
INNER JOIN [migration_tempdata].[GradingPeriodIdentityMapping] g
	ON g.[GradingPeriodDescriptorId] = l.[GradingPeriodDescriptorId]
	AND g.[SchoolId] = l.[SchoolId]
	AND g.[BeginDate] = l.[GradingPeriodBeginDate]
GO

PRINT N'Converting namespace to v3 format on [edfi].[StudentLearningObjectiveStudentSectionAssociation]'
GO

UPDATE [edfi].[StudentLearningObjectiveStudentSectionAssociation]
SET
	[LearningObjectiveId] = m.[V3LearningObjectiveId],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[LearningObjectiveIdentityMapping] m
INNER JOIN [edfi].[StudentLearningObjectiveStudentSectionAssociation] l
	ON l.[LearningObjectiveId] = m.[V2LearningObjectiveId]
	AND l.[Namespace] = m.[V2Namespace]
GO

