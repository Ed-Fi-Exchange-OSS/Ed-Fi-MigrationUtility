-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StaffAddressPeriod]'
GO

CREATE TABLE [edfi].[StaffAddressPeriod]
(
[AddressTypeId] [int] NOT NULL,
[BeginDate] [date] NOT NULL,
[StaffUSI] [int] NOT NULL,
[EndDate] [date] NULL,
[CreateDate] [datetime] NOT NULL 
)
GO
INSERT [edfi].[StaffAddressPeriod]
(
[AddressTypeId],
[BeginDate],
[StaffUSI],
[EndDate],
[CreateDate]
)
SELECT
[AddressTypeId],
[BeginDate],
[StaffUSI],
[EndDate],
GETDATE()
FROM [edfi].[StaffAddress]
WHERE [BeginDate] IS NOT NULL

PRINT N'Converting type to descriptor on [edfi].[StaffAddressPeriod]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StaffAddressPeriod',
'edfi', 'AddressTypeDescriptor',
'edfi', 'AddressType'
GO

ALTER TABLE [edfi].[StaffAddressPeriod]
ALTER COLUMN [AddressTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StaffAddressPeriod]
DROP COLUMN [AddressTypeId]
GO
