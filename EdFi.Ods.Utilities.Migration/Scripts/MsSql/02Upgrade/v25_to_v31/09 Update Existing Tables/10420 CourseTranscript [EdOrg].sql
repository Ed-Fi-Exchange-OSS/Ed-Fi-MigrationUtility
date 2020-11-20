-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[CourseTranscript]'
GO

ALTER TABLE [edfi].[CourseTranscript]
ALTER COLUMN [AttemptedCredits] [decimal] (9, 3) NULL
GO

ALTER TABLE [edfi].[CourseTranscript]
ALTER COLUMN [EarnedCredits] [decimal] (9, 3) NOT NULL
GO

ALTER TABLE [edfi].[CourseTranscript] ADD [ExternalEducationOrganizationId] [int] NULL
GO

ALTER TABLE [edfi].[CourseTranscript] DROP
COLUMN [SchoolId]
GO

PRINT N'Converting types to descriptors on [edfi].[CourseTranscript]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'CourseTranscript',
'edfi', 'CreditTypeDescriptor',
'edfi', 'CreditType',
'AttemptedCreditTypeId', 'AttemptedCreditTypeDescriptorId'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'CourseTranscript',
'edfi', 'MethodCreditEarnedDescriptor',
'edfi', 'MethodCreditEarnedType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'CourseTranscript',
'edfi', 'CreditTypeDescriptor',
'edfi', 'CreditType',
'EarnedCreditTypeId', 'EarnedCreditTypeDescriptorId'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'CourseTranscript',
'edfi', 'CourseRepeatCodeDescriptor',
'edfi', 'CourseRepeatCodeType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'CourseTranscript',
'edfi', 'CourseAttemptResultDescriptor',
'edfi', 'CourseAttemptResultType'
GO

ALTER TABLE [edfi].[CourseTranscript]
ALTER COLUMN [CourseAttemptResultDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[CourseTranscript]
DROP COLUMN
[AttemptedCreditTypeId],
[CourseAttemptResultTypeId],
[CourseRepeatCodeTypeId],
[EarnedCreditTypeId],
[MethodCreditEarnedTypeId]
GO

