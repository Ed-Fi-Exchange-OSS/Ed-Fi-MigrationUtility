-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GradebookEntryLearningStandard_PK] on [edfi].[GradebookEntryLearningStandard]'
GO
ALTER TABLE [edfi].[GradebookEntryLearningStandard] ADD CONSTRAINT [GradebookEntryLearningStandard_PK] PRIMARY KEY CLUSTERED  ([DateAssigned], [GradebookEntryTitle], [LearningStandardId], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
GO

PRINT N'Creating index [FK_GradebookEntryLearningStandard_GradebookEntry] on [edfi].[GradebookEntryLearningStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_GradebookEntryLearningStandard_GradebookEntry] ON [edfi].[GradebookEntryLearningStandard] ([DateAssigned], [GradebookEntryTitle], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
GO

PRINT N'Creating index [FK_GradebookEntryLearningStandard_LearningStandard] on [edfi].[GradebookEntryLearningStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_GradebookEntryLearningStandard_LearningStandard] ON [edfi].[GradebookEntryLearningStandard] ([LearningStandardId])
GO

PRINT N'Adding constraints to [edfi].[GradebookEntryLearningStandard]'
GO
ALTER TABLE [edfi].[GradebookEntryLearningStandard] ADD CONSTRAINT [GradebookEntryLearningStandard_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
