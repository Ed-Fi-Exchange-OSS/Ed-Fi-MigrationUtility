-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[Assessment]'
GO

ALTER TABLE [edfi].[Assessment]
ADD
	[AssessmentIdentifier] [nvarchar] (60) NULL,
	[EducationOrganizationId] [int] NULL,
	[AdaptiveAssessment] [bit] NULL
GO

UPDATE [edfi].[Assessment]
SET
	[AssessmentIdentifier] = m.[AssessmentIdentifier],
	[Namespace] = m.[Namespace]
FROM [edfi].[Assessment] a
INNER JOIN [migration_tempdata].[AssessmentIdentityMapping] m
ON a.[AssessmentTitle] = m.[AssessmentTitle]
	AND a.[AssessedGradeLevelDescriptorId] = m.[AssessedGradeLevelDescriptorId]
	AND a.[AcademicSubjectDescriptorId] = m.[AcademicSubjectDescriptorId]
	AND a.[Version] = m.[Version]
GO

ALTER TABLE [edfi].[Assessment]
ALTER COLUMN [AssessmentIdentifier] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[Assessment]
ALTER COLUMN [Namespace] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[Assessment]
ALTER COLUMN [Version] [int] NULL
GO

ALTER TABLE [edfi].[Assessment] ALTER COLUMN [AssessmentTitle] [nvarchar] (100) NOT NULL
GO

ALTER TABLE [edfi].[Assessment] ALTER COLUMN [AssessmentFamilyTitle] [nvarchar] (100) NULL
GO

ALTER TABLE [edfi].[Assessment] DROP
	COLUMN [AssessedGradeLevelDescriptorId],
	COLUMN [AcademicSubjectDescriptorId],
	COLUMN [LowestAssessedGradeLevelDescriptorId]
GO
