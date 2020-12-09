-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding DoNotPublishIndicator to [edfi].[StaffTelephone]'
GO

ALTER TABLE [edfi].[StaffTelephone] ADD
[DoNotPublishIndicator] [bit] NULL
GO

PRINT N'Converting type to descriptor on [edfi].[StaffTelephone]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StaffTelephone',
'edfi', 'TelephoneNumberTypeDescriptor',
'edfi', 'TelephoneNumberType'
GO

ALTER TABLE [edfi].[StaffTelephone]
ALTER COLUMN [TelephoneNumberTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StaffTelephone]
DROP COLUMN [TelephoneNumberTypeId]
GO

