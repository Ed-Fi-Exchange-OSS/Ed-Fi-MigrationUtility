-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentGradebookEntry]'
GO
ALTER TABLE [edfi].[StudentGradebookEntry] ADD CONSTRAINT [FK_StudentGradebookEntry_CompetencyLevelDescriptor] FOREIGN KEY ([CompetencyLevelDescriptorId]) REFERENCES [edfi].[CompetencyLevelDescriptor] ([CompetencyLevelDescriptorId])
GO
ALTER TABLE [edfi].[StudentGradebookEntry] ADD CONSTRAINT [FK_StudentGradebookEntry_GradebookEntry] FOREIGN KEY ([GradebookEntryTitle], [ClassroomIdentificationCode], [SchoolId], [ClassPeriodName], [LocalCourseCode], [SchoolYear], [TermDescriptorId], [UniqueSectionCode], [SequenceOfCourse], [DateAssigned]) REFERENCES [edfi].[GradebookEntry] ([GradebookEntryTitle], [ClassroomIdentificationCode], [SchoolId], [ClassPeriodName], [LocalCourseCode], [SchoolYear], [TermDescriptorId], [UniqueSectionCode], [SequenceOfCourse], [DateAssigned]) ON UPDATE CASCADE
GO
ALTER TABLE [edfi].[StudentGradebookEntry] ADD CONSTRAINT [FK_StudentGradebookEntry_StudentSectionAssociation] FOREIGN KEY ([StudentUSI], [SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [UniqueSectionCode], [SequenceOfCourse], [SchoolYear], [TermDescriptorId], [BeginDate]) REFERENCES [edfi].[StudentSectionAssociation] ([StudentUSI], [SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [UniqueSectionCode], [SequenceOfCourse], [SchoolYear], [TermDescriptorId], [BeginDate]) ON UPDATE CASCADE
GO
