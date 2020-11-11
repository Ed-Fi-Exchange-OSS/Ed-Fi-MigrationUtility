-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffSectionAssociation]'
GO
ALTER TABLE [edfi].[StaffSectionAssociation] ADD CONSTRAINT [FK_StaffSectionAssociation_ClassroomPositionDescriptor] FOREIGN KEY ([ClassroomPositionDescriptorId]) REFERENCES [edfi].[ClassroomPositionDescriptor] ([ClassroomPositionDescriptorId])
GO
ALTER TABLE [edfi].[StaffSectionAssociation] ADD CONSTRAINT [FK_StaffSectionAssociation_Section] FOREIGN KEY ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse]) REFERENCES [edfi].[Section] ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse]) ON UPDATE CASCADE
GO
ALTER TABLE [edfi].[StaffSectionAssociation] ADD CONSTRAINT [FK_StaffSectionAssociation_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI])
GO
