-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction]'
GO
ALTER TABLE [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction] ADD CONSTRAINT [FK_PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction_MediumOfInstructionType] FOREIGN KEY ([MediumOfInstructionTypeId]) REFERENCES [edfi].[MediumOfInstructionType] ([MediumOfInstructionTypeId])
GO
ALTER TABLE [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction] ADD CONSTRAINT [FK_PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction_PostSecondaryEventPostSecondaryInstitution] FOREIGN KEY ([StudentUSI], [PostSecondaryEventCategoryTypeId], [EventDate]) REFERENCES [edfi].[PostSecondaryEventPostSecondaryInstitution] ([StudentUSI], [PostSecondaryEventCategoryTypeId], [EventDate]) ON DELETE CASCADE
GO
