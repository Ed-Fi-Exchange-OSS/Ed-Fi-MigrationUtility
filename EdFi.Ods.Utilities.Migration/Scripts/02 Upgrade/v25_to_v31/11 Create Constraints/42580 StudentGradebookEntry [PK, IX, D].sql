-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentGradebookEntry_PK] on [edfi].[StudentGradebookEntry]'
GO
ALTER TABLE [edfi].[StudentGradebookEntry] ADD CONSTRAINT [StudentGradebookEntry_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [DateAssigned], [GradebookEntryTitle], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
GO

PRINT N'Creating index [UX_StudentGradebookEntry_Id] on [edfi].[StudentGradebookEntry]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentGradebookEntry_Id] ON [edfi].[StudentGradebookEntry] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_StudentGradebookEntry_StudentSectionAssociation] on [edfi].[StudentGradebookEntry]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentGradebookEntry_StudentSectionAssociation] ON [edfi].[StudentGradebookEntry] ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentGradebookEntry_CompetencyLevelDescriptor] on [edfi].[StudentGradebookEntry]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentGradebookEntry_CompetencyLevelDescriptor] ON [edfi].[StudentGradebookEntry] ([CompetencyLevelDescriptorId])
GO

PRINT N'Creating index [FK_StudentGradebookEntry_GradebookEntry] on [edfi].[StudentGradebookEntry]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentGradebookEntry_GradebookEntry] ON [edfi].[StudentGradebookEntry] ([DateAssigned], [GradebookEntryTitle], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
GO

PRINT N'Adding constraints to [edfi].[StudentGradebookEntry]'
GO
ALTER TABLE [edfi].[StudentGradebookEntry] ADD CONSTRAINT [StudentGradebookEntry_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentGradebookEntry] ADD CONSTRAINT [StudentGradebookEntry_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentGradebookEntry] ADD CONSTRAINT [StudentGradebookEntry_DF_Id] DEFAULT (newid()) FOR [Id]
GO
