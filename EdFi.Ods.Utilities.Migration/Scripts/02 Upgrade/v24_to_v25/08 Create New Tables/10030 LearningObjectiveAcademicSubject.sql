-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[LearningObjectiveAcademicSubject]'
GO
CREATE TABLE [edfi].[LearningObjectiveAcademicSubject]
(
	[AcademicSubjectDescriptorId] [int] NOT NULL,
	[LearningObjectiveId] [nvarchar] (60) NOT NULL,
	[Namespace] [nvarchar] (255) NOT NULL,
	[CreateDate] [datetime] NOT NULL
)
GO
INSERT [edfi].[LearningObjectiveAcademicSubject]
(
	[AcademicSubjectDescriptorId],
	[LearningObjectiveId],
	[Namespace],
	[CreateDate]
)
SELECT DISTINCT
	[AcademicSubjectDescriptorId],
	[LearningObjectiveId],
	[Namespace],
	GETDATE()
FROM [migration_tempdata].[LearningObjectiveIdentityMapping]
UNION
SELECT DISTINCT
	l.[ParentAcademicSubjectDescriptorId],
	ISNULL(m.[LearningObjectiveId], l.[ParentObjective]),
	ISNULL(m.[Namespace], l.[Namespace]),
	GETDATE()
FROM [edfi].[LearningObjective] l
LEFT JOIN [migration_tempdata].[LearningObjectiveIdentityMapping] m
ON l.[ParentObjective] = m.[Objective]
	AND l.[ParentAcademicSubjectDescriptorId] = m.[AcademicSubjectDescriptorId]
	AND l.[ParentObjectiveGradeLevelDescriptorId] = m.[ObjectiveGradeLevelDescriptorId]
INNER JOIN [edfi].[AcademicSubjectDescriptor] d
	ON l.[ParentAcademicSubjectDescriptorId] = d.[AcademicSubjectDescriptorId]
WHERE 
	l.[ParentObjective] IS NOT NULL
GO