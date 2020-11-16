-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[EducationContentAuthor]'
GO

UPDATE [edfi].[EducationContentAuthor]
SET [Author] = LEFT([Author], 100)
GO

;WITH EducationContentAuthor AS 
(
SELECT 
	[Author],
	[ContentIdentifier],
	ROW_NUMBER() OVER
	(
		PARTITION BY [Author], [ContentIdentifier]
		ORDER BY [Author], [ContentIdentifier], [CreateDate]
	) AS [DuplicateAuthorNumber]
	FROM [edfi].[EducationContentAuthor]
)
DELETE FROM EducationContentAuthor 
WHERE [DuplicateAuthorNumber] > 1
GO

ALTER TABLE [edfi].[EducationContentAuthor] ALTER COLUMN [Author] [nvarchar] (100) NOT NULL
GO