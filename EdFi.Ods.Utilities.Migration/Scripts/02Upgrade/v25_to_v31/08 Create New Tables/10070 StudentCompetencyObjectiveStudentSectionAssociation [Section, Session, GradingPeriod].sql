-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentCompetencyObjectiveStudentSectionAssociation]'
GO

CREATE TABLE [edfi].[StudentCompetencyObjectiveStudentSectionAssociation]
(
[BeginDate] [date] NOT NULL,
[GradingPeriodDescriptorId] [int] NOT NULL,
[GradingPeriodSchoolId] [int] NOT NULL,
[GradingPeriodSchoolYear] [smallint] NOT NULL,
[GradingPeriodSequence] [int] NOT NULL,
[LocalCourseCode] [nvarchar] (60) NOT NULL,
[Objective] [nvarchar] (60) NOT NULL,
[ObjectiveEducationOrganizationId] [int] NOT NULL,
[ObjectiveGradeLevelDescriptorId] [int] NOT NULL,
[SchoolId] [int] NOT NULL,
[SchoolYear] [smallint] NOT NULL,
[SectionIdentifier] [nvarchar] (255) NOT NULL,
[SessionName] [nvarchar] (60) NOT NULL,
[StudentUSI] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO


INSERT [edfi].[StudentCompetencyObjectiveStudentSectionAssociation]
(
[BeginDate],
[GradingPeriodDescriptorId],
[GradingPeriodSchoolId],
[GradingPeriodSchoolYear],
[GradingPeriodSequence],
[LocalCourseCode],
[Objective],
[ObjectiveEducationOrganizationId],
[ObjectiveGradeLevelDescriptorId],
[SchoolId],
[SchoolYear],
[SectionIdentifier],
[SessionName],
[StudentUSI],
[CreateDate]
)
SELECT
sco.[BeginDate],
sco.[GradingPeriodDescriptorId],
sco.[SchoolId],
m.[SchoolYear],
m.[PeriodSequence],
sco.[LocalCourseCode],
sco.[Objective],
sco.[ObjectiveEducationOrganizationId],
sco.[ObjectiveGradeLevelDescriptorId],
sco.[SchoolId],
sco.[SchoolYear],
sect.[SectionIdentifier],
sess.[SessionName],
sco.[StudentUSI],
GETDATE()
FROM [edfi].[StudentCompetencyObjective] sco
INNER JOIN [edfi].[Session] sess
	ON sess.[TermDescriptorId] = sco.[TermDescriptorId]
	AND sess.[SchoolYear] = sco.[SchoolYear]
	AND sess.[SchoolId] = sco.[SchoolId]
INNER JOIN [migration_tempdata].[SectionIdentityMapping] sect
	ON sco.[SchoolId] = sect.[SchoolId]
	AND sco.[ClassPeriodName] = sect.[ClassPeriodName]
	AND sco.[ClassroomIdentificationCode] = sect.[ClassroomIdentificationCode]
	AND sco.[LocalCourseCode] = sect.[LocalCourseCode]
	AND sess.[TermDescriptorId] = sect.[TermDescriptorId]
	AND sco.[SchoolYear] = sect.[SchoolYear]
	AND sco.[UniqueSectionCode] = sect.[UniqueSectionCode]
	AND sco.[SequenceOfCourse] = sect.[SequenceOfCourse]
INNER JOIN [migration_tempdata].[GradingPeriodIdentityMapping] m
	ON m.[GradingPeriodDescriptorId] = sco.[GradingPeriodDescriptorId]
	AND m.[SchoolId] = sco.[SchoolId]
	AND m.[BeginDate] = sco.[GradingPeriodBeginDate]
GO
