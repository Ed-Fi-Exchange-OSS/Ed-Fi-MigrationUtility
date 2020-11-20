-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[EducationOrganizationAddressPeriod]'
GO

CREATE TABLE [edfi].[EducationOrganizationAddressPeriod]
(
[AddressTypeId] [int] NOT NULL,
[BeginDate] [date] NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[EndDate] [date] NULL,
[CreateDate] [datetime] NOT NULL 
)
GO

INSERT [edfi].[EducationOrganizationAddressPeriod]
(
[AddressTypeId],
[BeginDate],
[EducationOrganizationId],
[EndDate],
[CreateDate]
)
SELECT
[AddressTypeId],
[BeginDate],
[EducationOrganizationId],
[EndDate],
GETDATE()
FROM [edfi].[EducationOrganizationAddress] e
WHERE [BeginDate] IS NOT NULL
GO

PRINT N'Converting type to descriptor on [edfi].[EducationOrganizationAddressPeriod]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'EducationOrganizationAddressPeriod',
'edfi', 'AddressTypeDescriptor',
'edfi', 'AddressType'
GO

ALTER TABLE [edfi].[EducationOrganizationAddressPeriod]
ALTER COLUMN [AddressTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[EducationOrganizationAddressPeriod]
DROP COLUMN [AddressTypeId]
GO
