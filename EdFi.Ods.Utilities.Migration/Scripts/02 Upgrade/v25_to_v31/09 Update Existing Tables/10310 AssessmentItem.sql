-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[AssessmentItem]'
GO

ALTER TABLE [edfi].[AssessmentItem] ADD [AssessmentItemURI] [nvarchar] (255) NULL
GO

PRINT N'Converting namespace to v3 format on [edfi].[AssessmentItem]'
GO

UPDATE [edfi].[AssessmentItem]
SET
	[AssessmentIdentifier] = m.[V3AssessmentIdentifier],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[AssessmentIdentityMapping] m
INNER JOIN [edfi].[AssessmentItem] a
	ON a.[AssessmentIdentifier] = m.[V2AssessmentIdentifier]
	AND a.[Namespace] = m.[V2Namespace]
GO

PRINT N'Converting type to descriptor on [edfi].[AssessmentItem]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'AssessmentItem',
'edfi', 'AssessmentItemCategoryDescriptor',
'edfi', 'AssessmentItemCategoryType'
GO

ALTER TABLE [edfi].[AssessmentItem]
DROP COLUMN [AssessmentItemCategoryTypeId]
GO