-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping [edfi].[StudentEducationOrganizationAssociationInternationalAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationInternationalAddress] DROP CONSTRAINT [StudentEducationOrganizationAssociationInternationalAddress_DF_CreateDate];


GO
PRINT N'Altering [edfi].[StudentEducationOrganizationAssociationInternationalAddress]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationInternationalAddress] ALTER COLUMN [CreateDate] DATETIME2 (7) NOT NULL;


GO
PRINT N'Creating [edfi].[StudentEducationOrganizationAssociationInternationalAddress_DF_CreateDate]...';


GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationInternationalAddress]
    ADD CONSTRAINT [StudentEducationOrganizationAssociationInternationalAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
