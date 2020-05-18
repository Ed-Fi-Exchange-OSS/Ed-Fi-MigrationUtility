-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF OBJECT_ID(N'[edfi].[AccountCodeDescriptor]', 'U') IS NOT NULL
BEGIN
	IF EXISTS(SELECT 1 FROM [edfi].[AccountCodeDescriptor])
	BEGIN
		PRINT N'Backing up [edfi].[AccountCodeDescriptor]'
		SELECT * INTO [v2_to_v3_deprecated].[AccountCodeDescriptor]
		FROM [edfi].[AccountCodeDescriptor]
	END
	ELSE
	BEGIN
		PRINT N'Skipping backup for [edfi].[AccountCodeDescriptor]: table is empty'
	END

	PRINT N'Removing [edfi].[AccountCodeDescriptor]'

	DELETE d
	FROM [edfi].[Descriptor] d
	INNER JOIN [edfi].[AccountCodeDescriptor] a
		ON d.[DescriptorId] = a.[AccountCodeDescriptorId]
		AND d.[Namespace] LIKE '%ed-fi.org%AccountCodeDescriptor%'
	WHERE NOT EXISTS
	(
		SELECT 1 FROM [migration_tempdata].[DescriptorTableReference] r
		WHERE r.[DescriptorId] = d.[DescriptorId]
		AND r.[DescriptorTable] != 'AccountCodeDescriptor'
	)

	DROP TABLE [edfi].[AccountCodeDescriptor]
END
GO
