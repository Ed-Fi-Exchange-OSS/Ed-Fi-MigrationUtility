-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ReportCardStudentCompetencyObjective_PK] on [edfi].[ReportCardStudentCompetencyObjective]'
GO
ALTER TABLE [edfi].[ReportCardStudentCompetencyObjective] ADD CONSTRAINT [ReportCardStudentCompetencyObjective_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [Objective], [ObjectiveGradeLevelDescriptorId], [ObjectiveEducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodBeginDate], [SchoolId], [ReportCardEducationOrganizationId])
GO
PRINT N'Creating index [FK_ReportCardStudentCompetencyObjective_StudentCompetencyObjective] on [edfi].[ReportCardStudentCompetencyObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_ReportCardStudentCompetencyObjective_StudentCompetencyObjective] ON [edfi].[ReportCardStudentCompetencyObjective] ([StudentUSI], [Objective], [ObjectiveGradeLevelDescriptorId], [ObjectiveEducationOrganizationId], [SchoolId], [GradingPeriodDescriptorId], [GradingPeriodBeginDate])
GO
PRINT N'Creating index [FK_ReportCardStudentCompetencyObjective_ReportCard] on [edfi].[ReportCardStudentCompetencyObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_ReportCardStudentCompetencyObjective_ReportCard] ON [edfi].[ReportCardStudentCompetencyObjective] ([StudentUSI], [ReportCardEducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodBeginDate], [SchoolId])
GO

PRINT N'Adding constraints to [edfi].[ReportCardStudentCompetencyObjective]'
GO
ALTER TABLE [edfi].[ReportCardStudentCompetencyObjective] ADD CONSTRAINT [ReportCardStudentCompetencyObjective_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

