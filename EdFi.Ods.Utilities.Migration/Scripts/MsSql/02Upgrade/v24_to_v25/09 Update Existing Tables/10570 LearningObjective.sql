-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[LearningObjective] key'
GO

UPDATE [edfi].[LearningObjective]
SET
	[LearningObjectiveId] = m.[LearningObjectiveId]
FROM [edfi].[LearningObjective] o
INNER JOIN [migration_tempdata].[LearningObjectiveIdentityMapping] m
ON o.[Objective] = m.[Objective]
	AND o.[AcademicSubjectDescriptorId] = m.[AcademicSubjectDescriptorId]
	AND o.[ObjectiveGradeLevelDescriptorId] = m.[ObjectiveGradeLevelDescriptorId]
GO

ALTER TABLE [edfi].[LearningObjective]
ALTER COLUMN [LearningObjectiveId] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[LearningObjective]
ADD
	[ParentLearningObjectiveId] [nvarchar] (60) NULL,
	[ParentNamespace] [nvarchar] (255) NULL
GO

UPDATE [edfi].[LearningObjective]
SET
	[ParentLearningObjectiveId] = ISNULL(m.[LearningObjectiveId], l.[ParentObjective]),
	[ParentNamespace] = ISNULL(m.[Namespace], l.[Namespace])
FROM [edfi].[LearningObjective] l
LEFT JOIN [migration_tempdata].[LearningObjectiveIdentityMapping] m
ON l.[ParentObjective] = m.[Objective]
	AND l.[ParentAcademicSubjectDescriptorId] = m.[AcademicSubjectDescriptorId]
	AND l.[ParentObjectiveGradeLevelDescriptorId] = m.[ObjectiveGradeLevelDescriptorId]
WHERE l.[ParentObjective] IS NOT NULL
GO

ALTER TABLE [edfi].[LearningObjective] DROP
	COLUMN [ObjectiveGradeLevelDescriptorId],
	COLUMN [AcademicSubjectDescriptorId],
	COLUMN [ParentObjective],
	COLUMN [ParentAcademicSubjectDescriptorId],
	COLUMN [ParentObjectiveGradeLevelDescriptorId]
GO

;WITH [MissingParentObjectives] AS
(
SELECT DISTINCT
	p.[ParentLearningObjectiveId],
	p.[ParentNamespace]
FROM [edfi].[LearningObjective] p
LEFT JOIN [edfi].[LearningObjective] existing
ON 
	existing.[LearningObjectiveId] = p.[ParentLearningObjectiveId]
	AND existing.[Namespace] = p.[ParentNamespace]
WHERE
	 p.[ParentLearningObjectiveId] IS NOT NULL
	AND existing.[LearningObjectiveId] IS NULL
)
INSERT [edfi].[LearningObjective]
(
	[LearningObjectiveId],
	[Namespace],
	[Objective],
	[CreateDate],
	[LastModifiedDate],
	[Id]
)
SELECT
	[ParentLearningObjectiveId],
	[ParentNamespace],
	[ParentLearningObjectiveId],
	GETDATE(),
	GETDATE(),
	NEWID()
FROM [MissingParentObjectives]
GO
