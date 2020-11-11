-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentSectionAttendanceEvent]'
GO
ALTER TABLE [edfi].[StudentSectionAttendanceEvent] ADD CONSTRAINT [FK_StudentSectionAttendanceEvent_AttendanceEventCategoryDescriptor] FOREIGN KEY ([AttendanceEventCategoryDescriptorId]) REFERENCES [edfi].[AttendanceEventCategoryDescriptor] ([AttendanceEventCategoryDescriptorId])
GO
ALTER TABLE [edfi].[StudentSectionAttendanceEvent] ADD CONSTRAINT [FK_StudentSectionAttendanceEvent_EducationalEnvironmentType] FOREIGN KEY ([EducationalEnvironmentTypeId]) REFERENCES [edfi].[EducationalEnvironmentType] ([EducationalEnvironmentTypeId])
GO
ALTER TABLE [edfi].[StudentSectionAttendanceEvent] ADD CONSTRAINT [FK_StudentSectionAttendanceEvent_Section] FOREIGN KEY ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse]) REFERENCES [edfi].[Section] ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse]) ON UPDATE CASCADE
GO
ALTER TABLE [edfi].[StudentSectionAttendanceEvent] ADD CONSTRAINT [FK_StudentSectionAttendanceEvent_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
