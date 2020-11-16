-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentCompetencyObjectiveGeneralStudentProgramAssociation]'
GO

CREATE TABLE [edfi].[StudentCompetencyObjectiveGeneralStudentProgramAssociation]
(
[BeginDate] [date] NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[GradingPeriodDescriptorId] [int] NOT NULL,
[GradingPeriodSchoolId] [int] NOT NULL,
[GradingPeriodSchoolYear] [smallint] NOT NULL,
[GradingPeriodSequence] [int] NOT NULL,
[Objective] [nvarchar] (60) NOT NULL,
[ObjectiveEducationOrganizationId] [int] NOT NULL,
[ObjectiveGradeLevelDescriptorId] [int] NOT NULL,
[ProgramEducationOrganizationId] [int] NOT NULL,
[ProgramName] [nvarchar] (60) NOT NULL,
[ProgramTypeDescriptorId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO


INSERT [edfi].[StudentCompetencyObjectiveGeneralStudentProgramAssociation]
(
[BeginDate],
[EducationOrganizationId],
[GradingPeriodDescriptorId],
[GradingPeriodSchoolId],
[GradingPeriodSchoolYear],
[GradingPeriodSequence],
[Objective],
[ObjectiveEducationOrganizationId] ,
[ObjectiveGradeLevelDescriptorId],
[ProgramEducationOrganizationId],
[ProgramName],
[ProgramTypeDescriptorId],
[StudentUSI],
[CreateDate]
)
SELECT
sco.[BeginDate],
sco.[EducationOrganizationId],
sco.[GradingPeriodDescriptorId],
sco.[SchoolId],
g.[SchoolYear],
g.[PeriodSequence],
sco.[Objective],
sco.[ObjectiveEducationOrganizationId] ,
sco.[ObjectiveGradeLevelDescriptorId],
sco.[ProgramEducationOrganizationId],
sco.[ProgramName],
p.[ProgramTypeDescriptorId],
sco.[StudentUSI],
GETDATE()
FROM [edfi].[StudentCompetencyObjective] sco
INNER JOIN [edfi].[StudentProgramAssociation] spa
	ON sco.ProgramName = spa.ProgramName
	AND sco.ProgramTypeId = spa.ProgramTypeId
	AND sco.EducationOrganizationId = spa.EducationOrganizationId
	AND sco.ProgramEducationOrganizationId = spa.ProgramEducationOrganizationId
	AND sco.StudentUSI = spa.StudentUSI
	AND sco.BeginDate = spa.BeginDate
INNER JOIN [migration_tempdata].[ProgramIdentityMapping] p
	ON p.[EducationOrganizationId] = sco.[ProgramEducationOrganizationId]
	AND p.[ProgramTypeId] = sco.[ProgramTypeId]
	AND p.[ProgramName] = sco.[ProgramName]
INNER JOIN [migration_tempdata].[GradingPeriodIdentityMapping] g
	ON g.[GradingPeriodDescriptorId] = sco.[GradingPeriodDescriptorId]
	AND g.[SchoolId] = sco.[SchoolId]
	AND g.[BeginDate] = sco.[GradingPeriodBeginDate]
GO
