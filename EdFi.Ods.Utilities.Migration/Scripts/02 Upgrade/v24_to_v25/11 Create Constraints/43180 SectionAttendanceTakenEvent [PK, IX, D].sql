-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SectionAttendanceTakenEvent_PK] on [edfi].[SectionAttendanceTakenEvent]'
GO
ALTER TABLE [edfi].[SectionAttendanceTakenEvent] ADD CONSTRAINT [SectionAttendanceTakenEvent_PK] PRIMARY KEY CLUSTERED  ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse], [Date])
GO
PRINT N'Creating index [UX_SectionAttendanceTakenEvent_Id] on [edfi].[SectionAttendanceTakenEvent]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_SectionAttendanceTakenEvent_Id] ON [edfi].[SectionAttendanceTakenEvent] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_SectionAttendanceTakenEvent_Section] on [edfi].[SectionAttendanceTakenEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_SectionAttendanceTakenEvent_Section] ON [edfi].[SectionAttendanceTakenEvent] ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse])
GO
PRINT N'Creating index [FK_SectionAttendanceTakenEvent_CalendarDate] on [edfi].[SectionAttendanceTakenEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_SectionAttendanceTakenEvent_CalendarDate] ON [edfi].[SectionAttendanceTakenEvent] ([SchoolId], [Date])
GO
PRINT N'Creating index [FK_SectionAttendanceTakenEvent_Staff] on [edfi].[SectionAttendanceTakenEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_SectionAttendanceTakenEvent_Staff] ON [edfi].[SectionAttendanceTakenEvent] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[SectionAttendanceTakenEvent]'
GO
ALTER TABLE [edfi].[SectionAttendanceTakenEvent] ADD CONSTRAINT [SectionAttendanceTakenEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[SectionAttendanceTakenEvent] ADD CONSTRAINT [SectionAttendanceTakenEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[SectionAttendanceTakenEvent] ADD CONSTRAINT [SectionAttendanceTakenEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO

