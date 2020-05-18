-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[StudentSchoolAssociation]'
GO

ALTER TABLE [edfi].[StudentSchoolAssociation]
ADD 
	[CalendarCode] [nvarchar] (60) NULL
GO

PRINT N'Converting type to descriptor on [edfi].[StudentSchoolAssociation]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentSchoolAssociation',
'edfi', 'EntryGradeLevelReasonDescriptor',
'edfi', 'EntryGradeLevelReasonType'
GO

ALTER TABLE [edfi].[StudentSchoolAssociation]
DROP COLUMN [EntryGradeLevelReasonTypeId]
GO

