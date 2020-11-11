-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting namespace to v3 format on [edfi].[StudentAssessmentStudentObjectiveAssessment]'
GO

UPDATE [edfi].[StudentAssessmentStudentObjectiveAssessment]
SET
	[AssessmentIdentifier] = m.[V3AssessmentIdentifier],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[AssessmentIdentityMapping] m
INNER JOIN [edfi].[StudentAssessmentStudentObjectiveAssessment] a
	ON a.[AssessmentIdentifier] = m.[V2AssessmentIdentifier]
	AND a.[Namespace] = m.[V2Namespace]


