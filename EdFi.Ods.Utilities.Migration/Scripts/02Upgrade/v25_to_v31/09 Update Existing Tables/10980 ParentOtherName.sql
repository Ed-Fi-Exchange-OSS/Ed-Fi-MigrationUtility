-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting type to descriptor on [edfi].[ParentOtherName]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'ParentOtherName',
'edfi', 'OtherNameTypeDescriptor',
'edfi', 'OtherNameType'
GO

ALTER TABLE [edfi].[ParentOtherName]
ALTER COLUMN [OtherNameTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[ParentOtherName]
DROP COLUMN [OtherNameTypeId]
GO


