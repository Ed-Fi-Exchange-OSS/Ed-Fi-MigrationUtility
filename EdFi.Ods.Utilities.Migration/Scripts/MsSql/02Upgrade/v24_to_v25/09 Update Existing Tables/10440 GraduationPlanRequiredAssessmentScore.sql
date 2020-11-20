-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating Assessment key references in [edfi].[GraduationPlanRequiredAssessmentScore]'
GO

ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentScore]
ADD
	[AssessmentIdentifier] [nvarchar] (60) NULL,
	[Namespace] [nvarchar] (255) NULL
GO

UPDATE [edfi].[GraduationPlanRequiredAssessmentScore]
SET
	[AssessmentIdentifier] = m.[AssessmentIdentifier],
	[Namespace] = m.[Namespace]
FROM [edfi].[GraduationPlanRequiredAssessmentScore] a
INNER JOIN [migration_tempdata].[AssessmentIdentityMapping] m
ON a.[AssessmentTitle] = m.[AssessmentTitle]
	AND a.[AssessedGradeLevelDescriptorId] = m.[AssessedGradeLevelDescriptorId]
	AND a.[AcademicSubjectDescriptorId] = m.[AcademicSubjectDescriptorId]
	AND a.[Version] = m.[Version]
GO

ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentScore]
ALTER COLUMN [AssessmentIdentifier] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentScore]
ALTER COLUMN [Namespace] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[GraduationPlanRequiredAssessmentScore] DROP
	COLUMN [AssessmentTitle],
	COLUMN [Version],
	COLUMN [AssessedGradeLevelDescriptorId],
	COLUMN [AcademicSubjectDescriptorId]
GO

