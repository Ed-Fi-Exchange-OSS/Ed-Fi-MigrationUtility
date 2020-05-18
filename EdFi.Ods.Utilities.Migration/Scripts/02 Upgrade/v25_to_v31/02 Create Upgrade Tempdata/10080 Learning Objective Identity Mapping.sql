-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Generating v3 LearningObjective namespaces'
GO

IF OBJECT_ID('migration_tempdata.LearningObjectiveIdentityMapping', 'U') IS NOT NULL 
DROP TABLE [migration_tempdata].[LearningObjectiveIdentityMapping]
GO

CREATE TABLE [migration_tempdata].[LearningObjectiveIdentityMapping]
(
	[V2LearningObjectiveId] [nvarchar] (60) NOT NULL,
	[V2Namespace] [nvarchar] (255) NOT NULL,
	[V3LearningObjectiveId] [nvarchar] (60) NOT NULL,
	[V3Namespace] [nvarchar] (255) NOT NULL,
	[PossibleDuplicate] bit NOT NULL,
	CONSTRAINT [LearningObjective_V2PK] PRIMARY KEY CLUSTERED ([V2LearningObjectiveId], [V2Namespace]),
	CONSTRAINT [LearningObjective_V3PK] UNIQUE ([V3LearningObjectiveId], [V3Namespace])
)
GO

;WITH [GeneratedV3LearningObjectiveNamespaces] AS
(
SELECT
	[LearningObjectiveId] AS [V2LearningObjectiveId],
	[Namespace] AS [V2Namespace],
	CASE WHEN [migration_tempdata].[is_valid_v3_namespace_format]([Namespace]) = 1 OR [migration_tempdata].[get_org_from_v20_namespace]([Namespace]) IS NULL
		THEN [Namespace]
	ELSE
		CONCAT ('uri://', [migration_tempdata].[get_org_from_v20_namespace] ([Namespace]), '/LearningObjective')
	END AS [V3Namespace],
	[CreateDate]
FROM [edfi].[LearningObjective]
),
[UniqueLearningObjectiveNamespaceKeys] AS
(
SELECT 
	[V2LearningObjectiveId],
	[V2Namespace],
	[V3Namespace],
	ROW_NUMBER() OVER
	(
		PARTITION BY [V2LearningObjectiveId], [V3Namespace]
		ORDER BY CASE WHEN [migration_tempdata].[is_valid_v3_namespace_format]([V2Namespace]) = 1 THEN 1 ELSE 2 END,
		[CreateDate] DESC
	) AS [UniqueLearningObjectiveNamespaceOrderKey]
	FROM [GeneratedV3LearningObjectiveNamespaces]
)
INSERT [migration_tempdata].[LearningObjectiveIdentityMapping]
(
	[V2LearningObjectiveId],
	[V2Namespace],
	[V3LearningObjectiveId],
	[V3Namespace],
	[PossibleDuplicate]
)
SELECT
	[V2LearningObjectiveId],
	[V2Namespace],
	CASE 
		WHEN [UniqueLearningObjectiveNamespaceOrderKey] = 1
			THEN [V2LearningObjectiveId]
		ELSE
			[migration_tempdata].[append_to_key]([V2LearningObjectiveId], CONVERT(NVARCHAR(MAX), [UniqueLearningObjectiveNamespaceOrderKey]), 60)
		END
	AS [V3LearningObjectiveId],
	[V3Namespace],
	CASE WHEN [UniqueLearningObjectiveNamespaceOrderKey] > 1 THEN 1 ELSE 0 END AS [PossibleDuplicate]

FROM [UniqueLearningObjectiveNamespaceKeys]


DECLARE @DuplicateNamespaceCount INT;
SELECT  @DuplicateNamespaceCount = 
	COUNT(*)
	FROM [migration_tempdata].[LearningObjectiveIdentityMapping]
	WHERE [PossibleDuplicate] = 1
IF @DuplicateNamespaceCount > 0
BEGIN
	PRINT N'Warning: Found '+ CONVERT(nvarchar(10), @DuplicateNamespaceCount) + ' Learning Objective(s) that have the same [LearningObjectiveId] and V3 [Namespace] as another record.  These may or may not be duplicate records, and should be reviewed.  An integer will be appended to the [LearningObjectiveId] for you during upgrade'
END