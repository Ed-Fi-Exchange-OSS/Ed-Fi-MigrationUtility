-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF OBJECT_ID(N'[edfi].[AssessmentFamilyIdentificationCode]', 'U') IS NOT NULL
BEGIN
	IF EXISTS(SELECT 1 FROM [edfi].[AssessmentFamilyIdentificationCode])
	BEGIN
		PRINT N'Backing up [edfi].[AssessmentFamilyIdentificationCode]'
		SELECT * INTO [v2_to_v3_deprecated].[AssessmentFamilyIdentificationCode]
		FROM [edfi].[AssessmentFamilyIdentificationCode]
	END
	ELSE
	BEGIN
		PRINT N'Skipping backup for [edfi].[AssessmentFamilyIdentificationCode]: table is empty'
	END

	PRINT N'Removing [edfi].[AssessmentFamilyIdentificationCode]'
	DROP TABLE [edfi].[AssessmentFamilyIdentificationCode]
END
GO

