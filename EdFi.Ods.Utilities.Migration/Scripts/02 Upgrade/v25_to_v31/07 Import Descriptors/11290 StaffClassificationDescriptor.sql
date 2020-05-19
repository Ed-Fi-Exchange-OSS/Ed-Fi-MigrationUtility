-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping type reference from [edfi].[StaffClassificationDescriptor]'
GO

ALTER TABLE [edfi].[StaffClassificationDescriptor]
DROP COLUMN [StaffClassificationTypeId]
GO

PRINT N'Importing updated StaffClassificationDescriptor defaults'
GO

EXEC [migration_tempdata].[sp_ImportDescriptorsFromXML] 'StaffClassificationDescriptor'
GO
