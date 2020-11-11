-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentLearningObjective_PK] on [edfi].[StudentLearningObjective]'
GO
ALTER TABLE [edfi].[StudentLearningObjective] ADD CONSTRAINT [StudentLearningObjective_PK] PRIMARY KEY CLUSTERED  ([GradingPeriodBeginDate], [GradingPeriodDescriptorId], [LearningObjectiveId], [Namespace], [SchoolId], [StudentUSI])
GO
PRINT N'Creating index [UX_StudentLearningObjective_Id] on [edfi].[StudentLearningObjective]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentLearningObjective_Id] ON [edfi].[StudentLearningObjective] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_StudentLearningObjective_StudentProgramAssociation] on [edfi].[StudentLearningObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentLearningObjective_StudentProgramAssociation] ON [edfi].[StudentLearningObjective] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeId], [StudentUSI])
GO
PRINT N'Creating index [FK_StudentLearningObjective_CompetencyLevelDescriptor] on [edfi].[StudentLearningObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentLearningObjective_CompetencyLevelDescriptor] ON [edfi].[StudentLearningObjective] ([CompetencyLevelDescriptorId])
GO
PRINT N'Creating index [FK_StudentLearningObjective_GradingPeriod] on [edfi].[StudentLearningObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentLearningObjective_GradingPeriod] ON [edfi].[StudentLearningObjective] ([GradingPeriodDescriptorId], [SchoolId], [GradingPeriodBeginDate])
GO
PRINT N'Creating index [FK_StudentLearningObjective_LearningObjective] on [edfi].[StudentLearningObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentLearningObjective_LearningObjective] ON [edfi].[StudentLearningObjective] ([LearningObjectiveId], [Namespace])
GO
PRINT N'Creating index [FK_StudentLearningObjective_Student] on [edfi].[StudentLearningObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentLearningObjective_Student] ON [edfi].[StudentLearningObjective] ([StudentUSI])
GO
PRINT N'Creating index [FK_StudentLearningObjective_StudentSectionAssociation] on [edfi].[StudentLearningObjective]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentLearningObjective_StudentSectionAssociation] ON [edfi].[StudentLearningObjective] ([StudentUSI], [SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [UniqueSectionCode], [SequenceOfCourse], [SchoolYear], [TermDescriptorId], [StudentSectionAssociationBeginDate])
GO

PRINT N'Adding constraints to [edfi].[StudentLearningObjective]'
GO
ALTER TABLE [edfi].[StudentLearningObjective] ADD CONSTRAINT [StudentLearningObjective_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentLearningObjective] ADD CONSTRAINT [StudentLearningObjective_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentLearningObjective] ADD CONSTRAINT [StudentLearningObjective_DF_Id] DEFAULT (newid()) FOR [Id]
GO

