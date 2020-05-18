-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentProgramAttendanceEvent]'
GO
ALTER TABLE [edfi].[StudentProgramAttendanceEvent] ADD CONSTRAINT [FK_StudentProgramAttendanceEvent_AttendanceEventCategoryDescriptor] FOREIGN KEY ([AttendanceEventCategoryDescriptorId]) REFERENCES [edfi].[AttendanceEventCategoryDescriptor] ([AttendanceEventCategoryDescriptorId])
GO
ALTER TABLE [edfi].[StudentProgramAttendanceEvent] ADD CONSTRAINT [FK_StudentProgramAttendanceEvent_EducationalEnvironmentType] FOREIGN KEY ([EducationalEnvironmentTypeId]) REFERENCES [edfi].[EducationalEnvironmentType] ([EducationalEnvironmentTypeId])
GO
ALTER TABLE [edfi].[StudentProgramAttendanceEvent] ADD CONSTRAINT [FK_StudentProgramAttendanceEvent_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
ALTER TABLE [edfi].[StudentProgramAttendanceEvent] ADD CONSTRAINT [FK_StudentProgramAttendanceEvent_Program] FOREIGN KEY ([ProgramEducationOrganizationId], [ProgramTypeId], [ProgramName]) REFERENCES [edfi].[Program] ([EducationOrganizationId], [ProgramTypeId], [ProgramName])
GO
ALTER TABLE [edfi].[StudentProgramAttendanceEvent] ADD CONSTRAINT [FK_StudentProgramAttendanceEvent_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
