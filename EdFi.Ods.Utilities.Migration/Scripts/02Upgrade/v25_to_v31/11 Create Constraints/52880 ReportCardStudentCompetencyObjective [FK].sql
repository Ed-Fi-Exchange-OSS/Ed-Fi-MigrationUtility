-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ReportCardStudentCompetencyObjective]'
GO
ALTER TABLE [edfi].[ReportCardStudentCompetencyObjective] ADD CONSTRAINT [FK_ReportCardStudentCompetencyObjective_ReportCard] FOREIGN KEY ([EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [StudentUSI]) REFERENCES [edfi].[ReportCard] ([EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [StudentUSI]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[ReportCardStudentCompetencyObjective] ADD CONSTRAINT [FK_ReportCardStudentCompetencyObjective_StudentCompetencyObjective] FOREIGN KEY ([GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [Objective], [ObjectiveEducationOrganizationId], [ObjectiveGradeLevelDescriptorId], [StudentUSI]) REFERENCES [edfi].[StudentCompetencyObjective] ([GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [Objective], [ObjectiveEducationOrganizationId], [ObjectiveGradeLevelDescriptorId], [StudentUSI])
GO
