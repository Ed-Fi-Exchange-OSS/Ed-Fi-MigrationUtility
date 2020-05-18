-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseLearningObjective_PK] on [edfi].[CourseLearningObjective]'
GO
ALTER TABLE [edfi].[CourseLearningObjective] ADD CONSTRAINT [CourseLearningObjective_PK] PRIMARY KEY CLUSTERED  ([CourseCode], [EducationOrganizationId], [LearningObjectiveId], [Namespace])
GO
PRINT N'Creating index [FK_CourseLearningObjective_Course] on [edfi].[CourseLearningObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseLearningObjective_Course] ON [edfi].[CourseLearningObjective] ([EducationOrganizationId], [CourseCode])
GO
PRINT N'Creating index [FK_CourseLearningObjective_LearningObjective] on [edfi].[CourseLearningObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseLearningObjective_LearningObjective] ON [edfi].[CourseLearningObjective] ([LearningObjectiveId], [Namespace])
GO

PRINT N'Adding constraints to [edfi].[CourseLearningObjective]'
GO
ALTER TABLE [edfi].[CourseLearningObjective] ADD CONSTRAINT [CourseLearningObjective_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

