-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding DoNotPublishIndicator to [edfi].[StaffElectronicMail]'
GO

ALTER TABLE [edfi].[StaffElectronicMail] ADD
[DoNotPublishIndicator] [bit] NULL
GO

PRINT N'Converting type to descriptor on [edfi].[StaffElectronicMail]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StaffElectronicMail',
'edfi', 'ElectronicMailTypeDescriptor',
'edfi', 'ElectronicMailType'
GO

ALTER TABLE [edfi].[StaffElectronicMail]
ALTER COLUMN [ElectronicMailTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StaffElectronicMail]
DROP COLUMN [ElectronicMailTypeId]
GO
