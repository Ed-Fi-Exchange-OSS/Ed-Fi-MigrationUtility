-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[CourseTranscriptEarnedAdditionalCredits]'
GO

ALTER TABLE [edfi].[CourseTranscriptEarnedAdditionalCredits]
ALTER COLUMN [Credits] [decimal] (9, 3) NOT NULL
GO

PRINT N'Converting type to descriptor on [edfi].[CourseTranscriptEarnedAdditionalCredits]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'CourseTranscriptEarnedAdditionalCredits',
'edfi', 'AdditionalCreditTypeDescriptor',
'edfi', 'AdditionalCreditType'
GO

ALTER TABLE [edfi].[CourseTranscriptEarnedAdditionalCredits]
ALTER COLUMN [AdditionalCreditTypeDescriptorId] [int] NOT NULL
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'CourseTranscriptEarnedAdditionalCredits',
'edfi', 'CourseAttemptResultDescriptor',
'edfi', 'CourseAttemptResultType'
GO

ALTER TABLE [edfi].[CourseTranscriptEarnedAdditionalCredits]
ALTER COLUMN [CourseAttemptResultDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[CourseTranscriptEarnedAdditionalCredits]
DROP COLUMN
[AdditionalCreditTypeId],
[CourseAttemptResultTypeId]
GO


