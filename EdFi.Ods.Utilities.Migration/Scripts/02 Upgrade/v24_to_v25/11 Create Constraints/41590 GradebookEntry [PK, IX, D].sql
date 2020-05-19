-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GradebookEntry_PK] on [edfi].[GradebookEntry]'
GO
ALTER TABLE [edfi].[GradebookEntry] ADD CONSTRAINT [GradebookEntry_PK] PRIMARY KEY CLUSTERED  ([GradebookEntryTitle], [ClassroomIdentificationCode], [SchoolId], [ClassPeriodName], [LocalCourseCode], [SchoolYear], [TermDescriptorId], [UniqueSectionCode], [SequenceOfCourse], [DateAssigned])
GO
PRINT N'Creating index [UX_GradebookEntry_Id] on [edfi].[GradebookEntry]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_GradebookEntry_Id] ON [edfi].[GradebookEntry] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_GradebookEntry_GradingPeriod] on [edfi].[GradebookEntry]'
GO
CREATE NONCLUSTERED INDEX [FK_GradebookEntry_GradingPeriod] ON [edfi].[GradebookEntry] ([BeginDate], [GradingPeriodDescriptorId], [SchoolId])
GO
PRINT N'Creating index [FK_GradebookEntry_GradebookEntryType] on [edfi].[GradebookEntry]'
GO
CREATE NONCLUSTERED INDEX [FK_GradebookEntry_GradebookEntryType] ON [edfi].[GradebookEntry] ([GradebookEntryTypeId])
GO
PRINT N'Creating index [FK_GradebookEntry_Section] on [edfi].[GradebookEntry]'
GO
CREATE NONCLUSTERED INDEX [FK_GradebookEntry_Section] ON [edfi].[GradebookEntry] ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse])
GO

PRINT N'Adding constraints to [edfi].[GradebookEntry]'
GO
ALTER TABLE [edfi].[GradebookEntry] ADD CONSTRAINT [GradebookEntry_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[GradebookEntry] ADD CONSTRAINT [GradebookEntry_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[GradebookEntry] ADD CONSTRAINT [GradebookEntry_DF_Id] DEFAULT (newid()) FOR [Id]
GO

