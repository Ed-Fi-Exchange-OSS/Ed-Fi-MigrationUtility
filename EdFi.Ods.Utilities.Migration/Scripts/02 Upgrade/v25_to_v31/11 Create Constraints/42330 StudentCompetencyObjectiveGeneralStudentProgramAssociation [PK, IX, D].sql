-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentCompetencyObjectiveGeneralStudentProgramAssociation_PK] on [edfi].[StudentCompetencyObjectiveGeneralStudentProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentCompetencyObjectiveGeneralStudentProgramAssociation] ADD CONSTRAINT [StudentCompetencyObjectiveGeneralStudentProgramAssociation_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [Objective], [ObjectiveEducationOrganizationId], [ObjectiveGradeLevelDescriptorId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentCompetencyObjectiveGeneralStudentProgramAssociation_GeneralStudentProgramAssociation] on [edfi].[StudentCompetencyObjectiveGeneralStudentProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCompetencyObjectiveGeneralStudentProgramAssociation_GeneralStudentProgramAssociation] ON [edfi].[StudentCompetencyObjectiveGeneralStudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentCompetencyObjectiveGeneralStudentProgramAssociation_StudentCompetencyObjective] on [edfi].[StudentCompetencyObjectiveGeneralStudentProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentCompetencyObjectiveGeneralStudentProgramAssociation_StudentCompetencyObjective] ON [edfi].[StudentCompetencyObjectiveGeneralStudentProgramAssociation] ([GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [Objective], [ObjectiveEducationOrganizationId], [ObjectiveGradeLevelDescriptorId], [StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentCompetencyObjectiveGeneralStudentProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentCompetencyObjectiveGeneralStudentProgramAssociation] ADD CONSTRAINT [StudentCompetencyObjectiveGeneralStudentProgramAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
