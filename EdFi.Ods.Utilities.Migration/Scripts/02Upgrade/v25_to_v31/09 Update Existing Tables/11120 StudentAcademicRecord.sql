-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[StudentAcademicRecord]'
GO

ALTER TABLE [edfi].[StudentAcademicRecord] ALTER COLUMN [CumulativeEarnedCredits] [decimal] (9, 3) NULL
GO

ALTER TABLE [edfi].[StudentAcademicRecord] ALTER COLUMN [CumulativeAttemptedCredits] [decimal] (9, 3) NULL
GO

ALTER TABLE [edfi].[StudentAcademicRecord] ALTER COLUMN [SessionEarnedCredits] [decimal] (9, 3) NULL
GO

ALTER TABLE [edfi].[StudentAcademicRecord] ALTER COLUMN [SessionAttemptedCredits] [decimal] (9, 3) NULL
GO

PRINT N'Converting type to descriptor on [edfi].[StudentAcademicRecord]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentAcademicRecord',
'edfi', 'CreditTypeDescriptor',
'edfi', 'CreditType',
'CumulativeAttemptedCreditTypeId', 'CumulativeAttemptedCreditTypeDescriptorId'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentAcademicRecord',
'edfi', 'CreditTypeDescriptor',
'edfi', 'CreditType',
'CumulativeEarnedCreditTypeId', 'CumulativeEarnedCreditTypeDescriptorId'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentAcademicRecord',
'edfi', 'CreditTypeDescriptor',
'edfi', 'CreditType',
'SessionAttemptedCreditTypeId', 'SessionAttemptedCreditTypeDescriptorId'
GO


EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentAcademicRecord',
'edfi', 'CreditTypeDescriptor',
'edfi', 'CreditType',
'SessionEarnedCreditTypeId', 'SessionEarnedCreditTypeDescriptorId'
GO

ALTER TABLE [edfi].[StudentAcademicRecord]
DROP COLUMN
[CumulativeAttemptedCreditTypeId],
[CumulativeEarnedCreditTypeId],
[SessionAttemptedCreditTypeId],
[SessionEarnedCreditTypeId]
GO

