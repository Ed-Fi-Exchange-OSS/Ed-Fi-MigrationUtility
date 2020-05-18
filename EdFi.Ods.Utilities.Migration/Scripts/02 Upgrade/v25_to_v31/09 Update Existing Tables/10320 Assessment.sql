-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[Assessment]'
GO

ALTER TABLE [edfi].[Assessment] ADD [AssessmentVersion] [INT] NULL
GO

UPDATE [edfi].[Assessment]
SET [AssessmentVersion] = [Version]
GO

ALTER TABLE [edfi].[Assessment] ADD [AssessmentFamily] [nvarchar] (60) NULL
GO

UPDATE [edfi].[Assessment]
SET [AssessmentFamily] = LEFT([AssessmentFamilyTitle], 60)
GO

UPDATE [edfi].[Assessment]
SET
	[AssessmentIdentifier] = m.[V3AssessmentIdentifier],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[AssessmentIdentityMapping] m
INNER JOIN [edfi].[Assessment] a
	ON a.[AssessmentIdentifier] = m.[V2AssessmentIdentifier]
	AND a.[Namespace] = m.[V2Namespace]
GO

ALTER TABLE [edfi].[Assessment] DROP
COLUMN [AssessmentPeriodDescriptorId],
COLUMN [AssessmentFamilyTitle],
COLUMN [Version]
GO

ALTER TABLE [edfi].[Assessment] ALTER COLUMN [Namespace] [nvarchar] (255) NOT NULL
GO
