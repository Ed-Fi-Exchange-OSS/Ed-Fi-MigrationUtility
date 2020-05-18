-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[Staff]'
GO

ALTER TABLE [edfi].[Staff] ALTER COLUMN [HispanicLatinoEthnicity] [bit] NULL
GO

PRINT N'Converting types to descriptors on [edfi].[Staff]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Staff',
'edfi', 'CitizenshipStatusDescriptor',
'edfi', 'CitizenshipStatusType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Staff',
'edfi', 'SexDescriptor',
'edfi', 'SexType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Staff',
'edfi', 'OldEthnicityDescriptor',
'edfi', 'OldEthnicityType'
GO

ALTER TABLE [edfi].[Staff]
DROP COLUMN
[CitizenshipStatusTypeId],
[OldEthnicityTypeId],
[SexTypeId]
GO
