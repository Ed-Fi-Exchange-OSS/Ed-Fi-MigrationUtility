-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentCompetencyObjective]'
GO
ALTER TABLE [edfi].[StudentCompetencyObjective] ADD CONSTRAINT [FK_StudentCompetencyObjective_CompetencyLevelDescriptor] FOREIGN KEY ([CompetencyLevelDescriptorId]) REFERENCES [edfi].[CompetencyLevelDescriptor] ([CompetencyLevelDescriptorId])
GO
ALTER TABLE [edfi].[StudentCompetencyObjective] ADD CONSTRAINT [FK_StudentCompetencyObjective_CompetencyObjective] FOREIGN KEY ([ObjectiveEducationOrganizationId], [Objective], [ObjectiveGradeLevelDescriptorId]) REFERENCES [edfi].[CompetencyObjective] ([EducationOrganizationId], [Objective], [ObjectiveGradeLevelDescriptorId])
GO
ALTER TABLE [edfi].[StudentCompetencyObjective] ADD CONSTRAINT [FK_StudentCompetencyObjective_GradingPeriod] FOREIGN KEY ([GradingPeriodDescriptorId], [GradingPeriodSequence], [GradingPeriodSchoolId], [GradingPeriodSchoolYear]) REFERENCES [edfi].[GradingPeriod] ([GradingPeriodDescriptorId], [PeriodSequence], [SchoolId], [SchoolYear])
GO
ALTER TABLE [edfi].[StudentCompetencyObjective] ADD CONSTRAINT [FK_StudentCompetencyObjective_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
