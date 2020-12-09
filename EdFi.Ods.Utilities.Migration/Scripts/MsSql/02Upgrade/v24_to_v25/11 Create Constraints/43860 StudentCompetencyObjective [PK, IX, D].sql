-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentCompetencyObjective_PK] on [edfi].[StudentCompetencyObjective]'
GO
ALTER TABLE [edfi].[StudentCompetencyObjective] ADD CONSTRAINT [StudentCompetencyObjective_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [Objective], [ObjectiveGradeLevelDescriptorId], [ObjectiveEducationOrganizationId], [SchoolId], [GradingPeriodDescriptorId], [GradingPeriodBeginDate])
GO
PRINT N'Creating index [UX_StudentCompetencyObjective_Id] on [edfi].[StudentCompetencyObjective]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentCompetencyObjective_Id] ON [edfi].[StudentCompetencyObjective] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_StudentCompetencyObjective_StudentSectionAssociation] on [edfi].[StudentCompetencyObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCompetencyObjective_StudentSectionAssociation] ON [edfi].[StudentCompetencyObjective] ([BeginDate], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [SchoolId], [SchoolYear], [SequenceOfCourse], [StudentUSI], [TermDescriptorId], [UniqueSectionCode])
GO
PRINT N'Creating index [FK_StudentCompetencyObjective_CompetencyLevelDescriptor] on [edfi].[StudentCompetencyObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCompetencyObjective_CompetencyLevelDescriptor] ON [edfi].[StudentCompetencyObjective] ([CompetencyLevelDescriptorId])
GO
PRINT N'Creating index [FK_StudentCompetencyObjective_GradingPeriod] on [edfi].[StudentCompetencyObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCompetencyObjective_GradingPeriod] ON [edfi].[StudentCompetencyObjective] ([GradingPeriodDescriptorId], [SchoolId], [GradingPeriodBeginDate])
GO
PRINT N'Creating index [FK_StudentCompetencyObjective_CompetencyObjective] on [edfi].[StudentCompetencyObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCompetencyObjective_CompetencyObjective] ON [edfi].[StudentCompetencyObjective] ([Objective], [ObjectiveGradeLevelDescriptorId], [ObjectiveEducationOrganizationId])
GO
PRINT N'Creating index [FK_StudentCompetencyObjective_Student] on [edfi].[StudentCompetencyObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCompetencyObjective_Student] ON [edfi].[StudentCompetencyObjective] ([StudentUSI])
GO
PRINT N'Creating index [FK_StudentCompetencyObjective_StudentProgramAssociation] on [edfi].[StudentCompetencyObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCompetencyObjective_StudentProgramAssociation] ON [edfi].[StudentCompetencyObjective] ([StudentUSI], [EducationOrganizationId], [ProgramTypeId], [ProgramName], [ProgramEducationOrganizationId], [BeginDate])
GO

PRINT N'Adding constraints to [edfi].[StudentCompetencyObjective]'
GO
ALTER TABLE [edfi].[StudentCompetencyObjective] ADD CONSTRAINT [StudentCompetencyObjective_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentCompetencyObjective] ADD CONSTRAINT [StudentCompetencyObjective_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentCompetencyObjective] ADD CONSTRAINT [StudentCompetencyObjective_DF_Id] DEFAULT (newid()) FOR [Id]
GO

