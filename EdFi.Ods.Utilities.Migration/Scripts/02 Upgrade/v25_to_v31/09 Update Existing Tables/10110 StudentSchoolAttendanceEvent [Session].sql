-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[StudentSchoolAttendanceEvent]'
GO
ALTER TABLE [edfi].[StudentSchoolAttendanceEvent] ADD
[EventDuration] [decimal] (3, 2) NULL
GO

PRINT N'Adding session reference to [edfi].[StudentSchoolAttendanceEvent]'

ALTER TABLE [edfi].[StudentSchoolAttendanceEvent]
ADD [SessionName] [nvarchar] (60) NULL
GO

UPDATE [edfi].[StudentSchoolAttendanceEvent]
SET [SessionName] = sess.[SessionName]
FROM [edfi].[StudentSchoolAttendanceEvent] ssa
INNER JOIN [edfi].[Session] sess
	ON sess.[SchoolId]  = ssa.[SchoolId]
	AND sess.[TermDescriptorId] = ssa.[TermDescriptorId]
	AND sess.[SchoolYear] = ssa.[SchoolYear]
GO

ALTER TABLE [edfi].[StudentSchoolAttendanceEvent]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[StudentSchoolAttendanceEvent]
DROP COLUMN [TermDescriptorId]
GO

PRINT N'Converting type to descriptor on [edfi].[StudentSchoolAttendanceEvent]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentSchoolAttendanceEvent',
'edfi', 'EducationalEnvironmentDescriptor',
'edfi', 'EducationalEnvironmentType'
GO

ALTER TABLE [edfi].[StudentSchoolAttendanceEvent]
DROP COLUMN [EducationalEnvironmentTypeId]
GO
