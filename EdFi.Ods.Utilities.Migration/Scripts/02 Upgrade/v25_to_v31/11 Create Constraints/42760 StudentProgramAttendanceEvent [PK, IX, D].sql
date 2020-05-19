-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentProgramAttendanceEvent_PK] on [edfi].[StudentProgramAttendanceEvent]'
GO
ALTER TABLE [edfi].[StudentProgramAttendanceEvent] ADD CONSTRAINT [StudentProgramAttendanceEvent_PK] PRIMARY KEY CLUSTERED  ([AttendanceEventCategoryDescriptorId], [EducationOrganizationId], [EventDate], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [UX_StudentProgramAttendanceEvent_Id] on [edfi].[StudentProgramAttendanceEvent]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentProgramAttendanceEvent_Id] ON [edfi].[StudentProgramAttendanceEvent] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_StudentProgramAttendanceEvent_AttendanceEventCategoryDescriptor] on [edfi].[StudentProgramAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentProgramAttendanceEvent_AttendanceEventCategoryDescriptor] ON [edfi].[StudentProgramAttendanceEvent] ([AttendanceEventCategoryDescriptorId])
GO

PRINT N'Creating index [FK_StudentProgramAttendanceEvent_EducationalEnvironmentDescriptor] on [edfi].[StudentProgramAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentProgramAttendanceEvent_EducationalEnvironmentDescriptor] ON [edfi].[StudentProgramAttendanceEvent] ([EducationalEnvironmentDescriptorId])
GO

PRINT N'Creating index [FK_StudentProgramAttendanceEvent_EducationOrganization] on [edfi].[StudentProgramAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentProgramAttendanceEvent_EducationOrganization] ON [edfi].[StudentProgramAttendanceEvent] ([EducationOrganizationId])
GO

PRINT N'Creating index [FK_StudentProgramAttendanceEvent_Program] on [edfi].[StudentProgramAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentProgramAttendanceEvent_Program] ON [edfi].[StudentProgramAttendanceEvent] ([ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
GO

PRINT N'Creating index [FK_StudentProgramAttendanceEvent_Student] on [edfi].[StudentProgramAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentProgramAttendanceEvent_Student] ON [edfi].[StudentProgramAttendanceEvent] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentProgramAttendanceEvent]'
GO
ALTER TABLE [edfi].[StudentProgramAttendanceEvent] ADD CONSTRAINT [StudentProgramAttendanceEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentProgramAttendanceEvent] ADD CONSTRAINT [StudentProgramAttendanceEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentProgramAttendanceEvent] ADD CONSTRAINT [StudentProgramAttendanceEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
