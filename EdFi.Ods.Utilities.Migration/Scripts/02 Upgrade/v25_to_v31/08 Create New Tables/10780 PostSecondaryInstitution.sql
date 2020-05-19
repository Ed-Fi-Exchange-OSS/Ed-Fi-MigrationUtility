-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[PostSecondaryInstitution]'
GO

CREATE TABLE [edfi].[PostSecondaryInstitution]
(
[PostSecondaryInstitutionId] [int] NOT NULL,
[PostSecondaryInstitutionLevelTypeId] [int] NULL,
[AdministrativeFundingControlDescriptorId] [int] NULL
)
GO

INSERT [edfi].[PostSecondaryInstitution]
(
[PostSecondaryInstitutionId]
)
/*
Note: 2.0 [PostSecondaryInstitutionId] is a string, but a compatibility requirement
is in place requiring that [PostSecondaryInstitutionId] be resolvable to an existing EducationOrganizationId,
which is an integer
*/
SELECT DISTINCT CAST([PostSecondaryInstitutionId] AS INT)
FROM [edfi].[PostSecondaryEventPostSecondaryInstitution]
GO

/*
Business Rule: In the event that there are multiple conflicting PostSecondaryInstitutionLevel options associated
with a single v3 PostSecondaryInstitution, select the PostSecondaryInstitutionLevel value that is associated
with the corresponding v3 PostSecondaryInstitution primary key the most.  If there are an equal number
of conflicting records, CreateDate will be used as a tiebreaker.
*/
;WITH [AllPostSecondaryInstitutionLevelOptions] AS
(
SELECT [PostSecondaryInstitutionId], --Select all available options for PostSecondaryInstitutionLevel for each v3 PostSecondaryInstitution, the number of times each value is used, and their create dates
[PostSecondaryInstitutionLevelTypeId],
[CreateDate],
ROW_NUMBER() OVER
(
	PARTITION BY [PostSecondaryInstitutionId], [PostSecondaryInstitutionLevelTypeId]
	ORDER BY [CreateDate]
) AS [PostSecondaryInstitutionLevelOrderKey]
FROM [edfi].[PostSecondaryEventPostSecondaryInstitution]
WHERE [PostSecondaryInstitutionLevelTypeId] IS NOT NULL
),
[PostSecondaryInstitutionLevelByPriority] AS
(
SELECT [PostSecondaryInstitutionId], --Rank each selection above by priority (first by number of usages, then by create date)
[PostSecondaryInstitutionLevelTypeId],
ROW_NUMBER() OVER
(
	PARTITION BY [PostSecondaryInstitutionId]
	ORDER BY [PostSecondaryInstitutionLevelOrderKey] DESC, [CreateDate] DESC
) AS [PostSecondaryInstitutionKey_V3_Priority]
FROM [AllPostSecondaryInstitutionLevelOptions] 
)
UPDATE  [edfi].[PostSecondaryInstitution]
SET [PostSecondaryInstitutionLevelTypeId] = psi_level.[PostSecondaryInstitutionLevelTypeId]
FROM [edfi].[PostSecondaryInstitution] psi
INNER JOIN [PostSecondaryInstitutionLevelByPriority] psi_level
ON psi.[PostSecondaryInstitutionId] = psi_level.[PostSecondaryInstitutionId]
AND psi_level.[PostSecondaryInstitutionKey_V3_Priority] = 1 --Selects the single best matching PostSecondaryInstitutionLevel for each PostSecondaryInstitution using the business rule logic commented above
GO

--Selection of a AdministrativeFundingControlDescriptor uses the same logic as PostSecondaryInstitutionLevel above
;WITH [AllPostSecondaryInstitutionLevelOptions] AS 
(
SELECT [PostSecondaryInstitutionId],
[AdministrativeFundingControlDescriptorId],
[CreateDate],
ROW_NUMBER() OVER
(
	PARTITION BY [PostSecondaryInstitutionId], [AdministrativeFundingControlDescriptorId]
	ORDER BY [CreateDate]
) AS [PostSecondaryInstitutionAdministrativeFundingControlDescriptorOrderKey]
FROM [edfi].[PostSecondaryEventPostSecondaryInstitution]
WHERE [AdministrativeFundingControlDescriptorId] IS NOT NULL
),
[AdministrativeFundingControlDescriptorByPriority] AS
(
SELECT [PostSecondaryInstitutionId],
[AdministrativeFundingControlDescriptorId],
ROW_NUMBER() OVER
(
	PARTITION BY [PostSecondaryInstitutionId]
	ORDER BY [PostSecondaryInstitutionAdministrativeFundingControlDescriptorOrderKey] DESC, [CreateDate] DESC
) AS [PostSecondaryInstitutionKey_V3_Priority]
FROM [AllPostSecondaryInstitutionLevelOptions] 
)
UPDATE  [edfi].[PostSecondaryInstitution]
SET [AdministrativeFundingControlDescriptorId] = a.[AdministrativeFundingControlDescriptorId]
FROM [edfi].[PostSecondaryInstitution] psi
INNER JOIN [AdministrativeFundingControlDescriptorByPriority] a
ON psi.[PostSecondaryInstitutionId] = a.[PostSecondaryInstitutionId]
AND a.[PostSecondaryInstitutionKey_V3_Priority] = 1
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'PostSecondaryInstitution',
'edfi', 'PostSecondaryInstitutionLevelDescriptor',
'edfi', 'PostSecondaryInstitutionLevelType'
GO

ALTER TABLE [edfi].[PostSecondaryInstitution]
DROP COLUMN [PostSecondaryInstitutionLevelTypeId]
GO
