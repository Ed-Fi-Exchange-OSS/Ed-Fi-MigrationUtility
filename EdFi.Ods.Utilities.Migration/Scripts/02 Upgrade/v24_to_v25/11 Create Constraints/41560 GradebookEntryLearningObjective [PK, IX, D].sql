-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GradebookEntryLearningObjective_PK] on [edfi].[GradebookEntryLearningObjective]'
GO
ALTER TABLE [edfi].[GradebookEntryLearningObjective] ADD CONSTRAINT [GradebookEntryLearningObjective_PK] PRIMARY KEY CLUSTERED  ([ClassPeriodName], [ClassroomIdentificationCode], [DateAssigned], [GradebookEntryTitle], [LearningObjectiveId], [LocalCourseCode], [Namespace], [SchoolId], [SchoolYear], [SequenceOfCourse], [TermDescriptorId], [UniqueSectionCode])
GO
PRINT N'Creating index [FK_GradebookEntryLearningObjective_GradebookEntry] on [edfi].[GradebookEntryLearningObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_GradebookEntryLearningObjective_GradebookEntry] ON [edfi].[GradebookEntryLearningObjective] ([GradebookEntryTitle], [ClassroomIdentificationCode], [SchoolId], [ClassPeriodName], [LocalCourseCode], [SchoolYear], [TermDescriptorId], [UniqueSectionCode], [SequenceOfCourse], [DateAssigned])
GO
PRINT N'Creating index [FK_GradebookEntryLearningObjective_LearningObjective] on [edfi].[GradebookEntryLearningObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_GradebookEntryLearningObjective_LearningObjective] ON [edfi].[GradebookEntryLearningObjective] ([LearningObjectiveId], [Namespace])
GO

PRINT N'Adding constraints to [edfi].[GradebookEntryLearningObjective]'
GO
ALTER TABLE [edfi].[GradebookEntryLearningObjective] ADD CONSTRAINT [GradebookEntryLearningObjective_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

