-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating GradingPeriod reference on [edfi].[StudentCompetencyObjective]'
GO

ALTER TABLE [edfi].[StudentCompetencyObjective]
ADD [GradingPeriodSequence] [INT] NULL,
[GradingPeriodSchoolYear] [smallint] NULL,
[GradingPeriodSchoolId] [INT] NULL
GO

UPDATE [edfi].[StudentCompetencyObjective]
SET [GradingPeriodSequence] = m.[PeriodSequence]
,[GradingPeriodSchoolYear] = m.[SchoolYear]
, [GradingPeriodSchoolId] = m.[SchoolId]
FROM [edfi].[StudentCompetencyObjective] s
INNER JOIN [migration_tempdata].[GradingPeriodIdentityMapping] m
	ON m.[GradingPeriodDescriptorId] = s.[GradingPeriodDescriptorId]
	AND m.[SchoolId] = s.[SchoolId]
	AND m.[BeginDate] = s.[GradingPeriodBeginDate]
GO

ALTER TABLE [edfi].[StudentCompetencyObjective]
ALTER COLUMN [GradingPeriodSequence] [INT] NOT NULL
GO

ALTER TABLE [edfi].[StudentCompetencyObjective]
ALTER COLUMN [GradingPeriodSchoolYear] [smallint] NOT NULL
GO

ALTER TABLE [edfi].[StudentCompetencyObjective]
ALTER COLUMN [GradingPeriodSchoolId] [INT] NOT NULL
GO

PRINT N'Dropping columns on [edfi].[StudentCompetencyObjective] which have been moved, renamed, or are no longer used'
GO

ALTER TABLE [edfi].[StudentCompetencyObjective] DROP
COLUMN [ProgramEducationOrganizationId],
COLUMN [ProgramTypeId],
COLUMN [ProgramName],
COLUMN [EducationOrganizationId],
COLUMN [BeginDate],
COLUMN [UniqueSectionCode],
COLUMN [SequenceOfCourse],
COLUMN [SchoolYear],
COLUMN [LocalCourseCode],
COLUMN [ClassroomIdentificationCode],
COLUMN [ClassPeriodName],
COLUMN [TermDescriptorId],
COLUMN [GradingPeriodBeginDate],
COLUMN [SchoolId]
GO
