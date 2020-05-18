-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[LearningStandardContentStandardAuthor]'
GO

UPDATE [edfi].[LearningStandardContentStandardAuthor]
SET [Author] = LEFT([Author], 100)
GO

;WITH LearningStandardContentStandardAuthor AS 
(
SELECT 
	[Author],
	[LearningStandardId],
	ROW_NUMBER() OVER
	(
		PARTITION BY [Author], [LearningStandardId]
		ORDER BY [Author], [LearningStandardId], [CreateDate]
	) AS [DuplicateAuthorNumber]
	FROM [edfi].[LearningStandardContentStandardAuthor]
)
DELETE FROM LearningStandardContentStandardAuthor 
WHERE [DuplicateAuthorNumber] > 1
GO

ALTER TABLE [edfi].[LearningStandardContentStandardAuthor] ALTER COLUMN [Author] [nvarchar] (100) NOT NULL
GO