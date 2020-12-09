-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF OBJECT_ID(N'[edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction]', 'U') IS NOT NULL
BEGIN
	IF EXISTS(SELECT 1 FROM [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction])
	BEGIN
		PRINT N'Backing up [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction]'
		SELECT * INTO [v2_to_v3_deprecated].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction]
		FROM [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction]
	END
	ELSE
	BEGIN
		PRINT N'Skipping backup for [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction] table is empty'
	END

	PRINT N'Removing [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction]'
	DROP TABLE [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction]
END
GO
