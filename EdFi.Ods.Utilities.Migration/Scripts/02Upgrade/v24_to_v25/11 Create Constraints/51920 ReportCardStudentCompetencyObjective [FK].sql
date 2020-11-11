-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ReportCardStudentCompetencyObjective]'
GO
ALTER TABLE [edfi].[ReportCardStudentCompetencyObjective] ADD CONSTRAINT [FK_ReportCardStudentCompetencyObjective_ReportCard] FOREIGN KEY ([StudentUSI], [ReportCardEducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodBeginDate], [SchoolId]) REFERENCES [edfi].[ReportCard] ([StudentUSI], [EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodBeginDate], [SchoolId])
GO
ALTER TABLE [edfi].[ReportCardStudentCompetencyObjective] ADD CONSTRAINT [FK_ReportCardStudentCompetencyObjective_StudentCompetencyObjective] FOREIGN KEY ([StudentUSI], [Objective], [ObjectiveGradeLevelDescriptorId], [ObjectiveEducationOrganizationId], [SchoolId], [GradingPeriodDescriptorId], [GradingPeriodBeginDate]) REFERENCES [edfi].[StudentCompetencyObjective] ([StudentUSI], [Objective], [ObjectiveGradeLevelDescriptorId], [ObjectiveEducationOrganizationId], [SchoolId], [GradingPeriodDescriptorId], [GradingPeriodBeginDate])
GO
