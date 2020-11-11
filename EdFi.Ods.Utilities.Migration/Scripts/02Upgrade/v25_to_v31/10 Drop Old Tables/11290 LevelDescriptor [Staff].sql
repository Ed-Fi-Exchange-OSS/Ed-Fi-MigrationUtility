-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF OBJECT_ID(N'[edfi].[LevelDescriptor]', 'U') IS NOT NULL
BEGIN
	IF EXISTS(SELECT 1 FROM [edfi].[LevelDescriptor])
	BEGIN
		PRINT N'Backing up [edfi].[LevelDescriptor]'
		SELECT * INTO [v2_to_v3_deprecated].[LevelDescriptor]
		FROM [edfi].[LevelDescriptor]
	END
	ELSE
	BEGIN
		PRINT N'Skipping backup for [edfi].[LevelDescriptor]: table is empty'
	END

	PRINT N'Removing [edfi].[LevelDescriptor]'

	DELETE d
	FROM [edfi].[Descriptor] d
	INNER JOIN [edfi].[LevelDescriptor] l
		ON d.[DescriptorId] = l.[LevelDescriptorId]
		AND d.[Namespace] LIKE '%ed-fi.org%LevelDescriptor%'
	WHERE NOT EXISTS
	(
		SELECT 1 FROM [migration_tempdata].[DescriptorTableReference] r
		WHERE r.[DescriptorId] = d.[DescriptorId]
		AND r.[DescriptorTable] != 'LevelDescriptor'
	)

	DROP TABLE [edfi].[LevelDescriptor]
END
GO
