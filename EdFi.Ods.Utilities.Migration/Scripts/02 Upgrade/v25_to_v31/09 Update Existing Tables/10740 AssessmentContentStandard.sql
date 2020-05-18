-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting namespace to v3 format on [edfi].[AssessmentContentStandard]'
GO

UPDATE [edfi].[AssessmentContentStandard]
SET
	[AssessmentIdentifier] = m.[V3AssessmentIdentifier],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[AssessmentIdentityMapping] m
INNER JOIN [edfi].[AssessmentContentStandard] a
	ON a.[AssessmentIdentifier] = m.[V2AssessmentIdentifier]
	AND a.[Namespace] = m.[V2Namespace]
GO

PRINT N'Converting type to descriptor on [edfi].[AssessmentContentStandard]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'AssessmentContentStandard',
'edfi', 'PublicationStatusDescriptor',
'edfi', 'PublicationStatusType'
GO

ALTER TABLE [edfi].[AssessmentContentStandard]
DROP COLUMN [PublicationStatusTypeId]
GO