-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating GradingPeriod reference on [edfi].[StudentLearningObjective]'
GO

ALTER TABLE [edfi].[StudentLearningObjective]
ADD [GradingPeriodSequence] [INT] NULL,
[GradingPeriodSchoolYear] [smallint] NULL,
[GradingPeriodSchoolId] [INT] NULL
GO

UPDATE [edfi].[StudentLearningObjective]
SET [GradingPeriodSequence] = m.[PeriodSequence]
,[GradingPeriodSchoolYear] = m.[SchoolYear]
, [GradingPeriodSchoolId] = m.[SchoolId]
FROM [edfi].[StudentLearningObjective] s
INNER JOIN [migration_tempdata].[GradingPeriodIdentityMapping] m
	ON m.[GradingPeriodDescriptorId] = s.[GradingPeriodDescriptorId]
	AND m.[SchoolId] = s.[SchoolId]
	AND m.[BeginDate] = s.[GradingPeriodBeginDate]
GO

ALTER TABLE [edfi].[StudentLearningObjective]
ALTER COLUMN [GradingPeriodSequence] [INT] NOT NULL
GO

ALTER TABLE [edfi].[StudentLearningObjective]
ALTER COLUMN [GradingPeriodSchoolYear] [smallint] NOT NULL
GO

ALTER TABLE [edfi].[StudentLearningObjective]
ALTER COLUMN [GradingPeriodSchoolId] [INT] NOT NULL
GO

PRINT N'Converting namespace to v3 format on [edfi].[StudentLearningObjective]'
GO

UPDATE [edfi].[StudentLearningObjective]
SET
	[LearningObjectiveId] = m.[V3LearningObjectiveId],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[LearningObjectiveIdentityMapping] m
INNER JOIN [edfi].[StudentLearningObjective] l
	ON l.[LearningObjectiveId] = m.[V2LearningObjectiveId]
	AND l.[Namespace] = m.[V2Namespace]
GO

PRINT N'Dropping columns on [edfi].[StudentLearningObjective] which have been moved, renamed, or are no longer used'
GO

ALTER TABLE [edfi].[StudentLearningObjective] DROP
COLUMN [BeginDate],
COLUMN [StudentSectionAssociationBeginDate],
COLUMN [ClassPeriodName],
COLUMN [ClassroomIdentificationCode],
COLUMN [ProgramEducationOrganizationId],
COLUMN [ProgramTypeId],
COLUMN [ProgramName],
COLUMN [EducationOrganizationId],
COLUMN [LocalCourseCode],
COLUMN [SchoolYear],
COLUMN [UniqueSectionCode],
COLUMN [SequenceOfCourse],
COLUMN [TermDescriptorId],
COLUMN [GradingPeriodBeginDate],
COLUMN [SchoolId]
GO
