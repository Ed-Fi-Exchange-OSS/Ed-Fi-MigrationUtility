-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation] ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationDisabilityDesignation_DisabilityDesignationDescriptor] FOREIGN KEY ([DisabilityDesignationDescriptorId]) REFERENCES [edfi].[DisabilityDesignationDescriptor] ([DisabilityDesignationDescriptorId])
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation] ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationDisabilityDesignation_StudentEducationOrganizationAssociationDisability] FOREIGN KEY ([DisabilityDescriptorId], [EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociationDisability] ([DisabilityDescriptorId], [EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE
GO
