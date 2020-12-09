-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[GradebookEntry]'
GO
ALTER TABLE [edfi].[GradebookEntry] ADD CONSTRAINT [FK_GradebookEntry_GradebookEntryType] FOREIGN KEY ([GradebookEntryTypeId]) REFERENCES [edfi].[GradebookEntryType] ([GradebookEntryTypeId])
GO
ALTER TABLE [edfi].[GradebookEntry] ADD CONSTRAINT [FK_GradebookEntry_GradingPeriod] FOREIGN KEY ([GradingPeriodDescriptorId], [SchoolId], [BeginDate]) REFERENCES [edfi].[GradingPeriod] ([GradingPeriodDescriptorId], [SchoolId], [BeginDate])
GO
ALTER TABLE [edfi].[GradebookEntry] ADD CONSTRAINT [FK_GradebookEntry_Section] FOREIGN KEY ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse]) REFERENCES [edfi].[Section] ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse]) ON UPDATE CASCADE
GO
