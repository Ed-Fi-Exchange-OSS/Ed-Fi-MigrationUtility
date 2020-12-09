-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffSectionAssociation_PK] on [edfi].[StaffSectionAssociation]'
GO
ALTER TABLE [edfi].[StaffSectionAssociation] ADD CONSTRAINT [StaffSectionAssociation_PK] PRIMARY KEY CLUSTERED  ([StaffUSI], [ClassroomIdentificationCode], [SchoolId], [ClassPeriodName], [LocalCourseCode], [SchoolYear], [TermDescriptorId], [UniqueSectionCode], [SequenceOfCourse])
GO
PRINT N'Creating index [UX_StaffSectionAssociation_Id] on [edfi].[StaffSectionAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StaffSectionAssociation_Id] ON [edfi].[StaffSectionAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_StaffSectionAssociation_ClassroomPositionDescriptor] on [edfi].[StaffSectionAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffSectionAssociation_ClassroomPositionDescriptor] ON [edfi].[StaffSectionAssociation] ([ClassroomPositionDescriptorId])
GO
PRINT N'Creating index [FK_StaffSectionAssociation_Section] on [edfi].[StaffSectionAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffSectionAssociation_Section] ON [edfi].[StaffSectionAssociation] ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse])
GO
PRINT N'Creating index [FK_StaffSectionAssociation_Staff] on [edfi].[StaffSectionAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffSectionAssociation_Staff] ON [edfi].[StaffSectionAssociation] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffSectionAssociation]'
GO
ALTER TABLE [edfi].[StaffSectionAssociation] ADD CONSTRAINT [StaffSectionAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StaffSectionAssociation] ADD CONSTRAINT [StaffSectionAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StaffSectionAssociation] ADD CONSTRAINT [StaffSectionAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO

