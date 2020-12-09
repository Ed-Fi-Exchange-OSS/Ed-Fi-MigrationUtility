-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[StaffEducationOrganizationEmploymentAssociation]'
GO

ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation] ADD
[CredentialIdentifier] [nvarchar] (60) NULL
GO

ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation]
ADD [StateOfIssueStateAbbreviationDescriptorId] [int] NULL
GO

PRINT N'Converting type to descriptor on [edfi].[StaffEducationOrganizationEmploymentAssociation]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StaffEducationOrganizationEmploymentAssociation',
'edfi', 'SeparationDescriptor',
'edfi', 'SeparationType'
GO

ALTER TABLE [edfi].[StaffEducationOrganizationEmploymentAssociation]
DROP COLUMN [SeparationTypeId]
GO
