-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[ParentAddressPeriod]'
GO

CREATE TABLE [edfi].[ParentAddressPeriod]
(
[AddressTypeId] [int] NOT NULL,
[BeginDate] [date] NOT NULL,
[ParentUSI] [int] NOT NULL,
[EndDate] [date] NULL,
[CreateDate] [datetime] NOT NULL 
)
GO

INSERT [edfi].[ParentAddressPeriod]
(
[AddressTypeId],
[BeginDate],
[ParentUSI],
[EndDate],
[CreateDate]
)
SELECT
[AddressTypeId],
[BeginDate],
[ParentUSI],
[EndDate],
GETDATE()
FROM [edfi].[ParentAddress] p
WHERE [BeginDate] IS NOT NULL

PRINT N'Converting type to descriptor on [edfi].[ParentAddressPeriod]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'ParentAddressPeriod',
'edfi', 'AddressTypeDescriptor',
'edfi', 'AddressType'
GO


ALTER TABLE [edfi].[ParentAddressPeriod]
ALTER COLUMN [AddressTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[ParentAddressPeriod]
DROP COLUMN [AddressTypeId]
GO
