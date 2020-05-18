-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentEducationOrganizationAssociationDisability]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisability] ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationDisability_DisabilityDescriptor] FOREIGN KEY ([DisabilityDescriptorId]) REFERENCES [edfi].[DisabilityDescriptor] ([DisabilityDescriptorId])
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisability] ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationDisability_DisabilityDeterminationSourceTypeDescriptor] FOREIGN KEY ([DisabilityDeterminationSourceTypeDescriptorId]) REFERENCES [edfi].[DisabilityDeterminationSourceTypeDescriptor] ([DisabilityDeterminationSourceTypeDescriptorId])
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisability] ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationDisability_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE
GO
