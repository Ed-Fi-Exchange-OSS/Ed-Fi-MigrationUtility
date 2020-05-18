-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting namespaces to v3 format on [edfi].[ObjectiveAssessmentLearningObjective]'
GO

UPDATE [edfi].[ObjectiveAssessmentLearningObjective]
SET
	[AssessmentIdentifier] = m.[V3AssessmentIdentifier],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[AssessmentIdentityMapping] m
INNER JOIN [edfi].[ObjectiveAssessmentLearningObjective] a
	ON a.[AssessmentIdentifier] = m.[V2AssessmentIdentifier]
	AND a.[Namespace] = m.[V2Namespace]
GO


UPDATE [edfi].[ObjectiveAssessmentLearningObjective]
SET
	[LearningObjectiveId] = m.[V3LearningObjectiveId],
	[LearningObjectiveNamespace] = m.[V3Namespace]
FROM [migration_tempdata].[LearningObjectiveIdentityMapping] m
INNER JOIN [edfi].[ObjectiveAssessmentLearningObjective] l
	ON l.[LearningObjectiveId] = m.[V2LearningObjectiveId]
	AND l.[LearningObjectiveNamespace] = m.[V2Namespace]
GO

