-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting namespace to v3 format on [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]'
GO

UPDATE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]
SET
	[AssessmentIdentifier] = m.[V3AssessmentIdentifier],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[AssessmentIdentityMapping] m
INNER JOIN [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel] a
	ON a.[AssessmentIdentifier] = m.[V2AssessmentIdentifier]
	AND a.[Namespace] = m.[V2Namespace]
GO

PRINT N'Converting types to descriptors on [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel',
'edfi', 'AssessmentReportingMethodDescriptor',
'edfi', 'AssessmentReportingMethodType'
GO

ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]
ALTER COLUMN [AssessmentReportingMethodDescriptorId] INT NOT NULL
GO

ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]
DROP COLUMN [AssessmentReportingMethodTypeId]
GO

