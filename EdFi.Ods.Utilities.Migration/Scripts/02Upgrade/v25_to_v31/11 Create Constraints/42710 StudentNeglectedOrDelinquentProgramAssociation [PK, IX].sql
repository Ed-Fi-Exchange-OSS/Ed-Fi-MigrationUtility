-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentNeglectedOrDelinquentProgramAssociation_PK] on [edfi].[StudentNeglectedOrDelinquentProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentNeglectedOrDelinquentProgramAssociation] ADD CONSTRAINT [StudentNeglectedOrDelinquentProgramAssociation_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentNeglectedOrDelinquentProgramAssociation_ProgressLevelDescriptor] on [edfi].[StudentNeglectedOrDelinquentProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentNeglectedOrDelinquentProgramAssociation_ProgressLevelDescriptor] ON [edfi].[StudentNeglectedOrDelinquentProgramAssociation] ([ELAProgressLevelDescriptorId])
GO

PRINT N'Creating index [FK_StudentNeglectedOrDelinquentProgramAssociation_ProgressLevelDescriptor1] on [edfi].[StudentNeglectedOrDelinquentProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentNeglectedOrDelinquentProgramAssociation_ProgressLevelDescriptor1] ON [edfi].[StudentNeglectedOrDelinquentProgramAssociation] ([MathematicsProgressLevelDescriptorId])
GO

PRINT N'Creating index [FK_StudentNeglectedOrDelinquentProgramAssociation_NeglectedOrDelinquentProgramDescriptor] on [edfi].[StudentNeglectedOrDelinquentProgramAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentNeglectedOrDelinquentProgramAssociation_NeglectedOrDelinquentProgramDescriptor] ON [edfi].[StudentNeglectedOrDelinquentProgramAssociation] ([NeglectedOrDelinquentProgramDescriptorId])
GO
