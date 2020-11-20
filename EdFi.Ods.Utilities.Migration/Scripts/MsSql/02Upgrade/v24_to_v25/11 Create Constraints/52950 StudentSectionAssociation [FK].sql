-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentSectionAssociation]'
GO
ALTER TABLE [edfi].[StudentSectionAssociation] ADD CONSTRAINT [FK_StudentSectionAssociation_RepeatIdentifierType] FOREIGN KEY ([RepeatIdentifierTypeId]) REFERENCES [edfi].[RepeatIdentifierType] ([RepeatIdentifierTypeId])
GO
ALTER TABLE [edfi].[StudentSectionAssociation] ADD CONSTRAINT [FK_StudentSectionAssociation_Section] FOREIGN KEY ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse]) REFERENCES [edfi].[Section] ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse])
GO
ALTER TABLE [edfi].[StudentSectionAssociation] ADD CONSTRAINT [FK_StudentSectionAssociation_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
