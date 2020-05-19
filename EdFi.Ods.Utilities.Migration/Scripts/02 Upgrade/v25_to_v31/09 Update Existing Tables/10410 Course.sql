-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[Course]'
GO

ALTER TABLE [edfi].[Course] 
ALTER COLUMN [MaximumAvailableCredits] [decimal] (9, 3) NULL
GO

ALTER TABLE [edfi].[Course] 
ALTER COLUMN [MinimumAvailableCredits] [decimal] (9, 3) NULL
GO

ALTER TABLE [edfi].[Course] ADD [MaxCompletionsForCredit] [int] NULL
GO

PRINT N'Converting types to descriptors on [edfi].[Course]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Course',
'edfi', 'CreditTypeDescriptor',
'edfi', 'CreditType',
'MinimumAvailableCreditTypeId', 'MinimumAvailableCreditTypeDescriptorId'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Course',
'edfi', 'CreditTypeDescriptor',
'edfi', 'CreditType',
'MaximumAvailableCreditTypeId', 'MaximumAvailableCreditTypeDescriptorId'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Course',
'edfi', 'CourseGPAApplicabilityDescriptor',
'edfi', 'CourseGPAApplicabilityType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Course',
'edfi', 'CourseDefinedByDescriptor',
'edfi', 'CourseDefinedByType'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Course',
'edfi', 'CareerPathwayDescriptor',
'edfi', 'CareerPathwayType'
GO

ALTER TABLE [edfi].[Course] DROP
COLUMN [CourseGPAApplicabilityTypeId],
COLUMN [CourseDefinedByTypeId],
COLUMN [MinimumAvailableCreditTypeId],
COLUMN [MaximumAvailableCreditTypeId],
COLUMN [CareerPathwayTypeId]
GO


