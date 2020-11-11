-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentNeglectedOrDelinquentProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentNeglectedOrDelinquentProgramAssociation] ADD CONSTRAINT [FK_StudentNeglectedOrDelinquentProgramAssociation_GeneralStudentProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[GeneralStudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[StudentNeglectedOrDelinquentProgramAssociation] ADD CONSTRAINT [FK_StudentNeglectedOrDelinquentProgramAssociation_NeglectedOrDelinquentProgramDescriptor] FOREIGN KEY ([NeglectedOrDelinquentProgramDescriptorId]) REFERENCES [edfi].[NeglectedOrDelinquentProgramDescriptor] ([NeglectedOrDelinquentProgramDescriptorId])
GO
ALTER TABLE [edfi].[StudentNeglectedOrDelinquentProgramAssociation] ADD CONSTRAINT [FK_StudentNeglectedOrDelinquentProgramAssociation_ProgressLevelDescriptor] FOREIGN KEY ([ELAProgressLevelDescriptorId]) REFERENCES [edfi].[ProgressLevelDescriptor] ([ProgressLevelDescriptorId])
GO
ALTER TABLE [edfi].[StudentNeglectedOrDelinquentProgramAssociation] ADD CONSTRAINT [FK_StudentNeglectedOrDelinquentProgramAssociation_ProgressLevelDescriptor1] FOREIGN KEY ([MathematicsProgressLevelDescriptorId]) REFERENCES [edfi].[ProgressLevelDescriptor] ([ProgressLevelDescriptorId])
GO
