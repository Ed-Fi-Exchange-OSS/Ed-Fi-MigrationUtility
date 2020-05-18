-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding DoNotPublishIndicator to [edfi].[ParentAddress]'
GO

ALTER TABLE [edfi].[ParentAddress] ADD
[DoNotPublishIndicator] [bit] NULL
GO

PRINT N'Converting types to descriptors on [edfi].[ParentAddress]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'ParentAddress',
'edfi', 'AddressTypeDescriptor',
'edfi', 'AddressType'
GO

ALTER TABLE [edfi].[ParentAddress]
ALTER COLUMN [AddressTypeDescriptorId] [int] NOT NULL
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'ParentAddress',
'edfi', 'StateAbbreviationDescriptor',
'edfi', 'StateAbbreviationType'
GO

ALTER TABLE [edfi].[ParentAddress]
ALTER COLUMN [StateAbbreviationDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[ParentAddress]
DROP COLUMN
[AddressTypeId],
[StateAbbreviationTypeId],
[BeginDate],
[EndDate]
GO

ALTER TABLE [edfi].[ParentAddress] ADD
[CongressionalDistrict] [nvarchar] (30),
[LocaleDescriptorId] [int] NULL
GO
