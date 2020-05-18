-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding DoNotPublishIndicator to [edfi].[EducationOrganizationAddress]'
GO

ALTER TABLE [edfi].[EducationOrganizationAddress] ADD
[DoNotPublishIndicator] [bit] NULL
GO

PRINT N'Converting type to descriptor on [edfi].[EducationOrganizationAddress]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'EducationOrganizationAddress',
'edfi', 'AddressTypeDescriptor',
'edfi', 'AddressType'
GO

ALTER TABLE [edfi].[EducationOrganizationAddress]
ALTER COLUMN [AddressTypeDescriptorId] [int] NOT NULL
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'EducationOrganizationAddress',
'edfi', 'StateAbbreviationDescriptor',
'edfi', 'StateAbbreviationType'
GO

ALTER TABLE [edfi].[EducationOrganizationAddress]
ALTER COLUMN [StateAbbreviationDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[EducationOrganizationAddress]
DROP COLUMN
[AddressTypeId],
[StateAbbreviationTypeId],
[BeginDate],
[EndDate]
GO
