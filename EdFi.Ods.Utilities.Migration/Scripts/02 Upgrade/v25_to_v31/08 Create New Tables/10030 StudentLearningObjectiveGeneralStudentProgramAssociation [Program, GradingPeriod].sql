-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentLearningObjectiveGeneralStudentProgramAssociation]'
GO

CREATE TABLE [edfi].[StudentLearningObjectiveGeneralStudentProgramAssociation]
(
[BeginDate] [date] NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[GradingPeriodDescriptorId] [int] NOT NULL,
[GradingPeriodSchoolId] [int] NOT NULL,
[GradingPeriodSchoolYear] [smallint] NOT NULL,
[GradingPeriodSequence] [int] NOT NULL,
[LearningObjectiveId] [nvarchar] (60) NOT NULL,
[Namespace] [nvarchar] (255) NOT NULL,
[ProgramEducationOrganizationId] [int] NOT NULL,
[ProgramName] [nvarchar] (60) NOT NULL,
[ProgramTypeDescriptorId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[StudentLearningObjectiveGeneralStudentProgramAssociation]
(
[BeginDate],
[EducationOrganizationId],
[GradingPeriodDescriptorId],
[GradingPeriodSchoolId],
[GradingPeriodSchoolYear],
[GradingPeriodSequence],
[LearningObjectiveId],
[Namespace],
[ProgramEducationOrganizationId],
[ProgramName],
[ProgramTypeDescriptorId],
[StudentUSI],
[CreateDate]
)
SELECT
slo.[BeginDate],
slo.[EducationOrganizationId],
slo.[GradingPeriodDescriptorId],
slo.[SchoolId],
g.[SchoolYear],
g.[PeriodSequence],
slo.[LearningObjectiveId],
slo.[Namespace],
slo.[ProgramEducationOrganizationId],
slo.[ProgramName],
p.[ProgramTypeDescriptorId],
slo.[StudentUSI],
GETDATE()
FROM [edfi].[StudentLearningObjective] slo
INNER JOIN [edfi].[StudentProgramAssociation] spa
	ON slo.ProgramName = spa.ProgramName
	AND slo.ProgramTypeId = spa.ProgramTypeId
	AND slo.EducationOrganizationId = spa.EducationOrganizationId
	AND slo.ProgramEducationOrganizationId = spa.ProgramEducationOrganizationId
	AND slo.StudentUSI = spa.StudentUSI
	AND slo.BeginDate = spa.BeginDate
INNER JOIN [migration_tempdata].[ProgramIdentityMapping] p
	ON p.[EducationOrganizationId] = slo.[ProgramEducationOrganizationId]
	AND p.[ProgramTypeId] = slo.[ProgramTypeId]
	AND p.[ProgramName] = slo.[ProgramName]
INNER JOIN [migration_tempdata].[GradingPeriodIdentityMapping] g
	ON g.[GradingPeriodDescriptorId] = slo.[GradingPeriodDescriptorId]
	AND g.[SchoolId] = slo.[SchoolId]
	AND g.[BeginDate] = slo.[GradingPeriodBeginDate]
GO

PRINT N'Converting namespace to v3 format on [edfi].[StudentLearningObjectiveGeneralStudentProgramAssociation]'
GO

UPDATE [edfi].[StudentLearningObjectiveGeneralStudentProgramAssociation]
SET
	[LearningObjectiveId] = m.[V3LearningObjectiveId],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[LearningObjectiveIdentityMapping] m
INNER JOIN [edfi].[StudentLearningObjectiveGeneralStudentProgramAssociation] l
	ON l.[LearningObjectiveId] = m.[V2LearningObjectiveId]
	AND l.[Namespace] = m.[V2Namespace]
GO


