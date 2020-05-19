-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[StudentAssessment]'
GO

ALTER TABLE [edfi].[StudentAssessment] ADD [SchoolYear] [smallint] NULL
GO

PRINT N'Converting namespace to v3 format on [edfi].[StudentAssessment]'
GO

UPDATE [edfi].[StudentAssessment]
SET
	[AssessmentIdentifier] = m.[V3AssessmentIdentifier],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[AssessmentIdentityMapping] m
INNER JOIN [edfi].[StudentAssessment] a
	ON a.[AssessmentIdentifier] = m.[V2AssessmentIdentifier]
	AND a.[Namespace] = m.[V2Namespace]
GO

PRINT N'Converting types to descriptors on [edfi].[StudentAssessment]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentAssessment',
'edfi', 'AdministrationEnvironmentDescriptor',
'edfi', 'AdministrationEnvironmentType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentAssessment',
'edfi', 'RetestIndicatorDescriptor',
'edfi', 'RetestIndicatorType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentAssessment',
'edfi', 'ReasonNotTestedDescriptor',
'edfi', 'ReasonNotTestedType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentAssessment',
'edfi', 'EventCircumstanceDescriptor',
'edfi', 'EventCircumstanceType'
GO

ALTER TABLE [edfi].[StudentAssessment]
DROP COLUMN
[AdministrationEnvironmentTypeId],
[EventCircumstanceTypeId],
[ReasonNotTestedTypeId],
[RetestIndicatorTypeId]
GO

