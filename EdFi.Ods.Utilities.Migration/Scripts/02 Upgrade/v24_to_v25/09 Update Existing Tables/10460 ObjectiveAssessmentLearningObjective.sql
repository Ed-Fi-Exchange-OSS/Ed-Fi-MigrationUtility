-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating Assessment key references in [edfi].[ObjectiveAssessmentLearningObjective]'
GO

ALTER TABLE [edfi].[ObjectiveAssessmentLearningObjective]
ADD
	[AssessmentIdentifier] [nvarchar] (60) NULL,
	[Namespace] [nvarchar] (255) NULL
GO

UPDATE [edfi].[ObjectiveAssessmentLearningObjective]
SET
	[AssessmentIdentifier] = m.[AssessmentIdentifier],
	[Namespace] = m.[Namespace]
FROM [edfi].[ObjectiveAssessmentLearningObjective] a
INNER JOIN [migration_tempdata].[AssessmentIdentityMapping] m
ON a.[AssessmentTitle] = m.[AssessmentTitle]
	AND a.[AssessedGradeLevelDescriptorId] = m.[AssessedGradeLevelDescriptorId]
	AND a.[AcademicSubjectDescriptorId] = m.[AcademicSubjectDescriptorId]
	AND a.[Version] = m.[Version]
GO

ALTER TABLE [edfi].[ObjectiveAssessmentLearningObjective]
ALTER COLUMN [AssessmentIdentifier] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[ObjectiveAssessmentLearningObjective]
ALTER COLUMN [Namespace] [nvarchar] (255) NOT NULL
GO

PRINT N'Updating LearningObjective key references in [edfi].[ObjectiveAssessmentLearningObjective]'
GO

ALTER TABLE [edfi].[ObjectiveAssessmentLearningObjective]
ADD
	[LearningObjectiveId] [nvarchar] (60) NULL,
	[LearningObjectiveNamespace] [nvarchar] (255) NULL
GO

UPDATE [edfi].[ObjectiveAssessmentLearningObjective]
SET
	[LearningObjectiveId] = m.[LearningObjectiveId],
	[LearningObjectiveNamespace] = m.[Namespace]
FROM [edfi].[ObjectiveAssessmentLearningObjective] o
INNER JOIN [migration_tempdata].[LearningObjectiveIdentityMapping] m
ON o.[Objective] = m.[Objective]
	AND o.[AcademicSubjectDescriptorId] = m.[AcademicSubjectDescriptorId]
	AND o.[AssessedGradeLevelDescriptorId] = m.[ObjectiveGradeLevelDescriptorId]
GO

ALTER TABLE [edfi].[ObjectiveAssessmentLearningObjective]
ALTER COLUMN [LearningObjectiveId] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[ObjectiveAssessmentLearningObjective]
ALTER COLUMN [LearningObjectiveNamespace] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[ObjectiveAssessmentLearningObjective] DROP
	COLUMN [AssessmentTitle],
	COLUMN [Version],
	COLUMN [Objective],
	COLUMN [AssessedGradeLevelDescriptorId],
	COLUMN [AcademicSubjectDescriptorId]
GO
