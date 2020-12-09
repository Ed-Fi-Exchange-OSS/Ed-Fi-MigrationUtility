-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding DoNotPublishIndicator to [edfi].[ParentElectronicMail]'
GO

ALTER TABLE [edfi].[ParentElectronicMail] ADD
[DoNotPublishIndicator] [bit] NULL
GO

PRINT N'Converting type to descriptor on [edfi].[ParentElectronicMail]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'ParentElectronicMail',
'edfi', 'ElectronicMailTypeDescriptor',
'edfi', 'ElectronicMailType'
GO

ALTER TABLE [edfi].[ParentElectronicMail]
ALTER COLUMN [ElectronicMailTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[ParentElectronicMail]
DROP COLUMN [ElectronicMailTypeId]
GO

