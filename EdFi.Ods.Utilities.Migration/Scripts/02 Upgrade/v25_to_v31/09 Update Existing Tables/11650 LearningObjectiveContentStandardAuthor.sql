-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[LearningObjectiveContentStandardAuthor]'
GO

UPDATE [edfi].[LearningObjectiveContentStandardAuthor]
SET [Author] = LEFT([Author], 100)
GO

;WITH LearningObjectiveContentStandardAuthor AS 
(
SELECT 
	[Author],
	[LearningObjectiveId],
	[Namespace],
	ROW_NUMBER() OVER
	(
		PARTITION BY [Author], [LearningObjectiveId], [Namespace]
		ORDER BY [CreateDate]
	) AS [DuplicateAuthorNumber]
	FROM [edfi].[LearningObjectiveContentStandardAuthor]
)
DELETE FROM LearningObjectiveContentStandardAuthor 
WHERE [DuplicateAuthorNumber] > 1
GO

ALTER TABLE [edfi].[LearningObjectiveContentStandardAuthor] ALTER COLUMN [Author] [nvarchar] (100) NOT NULL
GO

PRINT N'Converting namespace to v3 format on [edfi].[LearningObjectiveContentStandardAuthor]'
GO

UPDATE [edfi].[LearningObjectiveContentStandardAuthor]
SET
	[LearningObjectiveId] = m.[V3LearningObjectiveId],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[LearningObjectiveIdentityMapping] m
INNER JOIN [edfi].[LearningObjectiveContentStandardAuthor] l
	ON l.[LearningObjectiveId] = m.[V2LearningObjectiveId]
	AND l.[Namespace] = m.[V2Namespace]
GO
