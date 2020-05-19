-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentSectionAssociation]'
GO
ALTER TABLE [edfi].[StudentSectionAssociation] ADD CONSTRAINT [FK_StudentSectionAssociation_AttemptStatusDescriptor] FOREIGN KEY ([AttemptStatusDescriptorId]) REFERENCES [edfi].[AttemptStatusDescriptor] ([AttemptStatusDescriptorId])
GO
ALTER TABLE [edfi].[StudentSectionAssociation] ADD CONSTRAINT [FK_StudentSectionAssociation_RepeatIdentifierDescriptor] FOREIGN KEY ([RepeatIdentifierDescriptorId]) REFERENCES [edfi].[RepeatIdentifierDescriptor] ([RepeatIdentifierDescriptorId])
GO
ALTER TABLE [edfi].[StudentSectionAssociation] ADD CONSTRAINT [FK_StudentSectionAssociation_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName]) REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName]) ON UPDATE CASCADE
GO
ALTER TABLE [edfi].[StudentSectionAssociation] ADD CONSTRAINT [FK_StudentSectionAssociation_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
