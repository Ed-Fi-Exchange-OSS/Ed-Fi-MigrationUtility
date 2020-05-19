-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Generating v3 Assessment namespaces'
GO

IF OBJECT_ID('migration_tempdata.AssessmentIdentityMapping', 'U') IS NOT NULL 
DROP TABLE [migration_tempdata].[AssessmentIdentityMapping]
GO

CREATE TABLE [migration_tempdata].[AssessmentIdentityMapping]
(
	[V2AssessmentIdentifier] [nvarchar] (60) NOT NULL,
	[V2Namespace] [nvarchar] (255) NOT NULL,
	[V3AssessmentIdentifier] [nvarchar] (60) NOT NULL,
	[V3Namespace] [nvarchar] (255) NOT NULL,
	[PossibleDuplicate] bit NOT NULL,
	CONSTRAINT [Assessment_V2PK] PRIMARY KEY CLUSTERED ([V2AssessmentIdentifier], [V2Namespace]),
	CONSTRAINT [Assessment_V3PK] UNIQUE ([V3AssessmentIdentifier], [V3Namespace])
)
GO

;WITH [GeneratedV3AssessmentNamespaces] AS
(
SELECT
	[AssessmentIdentifier] AS [V2AssessmentIdentifier],
	[Namespace] AS [V2Namespace],
	CASE WHEN [migration_tempdata].[is_valid_v3_namespace_format]([Namespace]) = 1 OR [migration_tempdata].[get_org_from_v20_namespace]([Namespace]) IS NULL
		THEN [Namespace]
	ELSE
		CONCAT ('uri://', [migration_tempdata].[get_org_from_v20_namespace] ([Namespace]), '/Assessment')
	END AS [V3Namespace],
	[CreateDate]
FROM [edfi].[Assessment]
),
[UniqueAssessmentNamespaceKeys] AS
(
SELECT 
	[V2AssessmentIdentifier],
	[V2Namespace],
	[V3Namespace],
	ROW_NUMBER() OVER
	(
		PARTITION BY [V2AssessmentIdentifier], [V3Namespace]
		ORDER BY CASE WHEN [migration_tempdata].[is_valid_v3_namespace_format]([V2Namespace]) = 1 THEN 1 ELSE 2 END,
		[CreateDate] DESC
	) AS [UniqueAssessmentNamespaceOrderKey]
	FROM [GeneratedV3AssessmentNamespaces]
)
INSERT [migration_tempdata].[AssessmentIdentityMapping]
(
	[V2AssessmentIdentifier],
	[V2Namespace],
	[V3AssessmentIdentifier],
	[V3Namespace],
	[PossibleDuplicate]
)
SELECT
	[V2AssessmentIdentifier],
	[V2Namespace],
	CASE 
		WHEN [UniqueAssessmentNamespaceOrderKey] = 1
			THEN [V2AssessmentIdentifier]
		ELSE
			[migration_tempdata].[append_to_key]([V2AssessmentIdentifier], CONVERT(NVARCHAR(MAX), [UniqueAssessmentNamespaceOrderKey]), 60)
		END
	AS [V2AssessmentIdentifier],
	[V3Namespace],
	CASE WHEN [UniqueAssessmentNamespaceOrderKey] > 1 THEN 1 ELSE 0 END AS [PossibleDuplicate]
FROM [UniqueAssessmentNamespaceKeys]


DECLARE @DuplicateNamespaceCount INT;
SELECT  @DuplicateNamespaceCount = 
	COUNT(*)
	FROM [migration_tempdata].[AssessmentIdentityMapping]
	WHERE [PossibleDuplicate] = 1
IF @DuplicateNamespaceCount > 0
BEGIN
	PRINT N'Warning: Found '+ CONVERT(nvarchar(10), @DuplicateNamespaceCount) + ' Assessment(s) that have the same [AssessmentIdentifier] and V3 [Namespace] as another record.  These may or may not be duplicate records, and should be reviewed.  An integer will be appended to the [AssessmentIdentifier] for you during upgrade'
END