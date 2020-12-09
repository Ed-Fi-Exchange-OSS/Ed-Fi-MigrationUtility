-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

/* ----------------------------------------------------------------------------------- 
	The below will convert namespaces from 2.x to v3 format in a few steps.

	For descriptors that have been imported:  a v3 namespace has already 
	been defined prior to migration that we can use as a fallback.

	For descriptors that are not imported:  The compatibility check (6/26/2018) 
	will ensure that the namespace contains a known organization name (ed-fi.org,
	or organization provided to the upgrade utility), but strict 2.x formatting
	is not enforced.  The rest is to be handled here.
----------------------------------------------------------------------------------- */

/* 
	First pass: Generate namespaces for descriptors that were not imported or
	otherwise set to a valid v3 state before migration began.

	Considerations:
	* For namespaces that are currently in an unknown format, We will need to know the 
	table that it is referenced from in order to begin generating a new default, 
	since the new namespace format is as follows: uri://[org]/DescriptorName
	* It is possible under the v2 and v3 schemas that the same [DescriptorId]
	could be categorized under more than one Descriptor, creating multiple namespace
	options.
*/ 
DECLARE @userNamespacePrefix NVARCHAR(max) = '$DescriptorNamespacePrefix$' + '/'
DECLARE @userNamespaceWithoutURI NVARCHAR(max)
SELECT @userNamespaceWithoutURI = REPLACE(@userNamespacePrefix,'uri://','')

	;WITH [AllTableReferences] AS
	(
		SELECT [DescriptorId], [DescriptorTable]
		FROM [migration_tempdata].[DescriptorMetadata]

		UNION

		SELECT [DescriptorId], [DescriptorTable]
		FROM [migration_tempdata].[DescriptorTableReference]
	),
	[AllTableReferencesByPriority] AS
	(
		SELECT
			d.[DescriptorId],
			r.[DescriptorTable],
			ROW_NUMBER() OVER 
			(
				/*
				For descriptors where a new v3 namespace is to be generated:
				This will be used to select a namespace when multiple valid options
				are available.
				*/
				PARTITION BY d.[DescriptorId]
				ORDER BY
				CASE
					WHEN (d.[Namespace] LIKE ('%' + r.[DescriptorTable] + '%'))
					THEN 1
					ELSE 2 
				END
				,CASE
					WHEN EXISTS
					(
						SELECT 1
						FROM [migration_tempdata].[DescriptorMetadata] m
						WHERE r.[DescriptorTable] = m.[DescriptorTable]
					)
					THEN 1
					ELSE 2
				END
				,d.[DescriptorId]
			) AS [NamespacePriority]
		FROM [edfi].[Descriptor] d
		INNER JOIN [AllTableReferences] r
		ON d.[DescriptorId] = r.[DescriptorId]
	)
	UPDATE [edfi].[Descriptor]
	SET [Namespace] =
	CASE
		WHEN (d.[Namespace] LIKE '%ed-fi%')
			THEN ('uri://ed-fi.org/' + a.[DescriptorTable])
		ELSE
			(@userNamespacePrefix + a.[DescriptorTable])
	END
	FROM [edfi].[Descriptor] d
	INNER JOIN [AllTableReferencesByPriority] a
		ON d.[DescriptorId] = a.[DescriptorId]
	--Selects a namespace when multiple options are available based on the CTE above
		AND a.[NamespacePriority] = 1
	--Assume that all values set to a valid v3 namespace prefix prior to migration are currently correct
	WHERE [migration_tempdata].[is_valid_v3_namespace_format](d.[Namespace]) = 0 
	--Assume that all values that were imported from XML are currently correct
	AND NOT EXISTS 
	(
		SELECT 1 FROM [migration_tempdata].[DescriptorMetadata] m
		WHERE m.[DescriptorId] = d.[DescriptorId]
		AND m.[Namespace_Imported_V3] IS NOT NULL
	)
GO

IF EXISTS
(
	SELECT 1 FROM [edfi].[Descriptor]
	WHERE [migration_tempdata].[is_valid_v3_namespace_format]([Namespace]) = 0 
)
BEGIN
	PRINT N'Warning:  One or more descriptor namespaces could not be converted to the new v3 format.'
END

