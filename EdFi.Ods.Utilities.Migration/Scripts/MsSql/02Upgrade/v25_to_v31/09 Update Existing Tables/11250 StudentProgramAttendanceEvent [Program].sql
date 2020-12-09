-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[StudentProgramAttendanceEvent]'
GO

ALTER TABLE [edfi].[StudentProgramAttendanceEvent] ADD
[EventDuration] [decimal] (3, 2) NULL
GO

PRINT N'Converting type to descriptor on [edfi].[StudentProgramAttendanceEvent]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentProgramAttendanceEvent',
'edfi', 'EducationalEnvironmentDescriptor',
'edfi', 'EducationalEnvironmentType'
GO

ALTER TABLE [edfi].[StudentProgramAttendanceEvent]
ADD [ProgramTypeDescriptorId] [int] NULL
GO

UPDATE [edfi].[StudentProgramAttendanceEvent]
SET [ProgramTypeDescriptorId] = m.[ProgramTypeDescriptorId]
FROM [edfi].[StudentProgramAttendanceEvent] s
INNER JOIN [migration_tempdata].[ProgramIdentityMapping] m
ON m.[EducationOrganizationId] = s.[ProgramEducationOrganizationId]
	AND m.[ProgramTypeId] = s.[ProgramTypeId]
	AND m.[ProgramName] = s.[ProgramName]

ALTER TABLE [edfi].[StudentProgramAttendanceEvent]
ALTER COLUMN [ProgramTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentProgramAttendanceEvent]
DROP COLUMN
[EducationalEnvironmentTypeId],
[ProgramTypeId]
GO

