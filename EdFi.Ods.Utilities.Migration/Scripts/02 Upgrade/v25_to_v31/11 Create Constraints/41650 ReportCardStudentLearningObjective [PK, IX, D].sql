-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ReportCardStudentLearningObjective_PK] on [edfi].[ReportCardStudentLearningObjective]'
GO
ALTER TABLE [edfi].[ReportCardStudentLearningObjective] ADD CONSTRAINT [ReportCardStudentLearningObjective_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [LearningObjectiveId], [Namespace], [StudentUSI])
GO

PRINT N'Creating index [FK_ReportCardStudentLearningObjective_ReportCard] on [edfi].[ReportCardStudentLearningObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_ReportCardStudentLearningObjective_ReportCard] ON [edfi].[ReportCardStudentLearningObjective] ([EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [StudentUSI])
GO

PRINT N'Creating index [FK_ReportCardStudentLearningObjective_StudentLearningObjective] on [edfi].[ReportCardStudentLearningObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_ReportCardStudentLearningObjective_StudentLearningObjective] ON [edfi].[ReportCardStudentLearningObjective] ([GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [LearningObjectiveId], [Namespace], [StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[ReportCardStudentLearningObjective]'
GO
ALTER TABLE [edfi].[ReportCardStudentLearningObjective] ADD CONSTRAINT [ReportCardStudentLearningObjective_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
