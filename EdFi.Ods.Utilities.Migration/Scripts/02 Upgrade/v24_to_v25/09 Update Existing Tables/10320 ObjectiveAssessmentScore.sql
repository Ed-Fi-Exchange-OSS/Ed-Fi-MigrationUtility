-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[ObjectiveAssessmentScore] from v2.0.1 to 2.5'
GO

ALTER TABLE [edfi].[ObjectiveAssessmentScore]
ADD
	[AssessmentIdentifier] [nvarchar] (60) NULL,
	[Namespace] [nvarchar] (255) NULL
GO

UPDATE [edfi].[ObjectiveAssessmentScore]
SET
	[AssessmentIdentifier] = m.[AssessmentIdentifier],
	[Namespace] = m.[Namespace]
FROM [edfi].[ObjectiveAssessmentScore] a
INNER JOIN [migration_tempdata].[AssessmentIdentityMapping] m
ON a.[AssessmentTitle] = m.[AssessmentTitle]
	AND a.[AssessedGradeLevelDescriptorId] = m.[AssessedGradeLevelDescriptorId]
	AND a.[AcademicSubjectDescriptorId] = m.[AcademicSubjectDescriptorId]
	AND a.[Version] = m.[Version]
GO

ALTER TABLE [edfi].[ObjectiveAssessmentScore]
ALTER COLUMN [AssessmentIdentifier] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[ObjectiveAssessmentScore]
ALTER COLUMN [Namespace] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[ObjectiveAssessmentScore] DROP
	COLUMN [AssessmentTitle],
	COLUMN [Version],
	COLUMN [AssessedGradeLevelDescriptorId],
	COLUMN [AcademicSubjectDescriptorId]
GO
