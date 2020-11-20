-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentLearningObjectiveGeneralStudentProgramAssociation_PK] on [edfi].[StudentLearningObjectiveGeneralStudentProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentLearningObjectiveGeneralStudentProgramAssociation] ADD CONSTRAINT [StudentLearningObjectiveGeneralStudentProgramAssociation_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [LearningObjectiveId], [Namespace], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentLearningObjectiveGeneralStudentProgramAssociation_GeneralStudentProgramAssociation] on [edfi].[StudentLearningObjectiveGeneralStudentProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentLearningObjectiveGeneralStudentProgramAssociation_GeneralStudentProgramAssociation] ON [edfi].[StudentLearningObjectiveGeneralStudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentLearningObjectiveGeneralStudentProgramAssociation_StudentLearningObjective] on [edfi].[StudentLearningObjectiveGeneralStudentProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentLearningObjectiveGeneralStudentProgramAssociation_StudentLearningObjective] ON [edfi].[StudentLearningObjectiveGeneralStudentProgramAssociation] ([GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [LearningObjectiveId], [Namespace], [StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentLearningObjectiveGeneralStudentProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentLearningObjectiveGeneralStudentProgramAssociation] ADD CONSTRAINT [StudentLearningObjectiveGeneralStudentProgramAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
