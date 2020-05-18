-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentLearningObjectiveGeneralStudentProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentLearningObjectiveGeneralStudentProgramAssociation] ADD CONSTRAINT [FK_StudentLearningObjectiveGeneralStudentProgramAssociation_GeneralStudentProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[GeneralStudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO
ALTER TABLE [edfi].[StudentLearningObjectiveGeneralStudentProgramAssociation] ADD CONSTRAINT [FK_StudentLearningObjectiveGeneralStudentProgramAssociation_StudentLearningObjective] FOREIGN KEY ([GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [LearningObjectiveId], [Namespace], [StudentUSI]) REFERENCES [edfi].[StudentLearningObjective] ([GradingPeriodDescriptorId], [GradingPeriodSchoolId], [GradingPeriodSchoolYear], [GradingPeriodSequence], [LearningObjectiveId], [Namespace], [StudentUSI]) ON DELETE CASCADE
GO
