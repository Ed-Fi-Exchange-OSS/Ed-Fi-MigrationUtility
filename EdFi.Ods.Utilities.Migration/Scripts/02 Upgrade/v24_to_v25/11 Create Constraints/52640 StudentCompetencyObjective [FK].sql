-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentCompetencyObjective]'
GO
ALTER TABLE [edfi].[StudentCompetencyObjective] ADD CONSTRAINT [FK_StudentCompetencyObjective_CompetencyLevelDescriptor] FOREIGN KEY ([CompetencyLevelDescriptorId]) REFERENCES [edfi].[CompetencyLevelDescriptor] ([CompetencyLevelDescriptorId])
GO
ALTER TABLE [edfi].[StudentCompetencyObjective] ADD CONSTRAINT [FK_StudentCompetencyObjective_CompetencyObjective] FOREIGN KEY ([Objective], [ObjectiveGradeLevelDescriptorId], [ObjectiveEducationOrganizationId]) REFERENCES [edfi].[CompetencyObjective] ([Objective], [ObjectiveGradeLevelDescriptorId], [EducationOrganizationId])
GO
ALTER TABLE [edfi].[StudentCompetencyObjective] ADD CONSTRAINT [FK_StudentCompetencyObjective_GradingPeriod] FOREIGN KEY ([GradingPeriodDescriptorId], [SchoolId], [GradingPeriodBeginDate]) REFERENCES [edfi].[GradingPeriod] ([GradingPeriodDescriptorId], [SchoolId], [BeginDate])
GO
ALTER TABLE [edfi].[StudentCompetencyObjective] ADD CONSTRAINT [FK_StudentCompetencyObjective_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
ALTER TABLE [edfi].[StudentCompetencyObjective] ADD CONSTRAINT [FK_StudentCompetencyObjective_StudentProgramAssociation] FOREIGN KEY ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate]) REFERENCES [edfi].[StudentProgramAssociation] ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate])
GO
ALTER TABLE [edfi].[StudentCompetencyObjective] ADD CONSTRAINT [FK_StudentCompetencyObjective_StudentSectionAssociation] FOREIGN KEY ([StudentUSI], [SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [UniqueSectionCode], [SequenceOfCourse], [SchoolYear], [TermDescriptorId], [BeginDate]) REFERENCES [edfi].[StudentSectionAssociation] ([StudentUSI], [SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [UniqueSectionCode], [SequenceOfCourse], [SchoolYear], [TermDescriptorId], [BeginDate]) ON UPDATE CASCADE
GO
