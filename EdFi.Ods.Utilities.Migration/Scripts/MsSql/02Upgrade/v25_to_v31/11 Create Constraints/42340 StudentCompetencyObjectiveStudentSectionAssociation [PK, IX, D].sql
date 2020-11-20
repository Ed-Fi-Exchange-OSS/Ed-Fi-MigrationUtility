-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentCompetencyObjectiveStudentSectionAssociation_PK] on [edfi].[StudentCompetencyObjectiveStudentSectionAssociation]'
GO
ALTER TABLE [edfi].[StudentCompetencyObjectiveStudentSectionAssociation] ADD CONSTRAINT [StudentCompetencyObjectiveStudentSectionAssociation_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [LocalCourseCode], [Objective], [ObjectiveEducationOrganizationId], [ObjectiveGradeLevelDescriptorId], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentCompetencyObjectiveStudentSectionAssociation_StudentSectionAssociation] on [edfi].[StudentCompetencyObjectiveStudentSectionAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCompetencyObjectiveStudentSectionAssociation_StudentSectionAssociation] ON [edfi].[StudentCompetencyObjectiveStudentSectionAssociation] ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentCompetencyObjectiveStudentSectionAssociation_StudentCompetencyObjective] on [edfi].[StudentCompetencyObjectiveStudentSectionAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCompetencyObjectiveStudentSectionAssociation_StudentCompetencyObjective] ON [edfi].[StudentCompetencyObjectiveStudentSectionAssociation] ([GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [Objective], [ObjectiveEducationOrganizationId], [ObjectiveGradeLevelDescriptorId], [StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentCompetencyObjectiveStudentSectionAssociation]'
GO
ALTER TABLE [edfi].[StudentCompetencyObjectiveStudentSectionAssociation] ADD CONSTRAINT [StudentCompetencyObjectiveStudentSectionAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
