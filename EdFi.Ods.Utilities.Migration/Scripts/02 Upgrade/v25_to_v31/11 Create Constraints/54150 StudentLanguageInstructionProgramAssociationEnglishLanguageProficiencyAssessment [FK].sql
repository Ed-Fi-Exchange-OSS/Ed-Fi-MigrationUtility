-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment]'
GO
ALTER TABLE [edfi].[StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment] ADD CONSTRAINT [FK_StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment_MonitoredDescriptor] FOREIGN KEY ([MonitoredDescriptorId]) REFERENCES [edfi].[MonitoredDescriptor] ([MonitoredDescriptorId])
GO
ALTER TABLE [edfi].[StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment] ADD CONSTRAINT [FK_StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment_ParticipationDescriptor] FOREIGN KEY ([ParticipationDescriptorId]) REFERENCES [edfi].[ParticipationDescriptor] ([ParticipationDescriptorId])
GO
ALTER TABLE [edfi].[StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment] ADD CONSTRAINT [FK_StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment_ProficiencyDescriptor] FOREIGN KEY ([ProficiencyDescriptorId]) REFERENCES [edfi].[ProficiencyDescriptor] ([ProficiencyDescriptorId])
GO
ALTER TABLE [edfi].[StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment] ADD CONSTRAINT [FK_StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment_ProgressDescriptor] FOREIGN KEY ([ProgressDescriptorId]) REFERENCES [edfi].[ProgressDescriptor] ([ProgressDescriptorId])
GO
ALTER TABLE [edfi].[StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment] ADD CONSTRAINT [FK_StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment_SchoolYearType] FOREIGN KEY ([SchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO
ALTER TABLE [edfi].[StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment] ADD CONSTRAINT [FK_StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment_StudentLanguageInstructionProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[StudentLanguageInstructionProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE
GO
