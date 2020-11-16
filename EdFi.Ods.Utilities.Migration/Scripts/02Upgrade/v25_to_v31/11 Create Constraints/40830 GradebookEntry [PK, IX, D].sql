-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GradebookEntry_PK] on [edfi].[GradebookEntry]'
GO
ALTER TABLE [edfi].[GradebookEntry] ADD CONSTRAINT [GradebookEntry_PK] PRIMARY KEY CLUSTERED  ([DateAssigned], [GradebookEntryTitle], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
GO

PRINT N'Creating index [UX_GradebookEntry_Id] on [edfi].[GradebookEntry]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_GradebookEntry_Id] ON [edfi].[GradebookEntry] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_GradebookEntry_GradebookEntryTypeDescriptor] on [edfi].[GradebookEntry]'
GO
CREATE NONCLUSTERED INDEX [FK_GradebookEntry_GradebookEntryTypeDescriptor] ON [edfi].[GradebookEntry] ([GradebookEntryTypeDescriptorId])
GO

PRINT N'Creating index [FK_GradebookEntry_GradingPeriod] on [edfi].[GradebookEntry]'
GO
CREATE NONCLUSTERED INDEX [FK_GradebookEntry_GradingPeriod] ON [edfi].[GradebookEntry] ([GradingPeriodDescriptorId], [PeriodSequence], [SchoolId], [SchoolYear])
GO

PRINT N'Creating index [FK_GradebookEntry_Section] on [edfi].[GradebookEntry]'
GO
CREATE NONCLUSTERED INDEX [FK_GradebookEntry_Section] ON [edfi].[GradebookEntry] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
GO

PRINT N'Adding constraints to [edfi].[GradebookEntry]'
GO
ALTER TABLE [edfi].[GradebookEntry] ADD CONSTRAINT [GradebookEntry_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[GradebookEntry] ADD CONSTRAINT [GradebookEntry_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[GradebookEntry] ADD CONSTRAINT [GradebookEntry_DF_Id] DEFAULT (newid()) FOR [Id]
GO
