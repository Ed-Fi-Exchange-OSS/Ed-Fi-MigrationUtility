-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = N'FK_StudentGradebookEntry_GradebookEntry_SchoolId')
BEGIN
    ALTER TABLE [edfi].[StudentGradebookEntry] DROP CONSTRAINT [FK_StudentGradebookEntry_GradebookEntry_SchoolId]
    ALTER TABLE [edfi].[StudentGradebookEntry]  WITH CHECK ADD  CONSTRAINT [FK_StudentGradebookEntry_GradebookEntry_SchoolId] 
    FOREIGN KEY([GradebookEntryTitle], [ClassroomIdentificationCode], [SchoolId], [ClassPeriodName], [LocalCourseCode], [SchoolYear], [TermDescriptorId], [UniqueSectionCode], [SequenceOfCourse], [DateAssigned])
    REFERENCES [edfi].[GradebookEntry] ([GradebookEntryTitle], [ClassroomIdentificationCode], [SchoolId], [ClassPeriodName], [LocalCourseCode], [SchoolYear], [TermDescriptorId], [UniqueSectionCode], [SequenceOfCourse], [DateAssigned])
    ON UPDATE NO ACTION
END
GO

IF EXISTS (SELECT * FROM sys.foreign_keys WHERE name = N'FK_StudentSectionAssociation_Section_SchoolId')
BEGIN
    ALTER TABLE [edfi].[StudentSectionAssociation] DROP CONSTRAINT [FK_StudentSectionAssociation_Section_SchoolId];
    ALTER TABLE [edfi].[StudentSectionAssociation] ADD CONSTRAINT [FK_StudentSectionAssociation_Section_SchoolId] 
    FOREIGN KEY ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse])
    REFERENCES [edfi].[Section]([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse]) 
    ON UPDATE CASCADE
END
GO