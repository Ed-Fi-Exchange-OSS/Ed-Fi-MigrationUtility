-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.


PRINT N'Preparing to convert namespace to v3 format on [edfi].[StudentAssessmentItem].  This can take a long time on larger sets of data'
GO

/*
	Developer note:

	For some users with a large number of students, the  V2.0 StudentAssessmentItem table 
	(prior to the v25 model update) can contain a disproportionately large number of records
	compared to other tables. Updating the new StudentAssessmentItem primary
	key in the absence of indexes has the potential to cause a timeout on some configurations.
	The temporary index below is created for the upgrade operation only and then dropped.  The purpose
	is to split the execution time up into multiple operations in order to prevent a timeout.
*/

CREATE NONCLUSTERED INDEX [IX_StudentAssessmentItem_Migration_Temporary_11160]
    ON [edfi].[StudentAssessmentItem]  ([AssessmentIdentifier], [Namespace]) 
GO 

PRINT N'Converting namespace to v3 format on [edfi].[StudentAssessmentItem].  This can take a long time on larger sets of data'
GO

UPDATE [edfi].[StudentAssessmentItem]
SET
	[AssessmentIdentifier] = m.[V3AssessmentIdentifier],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[AssessmentIdentityMapping] m
INNER JOIN [edfi].[StudentAssessmentItem] a
	ON a.[AssessmentIdentifier] = m.[V2AssessmentIdentifier]
	AND a.[Namespace] = m.[V2Namespace]
GO

DROP INDEX [IX_StudentAssessmentItem_Migration_Temporary_11160]
	ON [edfi].[StudentAssessmentItem]
GO 

PRINT N'Converting type to descriptor on [edfi].[StudentAssessmentItem]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentAssessmentItem',
'edfi', 'AssessmentItemResultDescriptor',
'edfi', 'AssessmentItemResultType'
GO

ALTER TABLE [edfi].[StudentAssessmentItem]
ALTER COLUMN [AssessmentItemResultDescriptorId] [int] NOT NULL
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentAssessmentItem',
'edfi', 'ResponseIndicatorDescriptor',
'edfi', 'ResponseIndicatorType'
GO

ALTER TABLE [edfi].[StudentAssessmentItem]
DROP COLUMN
[AssessmentItemResultTypeId],
[ResponseIndicatorTypeId]
GO


