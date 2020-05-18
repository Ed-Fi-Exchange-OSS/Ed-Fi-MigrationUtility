-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [PostSecondaryInstitutionMediumOfInstruction_PK] on [edfi].[PostSecondaryInstitutionMediumOfInstruction]'
GO
ALTER TABLE [edfi].[PostSecondaryInstitutionMediumOfInstruction] ADD CONSTRAINT [PostSecondaryInstitutionMediumOfInstruction_PK] PRIMARY KEY CLUSTERED  ([MediumOfInstructionDescriptorId], [PostSecondaryInstitutionId])
GO

PRINT N'Creating index [FK_PostSecondaryInstitutionMediumOfInstruction_MediumOfInstructionDescriptor] on [edfi].[PostSecondaryInstitutionMediumOfInstruction]'
GO
CREATE NONCLUSTERED INDEX [FK_PostSecondaryInstitutionMediumOfInstruction_MediumOfInstructionDescriptor] ON [edfi].[PostSecondaryInstitutionMediumOfInstruction] ([MediumOfInstructionDescriptorId])
GO

PRINT N'Creating index [FK_PostSecondaryInstitutionMediumOfInstruction_PostSecondaryInstitution] on [edfi].[PostSecondaryInstitutionMediumOfInstruction]'
GO
CREATE NONCLUSTERED INDEX [FK_PostSecondaryInstitutionMediumOfInstruction_PostSecondaryInstitution] ON [edfi].[PostSecondaryInstitutionMediumOfInstruction] ([PostSecondaryInstitutionId])
GO

PRINT N'Adding constraints to [edfi].[PostSecondaryInstitutionMediumOfInstruction]'
GO
ALTER TABLE [edfi].[PostSecondaryInstitutionMediumOfInstruction] ADD CONSTRAINT [PostSecondaryInstitutionMediumOfInstruction_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
