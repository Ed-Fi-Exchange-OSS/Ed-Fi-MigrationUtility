-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Removing BeginDate and EndDate from [edfi].[AssessmentPeriodDescriptor]'
GO

ALTER TABLE [edfi].[AssessmentPeriodDescriptor] DROP
COLUMN [BeginDate],
COLUMN [EndDate]
GO


PRINT N'Importing updated AssessmentPeriodDescriptor defaults'
GO

EXEC [migration_tempdata].[sp_ImportDescriptorsFromXML] 'AssessmentPeriodDescriptor'
GO
