-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping type reference from [edfi].[ReasonExitedDescriptor]'
GO

ALTER TABLE [edfi].[ReasonExitedDescriptor]
DROP COLUMN [ReasonExitedTypeId]
GO

PRINT N'Importing updated ReasonExitedDescriptor defaults'
GO

EXEC [migration_tempdata].[sp_ImportDescriptorsFromXML] 'ReasonExitedDescriptor'
GO
