-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseLearningStandard_PK] on [edfi].[CourseLearningStandard]'
GO
ALTER TABLE [edfi].[CourseLearningStandard] ADD CONSTRAINT [CourseLearningStandard_PK] PRIMARY KEY CLUSTERED  ([CourseCode], [EducationOrganizationId], [LearningStandardId])
GO

PRINT N'Creating index [FK_CourseLearningStandard_Course] on [edfi].[CourseLearningStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseLearningStandard_Course] ON [edfi].[CourseLearningStandard] ([CourseCode], [EducationOrganizationId])
GO

PRINT N'Creating index [FK_CourseLearningStandard_LearningStandard] on [edfi].[CourseLearningStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseLearningStandard_LearningStandard] ON [edfi].[CourseLearningStandard] ([LearningStandardId])
GO

PRINT N'Adding constraints to [edfi].[CourseLearningStandard]'
GO
ALTER TABLE [edfi].[CourseLearningStandard] ADD CONSTRAINT [CourseLearningStandard_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
