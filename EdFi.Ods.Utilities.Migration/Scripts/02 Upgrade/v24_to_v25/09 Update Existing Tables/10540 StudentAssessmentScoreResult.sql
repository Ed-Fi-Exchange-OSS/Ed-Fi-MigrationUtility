-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating Assessment key references in [edfi].[StudentAssessmentScoreResult]'
GO

ALTER TABLE [edfi].[StudentAssessmentScoreResult]
ADD
	[AssessmentIdentifier] [nvarchar] (60) NULL,
	[StudentAssessmentIdentifier] [nvarchar] (60) NULL,
	[Namespace] [nvarchar] (255) NULL
GO

UPDATE [edfi].[StudentAssessmentScoreResult]
SET
	[AssessmentIdentifier] = m.[AssessmentIdentifier],
	[StudentAssessmentIdentifier] = s.[StudentAssessmentIdentifier],
	[Namespace] = m.[Namespace]
FROM [edfi].[StudentAssessmentScoreResult] a
INNER JOIN [migration_tempdata].[StudentAssessmentIdentityMapping] s
ON a.[StudentUSI] = s.[StudentUSI]
	AND a.[AssessmentTitle] = s.[AssessmentTitle]
	AND a.[AcademicSubjectDescriptorId] = s.[AcademicSubjectDescriptorId]
	AND a.[AssessedGradeLevelDescriptorId] = s.[AssessedGradeLevelDescriptorId]
	AND a.[Version] = s.[Version]
	AND a.[AdministrationDate] = s.[AdministrationDate]
INNER JOIN [migration_tempdata].[AssessmentIdentityMapping] m
ON s.[AssessmentTitle] = m.[AssessmentTitle]
	AND s.[AssessedGradeLevelDescriptorId] = m.[AssessedGradeLevelDescriptorId]
	AND s.[AcademicSubjectDescriptorId] = m.[AcademicSubjectDescriptorId]
	AND s.[Version] = m.[Version]
GO

ALTER TABLE [edfi].[StudentAssessmentScoreResult]
ALTER COLUMN [AssessmentIdentifier] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[StudentAssessmentScoreResult]
ALTER COLUMN [StudentAssessmentIdentifier] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[StudentAssessmentScoreResult]
ALTER COLUMN [Namespace] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[StudentAssessmentScoreResult] DROP
	COLUMN [AssessedGradeLevelDescriptorId],
	COLUMN [AcademicSubjectDescriptorId],
	COLUMN [AssessmentTitle],
	COLUMN [Version],
	COLUMN [AdministrationDate]
GO

