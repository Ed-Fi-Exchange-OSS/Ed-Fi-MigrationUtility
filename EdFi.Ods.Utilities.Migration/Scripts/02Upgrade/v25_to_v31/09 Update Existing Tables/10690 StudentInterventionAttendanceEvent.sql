-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[StudentInterventionAttendanceEvent]'
GO
ALTER TABLE [edfi].[StudentInterventionAttendanceEvent] ADD
[EventDuration] [decimal] (3, 2) NULL,
[InterventionDuration] [int] NULL
GO

PRINT N'Converting type to descriptor on [edfi].[StudentInterventionAttendanceEvent]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentInterventionAttendanceEvent',
'edfi', 'EducationalEnvironmentDescriptor',
'edfi', 'EducationalEnvironmentType'
GO

ALTER TABLE [edfi].[StudentInterventionAttendanceEvent]
DROP COLUMN [EducationalEnvironmentTypeId]
GO
