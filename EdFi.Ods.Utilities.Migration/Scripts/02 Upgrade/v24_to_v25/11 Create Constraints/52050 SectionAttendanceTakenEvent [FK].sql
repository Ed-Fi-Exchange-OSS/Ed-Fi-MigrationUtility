-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[SectionAttendanceTakenEvent]'
GO
ALTER TABLE [edfi].[SectionAttendanceTakenEvent] ADD CONSTRAINT [FK_SectionAttendanceTakenEvent_CalendarDate] FOREIGN KEY ([SchoolId], [Date]) REFERENCES [edfi].[CalendarDate] ([SchoolId], [Date])
GO
ALTER TABLE [edfi].[SectionAttendanceTakenEvent] ADD CONSTRAINT [FK_SectionAttendanceTakenEvent_Section] FOREIGN KEY ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse]) REFERENCES [edfi].[Section] ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse]) ON UPDATE CASCADE
GO
ALTER TABLE [edfi].[SectionAttendanceTakenEvent] ADD CONSTRAINT [FK_SectionAttendanceTakenEvent_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI])
GO
