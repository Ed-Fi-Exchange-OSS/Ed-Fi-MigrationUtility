-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF OBJECT_ID(N'[edfi].[SchoolCategoryType]', 'U') IS NOT NULL
BEGIN
	PRINT N'Removing [edfi].[SchoolCategoryType]'
	DROP TABLE [edfi].[SchoolCategoryType]
END
GO

