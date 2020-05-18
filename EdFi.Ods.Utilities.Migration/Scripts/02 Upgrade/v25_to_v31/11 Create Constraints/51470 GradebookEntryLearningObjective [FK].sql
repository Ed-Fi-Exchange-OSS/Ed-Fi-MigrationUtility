-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[GradebookEntryLearningObjective]'
GO
ALTER TABLE [edfi].[GradebookEntryLearningObjective] ADD CONSTRAINT [FK_GradebookEntryLearningObjective_GradebookEntry] FOREIGN KEY ([DateAssigned], [GradebookEntryTitle], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName]) REFERENCES [edfi].[GradebookEntry] ([DateAssigned], [GradebookEntryTitle], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [edfi].[GradebookEntryLearningObjective] ADD CONSTRAINT [FK_GradebookEntryLearningObjective_LearningObjective] FOREIGN KEY ([LearningObjectiveId], [Namespace]) REFERENCES [edfi].[LearningObjective] ([LearningObjectiveId], [Namespace])
GO
