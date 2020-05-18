-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF OBJECT_ID(N'[edfi].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode]', 'U') IS NOT NULL
BEGIN
	IF EXISTS(SELECT 1 FROM [edfi].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode])
	BEGIN
		PRINT N'Backing up [edfi].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode]'
		SELECT * INTO [v2_to_v3_deprecated].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode]
		FROM [edfi].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode]
	END
	ELSE
	BEGIN
		PRINT N'Skipping backup for [edfi].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode] table is empty'
	END

	PRINT N'Removing [edfi].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode]'
	DROP TABLE [edfi].[PostSecondaryEventPostSecondaryInstitutionIdentificationCode]
END
GO
