-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Removing [edfi].[StudentAddress] (Data has been moved to [edfi].[StudentEducationOrganizationAssociationAddress])'
GO

IF OBJECT_ID(N'[edfi].[StudentAddress]', 'U') IS NOT NULL
BEGIN
	DROP TABLE [edfi].[StudentAddress]
END
GO
