-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentSectionAttendanceEvent_PK] on [edfi].[StudentSectionAttendanceEvent]'
GO
ALTER TABLE [edfi].[StudentSectionAttendanceEvent] ADD CONSTRAINT [StudentSectionAttendanceEvent_PK] PRIMARY KEY CLUSTERED  ([AttendanceEventCategoryDescriptorId], [EventDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
GO

PRINT N'Creating index [UX_StudentSectionAttendanceEvent_Id] on [edfi].[StudentSectionAttendanceEvent]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentSectionAttendanceEvent_Id] ON [edfi].[StudentSectionAttendanceEvent] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_StudentSectionAttendanceEvent_AttendanceEventCategoryDescriptor] on [edfi].[StudentSectionAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSectionAttendanceEvent_AttendanceEventCategoryDescriptor] ON [edfi].[StudentSectionAttendanceEvent] ([AttendanceEventCategoryDescriptorId])
GO

PRINT N'Creating index [FK_StudentSectionAttendanceEvent_EducationalEnvironmentDescriptor] on [edfi].[StudentSectionAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSectionAttendanceEvent_EducationalEnvironmentDescriptor] ON [edfi].[StudentSectionAttendanceEvent] ([EducationalEnvironmentDescriptorId])
GO

PRINT N'Creating index [FK_StudentSectionAttendanceEvent_Section] on [edfi].[StudentSectionAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSectionAttendanceEvent_Section] ON [edfi].[StudentSectionAttendanceEvent] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
GO

PRINT N'Creating index [FK_StudentSectionAttendanceEvent_Student] on [edfi].[StudentSectionAttendanceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSectionAttendanceEvent_Student] ON [edfi].[StudentSectionAttendanceEvent] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentSectionAttendanceEvent]'
GO
ALTER TABLE [edfi].[StudentSectionAttendanceEvent] ADD CONSTRAINT [StudentSectionAttendanceEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentSectionAttendanceEvent] ADD CONSTRAINT [StudentSectionAttendanceEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentSectionAttendanceEvent] ADD CONSTRAINT [StudentSectionAttendanceEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
