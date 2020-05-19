-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction_PK] on [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction]'
GO
ALTER TABLE [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction] ADD CONSTRAINT [PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [PostSecondaryEventCategoryTypeId], [EventDate], [MediumOfInstructionTypeId])
GO
PRINT N'Creating index [FK_PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction_MediumOfInstructionType] on [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction]'
GO
CREATE NONCLUSTERED INDEX [FK_PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction_MediumOfInstructionType] ON [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction] ([MediumOfInstructionTypeId])
GO
PRINT N'Creating index [FK_PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction_PostSecondaryEventPostSecondaryInstitution] on [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction]'
GO
CREATE NONCLUSTERED INDEX [FK_PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction_PostSecondaryEventPostSecondaryInstitution] ON [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction] ([StudentUSI], [PostSecondaryEventCategoryTypeId], [EventDate])
GO

PRINT N'Adding constraints to [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction]'
GO
ALTER TABLE [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction] ADD CONSTRAINT [PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