/*
Next Pass: Handle Uniqeness Requirements.

The Descriptor table has a unique constraint over ([CodeValue], [Namespace]).
It is possible that there may now be duplicates after converting namespace to the new default format.
An Example case:  Two descriptors with the same [CodeValue] were created with
 http://ed-fi.org% and https://www.edfi.org% namespaces.

It is not safe to assume that these duplicates can be dropped, since the associated [DescriptorId]
differs and may be referenced by other tables/extensions.  
 
In this case, we will add an indicator to the duplicate [CodeValue], and generate a log warning.
*/

IF EXISTS
(
	SELECT [CodeValue], [Namespace]
	FROM [edfi].[Descriptor]
	GROUP BY [CodeValue], [Namespace]
	HAVING COUNT([CodeValue]) > 1
)
BEGIN
	PRINT N'Warning: Found one or more records in [edfi].[Descriptor] where the same [CodeValue] is associated with the same organization more than once.  An integer will be appended to the duplicate [CodeValue] to meet uniqueness requirements'
END

;WITH [Unique_Descriptor_CodeValue_Namespace] AS
(
	SELECT
		d.[DescriptorId],
		d.[CodeValue],
		d.[Namespace],
		ROW_NUMBER() OVER
		(
			PARTITION BY
				d.[CodeValue],
				d.[Namespace]
			ORDER BY
				/* Used when selecting which descriptors to tag as a duplicate.
				Simplified sorting criteria:
					1) Valid v3 namespaces
					2) Namespaces imported from XML
					3) Namespaces matching the default namespace prefix
				*/
				CASE WHEN ([migration_tempdata].[is_valid_v3_namespace_format](d.[Namespace]) = 1) THEN 1 ELSE 2 END,
				CASE WHEN
					(
						EXISTS 
						(
							SELECT 1 FROM [migration_tempdata].[DescriptorMetadata] m
							WHERE m.[DescriptorId] = d.[DescriptorId]
							AND m.[Namespace_Imported_V3] = d.[Namespace]
						)
					)
					THEN 1
					ELSE 2
				END,
				CASE WHEN (d.[Namespace] LIKE ('$DescriptorNamespacePrefix$' + '%')) THEN 1 ELSE 2 END,
				d.[DescriptorId]
		) AS [OrderKey]
	FROM [edfi].[Descriptor] d
)

UPDATE [edfi].[Descriptor]
SET [CodeValue] = 
	CASE 
		WHEN u.[OrderKey] = 1
			THEN d.[CodeValue]
		ELSE
			[migration_tempdata].[append_to_key](d.[CodeValue], CONVERT(NVARCHAR(MAX), u.[OrderKey]), 50)
	END
FROM [edfi].[Descriptor] d
INNER JOIN [Unique_Descriptor_CodeValue_Namespace] u
	ON d.[DescriptorId] = u.[DescriptorId]

--log warning messages for descriptors with an ed-fi namespace that were not imported
DECLARE @CodeValue NVARCHAR(max)
DECLARE @Namespace NVARCHAR(max)
DECLARE FORWARD_CURSOR CURSOR LOCAL FAST_FORWARD FOR 
	SELECT DISTINCT d.[CodeValue], d.[Namespace]
	FROM [edfi].[Descriptor] d
	LEFT JOIN [migration_tempdata].[DescriptorMetadata] m
		ON d.[DescriptorId] = m.[DescriptorId]
	WHERE d.[Namespace] LIKE 'uri://ed-fi.org/%Descriptor'
	AND (m.[DescriptorId] IS NULL OR m.[CodeValue_Imported_V3] = 0)

OPEN FORWARD_CURSOR 
FETCH NEXT FROM FORWARD_CURSOR INTO @CodeValue, @Namespace
WHILE (@@FETCH_STATUS = 0)
BEGIN
	PRINT N'Warning: Descriptor value ''' + @CodeValue + ''' was migrated in the '''+ @Namespace +''' namespace, but ''' + @CodeValue + ''' is not part of the Ed-Fi standard and should be moved to a new namespace (most likely namespace ''$DescriptorNamespacePrefix$'').'
	FETCH NEXT FROM FORWARD_CURSOR INTO @CodeValue, @Namespace
END
CLOSE FORWARD_CURSOR
DEALLOCATE FORWARD_CURSOR
GO
