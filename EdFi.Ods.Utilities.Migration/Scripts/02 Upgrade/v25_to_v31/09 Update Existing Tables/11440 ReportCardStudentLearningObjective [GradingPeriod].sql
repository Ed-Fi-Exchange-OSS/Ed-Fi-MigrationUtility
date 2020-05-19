-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[ReportCardStudentLearningObjective]'
GO

ALTER TABLE [edfi].[ReportCardStudentLearningObjective]
ADD [EducationOrganizationId] [INT] NULL
GO

UPDATE [edfi].[ReportCardStudentLearningObjective]
SET [EducationOrganizationId] = [ReportCardEducationOrganizationId]
GO

ALTER TABLE [edfi].[ReportCardStudentLearningObjective]
DROP COLUMN [ReportCardEducationOrganizationId] 
GO

ALTER TABLE [edfi].[ReportCardStudentLearningObjective]
ALTER COLUMN [EducationOrganizationId] [INT] NOT NULL
GO

PRINT N'Converting namespace to v3 format on [edfi].[ReportCardStudentLearningObjective]'
GO

UPDATE [edfi].[ReportCardStudentLearningObjective]
SET
	[LearningObjectiveId] = m.[V3LearningObjectiveId],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[LearningObjectiveIdentityMapping] m
INNER JOIN [edfi].[ReportCardStudentLearningObjective] l
	ON l.[LearningObjectiveId] = m.[V2LearningObjectiveId]
	AND l.[Namespace] = m.[V2Namespace]
GO

PRINT N'Updating GradingPeriod reference on [edfi].[ReportCardStudentLearningObjective]'
GO

ALTER TABLE [edfi].[ReportCardStudentLearningObjective]
ADD [GradingPeriodSequence] [INT] NULL,
[GradingPeriodSchoolYear] [smallint] NULL,
[GradingPeriodSchoolId] [INT] NULL
GO

UPDATE [edfi].[ReportCardStudentLearningObjective]
SET [GradingPeriodSequence] = m.[PeriodSequence]
,[GradingPeriodSchoolYear] = m.[SchoolYear]
, [GradingPeriodSchoolId] = m.[SchoolId]
FROM [edfi].[ReportCardStudentLearningObjective] r
INNER JOIN [migration_tempdata].[GradingPeriodIdentityMapping] m
	ON m.[GradingPeriodDescriptorId] = r.[GradingPeriodDescriptorId]
	AND m.[SchoolId] = r.[SchoolId]
	AND m.[BeginDate] = r.[GradingPeriodBeginDate]
GO

ALTER TABLE [edfi].[ReportCardStudentLearningObjective]
ALTER COLUMN [GradingPeriodSequence] [INT] NOT NULL
GO

ALTER TABLE [edfi].[ReportCardStudentLearningObjective]
ALTER COLUMN [GradingPeriodSchoolYear] [smallint] NOT NULL
GO

ALTER TABLE [edfi].[ReportCardStudentLearningObjective]
ALTER COLUMN [GradingPeriodSchoolId] [INT] NOT NULL
GO

ALTER TABLE [edfi].[ReportCardStudentLearningObjective]
DROP COLUMN [GradingPeriodBeginDate], [SchoolId]
GO
