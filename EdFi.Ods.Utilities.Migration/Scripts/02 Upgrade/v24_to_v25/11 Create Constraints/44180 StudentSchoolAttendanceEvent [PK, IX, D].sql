-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentSchoolAttendanceEvent_PK] on [edfi].[StudentSchoolAttendanceEvent]'
GO
ALTER TABLE [edfi].[StudentSchoolAttendanceEvent] ADD CONSTRAINT [StudentSchoolAttendanceEvent_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [SchoolId], [SchoolYear], [EventDate], [AttendanceEventCategoryDescriptorId], [TermDescriptorId])
GO
PRINT N'Creating index [UX_StudentSchoolAttendanceEvent_Id] on [edfi].[StudentSchoolAttendanceEvent]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentSchoolAttendanceEvent_Id] ON [edfi].[StudentSchoolAttendanceEvent] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_StudentSchoolAttendanceEvent_AttendanceEventCategoryDescriptor] on [edfi].[StudentSchoolAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAttendanceEvent_AttendanceEventCategoryDescriptor] ON [edfi].[StudentSchoolAttendanceEvent] ([AttendanceEventCategoryDescriptorId])
GO
PRINT N'Creating index [FK_StudentSchoolAttendanceEvent_EducationalEnvironmentType] on [edfi].[StudentSchoolAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAttendanceEvent_EducationalEnvironmentType] ON [edfi].[StudentSchoolAttendanceEvent] ([EducationalEnvironmentTypeId])
GO
PRINT N'Creating index [FK_StudentSchoolAttendanceEvent_School] on [edfi].[StudentSchoolAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAttendanceEvent_School] ON [edfi].[StudentSchoolAttendanceEvent] ([SchoolId])
GO
PRINT N'Creating index [FK_StudentSchoolAttendanceEvent_Session] on [edfi].[StudentSchoolAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAttendanceEvent_Session] ON [edfi].[StudentSchoolAttendanceEvent] ([SchoolId], [SchoolYear], [TermDescriptorId])
GO
PRINT N'Creating index [FK_StudentSchoolAttendanceEvent_Student] on [edfi].[StudentSchoolAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSchoolAttendanceEvent_Student] ON [edfi].[StudentSchoolAttendanceEvent] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentSchoolAttendanceEvent]'
GO
ALTER TABLE [edfi].[StudentSchoolAttendanceEvent] ADD CONSTRAINT [StudentSchoolAttendanceEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentSchoolAttendanceEvent] ADD CONSTRAINT [StudentSchoolAttendanceEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentSchoolAttendanceEvent] ADD CONSTRAINT [StudentSchoolAttendanceEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO

