-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF OBJECT_ID(N'[edfi].[SchoolFoodServicesEligibilityDescriptor]', 'U') IS NOT NULL
BEGIN
	IF EXISTS(SELECT 1 FROM [edfi].[SchoolFoodServicesEligibilityDescriptor])
	BEGIN
		PRINT N'Backing up [edfi].[SchoolFoodServicesEligibilityDescriptor]'
		SELECT * INTO [v2_to_v3_deprecated].[SchoolFoodServicesEligibilityDescriptor]
		FROM [edfi].[SchoolFoodServicesEligibilityDescriptor]
	END
	ELSE
	BEGIN
		PRINT N'Skipping backup for [edfi].[SchoolFoodServicesEligibilityDescriptor]: table is empty'
	END

	PRINT N'Removing [edfi].[SchoolFoodServicesEligibilityDescriptor]'

	DELETE d
	FROM [edfi].[Descriptor] d
	INNER JOIN [edfi].[SchoolFoodServicesEligibilityDescriptor] s
		ON d.[DescriptorId] = s.[SchoolFoodServicesEligibilityDescriptorId]
		AND d.[Namespace] LIKE '%ed-fi.org%SchoolFoodServicesEligibilityDescriptor%'
	WHERE NOT EXISTS
	(
		SELECT 1 FROM [migration_tempdata].[DescriptorTableReference] r
		WHERE r.[DescriptorId] = d.[DescriptorId]
		AND r.[DescriptorTable] != 'SchoolFoodServicesEligibilityDescriptor'
	)

	DROP TABLE [edfi].[SchoolFoodServicesEligibilityDescriptor]
END
GO
