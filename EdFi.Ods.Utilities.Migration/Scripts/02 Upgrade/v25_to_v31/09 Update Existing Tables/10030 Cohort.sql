-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting types to descriptors on [edfi].[Cohort]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Cohort',
'edfi', 'CohortScopeDescriptor',
'edfi', 'CohortScopeType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Cohort',
'edfi', 'CohortTypeDescriptor',
'edfi', 'CohortType'
GO

ALTER TABLE [edfi].[Cohort]
ALTER COLUMN [CohortTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[Cohort]
DROP COLUMN
[CohortScopeTypeId],
[CohortTypeId]
GO

