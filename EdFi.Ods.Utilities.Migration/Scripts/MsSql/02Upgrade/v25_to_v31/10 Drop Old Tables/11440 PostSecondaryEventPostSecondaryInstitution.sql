-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF OBJECT_ID(N'[edfi].[PostSecondaryEventPostSecondaryInstitution]', 'U') IS NOT NULL
BEGIN
	IF EXISTS(SELECT 1 FROM [edfi].[PostSecondaryEventPostSecondaryInstitution])
	BEGIN
		PRINT N'Backing up [edfi].[PostSecondaryEventPostSecondaryInstitution]'
		SELECT * INTO [v2_to_v3_deprecated].[PostSecondaryEventPostSecondaryInstitution]
		FROM [edfi].[PostSecondaryEventPostSecondaryInstitution]
	END
	ELSE
	BEGIN
		PRINT N'Skipping backup for [edfi].[PostSecondaryEventPostSecondaryInstitution] table is empty'
	END

	PRINT N'Removing [edfi].[PostSecondaryEventPostSecondaryInstitution]'
	DROP TABLE [edfi].[PostSecondaryEventPostSecondaryInstitution]
END
GO
