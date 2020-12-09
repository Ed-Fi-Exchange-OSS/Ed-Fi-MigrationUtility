-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ReportCardStudentCompetencyObjective_PK] on [edfi].[ReportCardStudentCompetencyObjective]'
GO
ALTER TABLE [edfi].[ReportCardStudentCompetencyObjective] ADD CONSTRAINT [ReportCardStudentCompetencyObjective_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [Objective], [ObjectiveEducationOrganizationId], [ObjectiveGradeLevelDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_ReportCardStudentCompetencyObjective_ReportCard] on [edfi].[ReportCardStudentCompetencyObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_ReportCardStudentCompetencyObjective_ReportCard] ON [edfi].[ReportCardStudentCompetencyObjective] ([EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [StudentUSI])
GO

PRINT N'Creating index [FK_ReportCardStudentCompetencyObjective_StudentCompetencyObjective] on [edfi].[ReportCardStudentCompetencyObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_ReportCardStudentCompetencyObjective_StudentCompetencyObjective] ON [edfi].[ReportCardStudentCompetencyObjective] ([GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [Objective], [ObjectiveEducationOrganizationId], [ObjectiveGradeLevelDescriptorId], [StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[ReportCardStudentCompetencyObjective]'
GO
ALTER TABLE [edfi].[ReportCardStudentCompetencyObjective] ADD CONSTRAINT [ReportCardStudentCompetencyObjective_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
