-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentLearningObjectiveStudentSectionAssociation_PK] on [edfi].[StudentLearningObjectiveStudentSectionAssociation]'
GO
ALTER TABLE [edfi].[StudentLearningObjectiveStudentSectionAssociation] ADD CONSTRAINT [StudentLearningObjectiveStudentSectionAssociation_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [LearningObjectiveId], [LocalCourseCode], [Namespace], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentLearningObjectiveStudentSectionAssociation_StudentSectionAssociation] on [edfi].[StudentLearningObjectiveStudentSectionAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentLearningObjectiveStudentSectionAssociation_StudentSectionAssociation] ON [edfi].[StudentLearningObjectiveStudentSectionAssociation] ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentLearningObjectiveStudentSectionAssociation_StudentLearningObjective] on [edfi].[StudentLearningObjectiveStudentSectionAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentLearningObjectiveStudentSectionAssociation_StudentLearningObjective] ON [edfi].[StudentLearningObjectiveStudentSectionAssociation] ([GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [LearningObjectiveId], [Namespace], [StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentLearningObjectiveStudentSectionAssociation]'
GO
ALTER TABLE [edfi].[StudentLearningObjectiveStudentSectionAssociation] ADD CONSTRAINT [StudentLearningObjectiveStudentSectionAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
