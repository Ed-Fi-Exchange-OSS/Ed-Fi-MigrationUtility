-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentDisability]'
GO
ALTER TABLE [edfi].[StudentDisability] ADD CONSTRAINT [FK_StudentDisability_DisabilityDescriptor] FOREIGN KEY ([DisabilityDescriptorId]) REFERENCES [edfi].[DisabilityDescriptor] ([DisabilityDescriptorId])
GO
ALTER TABLE [edfi].[StudentDisability] ADD CONSTRAINT [FK_StudentDisability_DisabilityDeterminationSourceType] FOREIGN KEY ([DisabilityDeterminationSourceTypeId]) REFERENCES [edfi].[DisabilityDeterminationSourceType] ([DisabilityDeterminationSourceTypeId])
GO
ALTER TABLE [edfi].[StudentDisability] ADD CONSTRAINT [FK_StudentDisability_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI]) ON DELETE CASCADE
GO
