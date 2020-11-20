-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[PostSecondaryInstitutionMediumOfInstruction]'
GO
ALTER TABLE [edfi].[PostSecondaryInstitutionMediumOfInstruction] ADD CONSTRAINT [FK_PostSecondaryInstitutionMediumOfInstruction_MediumOfInstructionDescriptor] FOREIGN KEY ([MediumOfInstructionDescriptorId]) REFERENCES [edfi].[MediumOfInstructionDescriptor] ([MediumOfInstructionDescriptorId])
GO
ALTER TABLE [edfi].[PostSecondaryInstitutionMediumOfInstruction] ADD CONSTRAINT [FK_PostSecondaryInstitutionMediumOfInstruction_PostSecondaryInstitution] FOREIGN KEY ([PostSecondaryInstitutionId]) REFERENCES [edfi].[PostSecondaryInstitution] ([PostSecondaryInstitutionId]) ON DELETE CASCADE
GO
