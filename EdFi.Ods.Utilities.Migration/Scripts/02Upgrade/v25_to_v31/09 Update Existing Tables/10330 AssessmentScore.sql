-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting namespace to v3 format on [edfi].[AssessmentScore]'
GO

UPDATE [edfi].[AssessmentScore]
SET
	[AssessmentIdentifier] = m.[V3AssessmentIdentifier],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[AssessmentIdentityMapping] m
INNER JOIN [edfi].[AssessmentScore] a
	ON a.[AssessmentIdentifier] = m.[V2AssessmentIdentifier]
	AND a.[Namespace] = m.[V2Namespace]
GO

PRINT N'Converting types to descriptors on [edfi].[AssessmentScore]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'AssessmentScore',
'edfi', 'ResultDatatypeTypeDescriptor',
'edfi', 'ResultDatatypeType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'AssessmentScore',
'edfi', 'AssessmentReportingMethodDescriptor',
'edfi', 'AssessmentReportingMethodType'
GO

ALTER TABLE [edfi].[AssessmentScore]
ALTER COLUMN [AssessmentReportingMethodDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[AssessmentScore]
DROP COLUMN
[AssessmentReportingMethodTypeId]
,[ResultDatatypeTypeId]
GO
