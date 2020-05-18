-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentLearningObjectiveStudentSectionAssociation]'
GO
ALTER TABLE [edfi].[StudentLearningObjectiveStudentSectionAssociation] ADD CONSTRAINT [FK_StudentLearningObjectiveStudentSectionAssociation_StudentLearningObjective] FOREIGN KEY ([GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [LearningObjectiveId], [Namespace], [StudentUSI]) REFERENCES [edfi].[StudentLearningObjective] ([GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [LearningObjectiveId], [Namespace], [StudentUSI]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[StudentLearningObjectiveStudentSectionAssociation] ADD CONSTRAINT [FK_StudentLearningObjectiveStudentSectionAssociation_StudentSectionAssociation] FOREIGN KEY ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI]) REFERENCES [edfi].[StudentSectionAssociation] ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI]) ON UPDATE CASCADE
GO
