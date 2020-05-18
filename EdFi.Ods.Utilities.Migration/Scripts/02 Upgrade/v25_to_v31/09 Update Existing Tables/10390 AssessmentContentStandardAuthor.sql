-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[AssessmentContentStandardAuthor]'
GO

UPDATE [edfi].[AssessmentContentStandardAuthor]
SET [Author] = LEFT([Author], 100)
GO

;WITH AssessmentContentStandardAuthor AS 
(
SELECT 
	[AssessmentIdentifier],
	[Namespace],
	[Author],
	ROW_NUMBER() OVER
	(
		PARTITION BY [Author], [AssessmentIdentifier], [Namespace]
		ORDER BY [CreateDate]
	) AS [DuplicateAuthorNumber]
	FROM [edfi].[AssessmentContentStandardAuthor]
)
DELETE FROM AssessmentContentStandardAuthor 
WHERE [DuplicateAuthorNumber] > 1
GO

ALTER TABLE [edfi].[AssessmentContentStandardAuthor] ALTER COLUMN [Author] [nvarchar] (100) NOT NULL
GO

PRINT N'Converting namespace to v3 format on [edfi].[AssessmentContentStandardAuthor]'
GO

UPDATE [edfi].[AssessmentContentStandardAuthor]
SET
	[AssessmentIdentifier] = m.[V3AssessmentIdentifier],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[AssessmentIdentityMapping] m
INNER JOIN [edfi].[AssessmentContentStandardAuthor] a
	ON a.[AssessmentIdentifier] = m.[V2AssessmentIdentifier]
	AND a.[Namespace] = m.[V2Namespace]
GO

