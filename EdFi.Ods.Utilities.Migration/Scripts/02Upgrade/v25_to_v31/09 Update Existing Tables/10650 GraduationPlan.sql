-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[GraduationPlan]'
GO

ALTER TABLE [edfi].[GraduationPlan] ALTER COLUMN [TotalRequiredCredits] [decimal] (9, 3) NOT NULL
GO

PRINT N'Converting type to descriptor on [edfi].[GraduationPlan]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'GraduationPlan',
'edfi', 'CreditTypeDescriptor',
'edfi', 'CreditType',
'TotalRequiredCreditTypeId', 'TotalRequiredCreditTypeDescriptorId'
GO

ALTER TABLE [edfi].[GraduationPlan]
DROP COLUMN [TotalRequiredCreditTypeId]
GO

