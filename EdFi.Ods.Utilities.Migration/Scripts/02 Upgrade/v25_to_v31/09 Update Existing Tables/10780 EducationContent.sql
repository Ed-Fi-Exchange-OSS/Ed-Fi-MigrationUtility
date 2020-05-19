-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting type to descriptor on [edfi].[EducationContent]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'EducationContent',
'edfi', 'ContentClassDescriptor',
'edfi', 'ContentClassType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'EducationContent',
'edfi', 'CostRateDescriptor',
'edfi', 'CostRateType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'EducationContent',
'edfi', 'InteractivityStyleDescriptor',
'edfi', 'InteractivityStyleType'
GO

ALTER TABLE [edfi].[EducationContent]
DROP COLUMN
[ContentClassTypeId],
[CostRateTypeId],
[InteractivityStyleTypeId]
GO


