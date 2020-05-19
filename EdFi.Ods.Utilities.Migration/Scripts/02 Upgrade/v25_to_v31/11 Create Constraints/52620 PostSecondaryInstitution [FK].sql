-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[PostSecondaryInstitution]'
GO
ALTER TABLE [edfi].[PostSecondaryInstitution] ADD CONSTRAINT [FK_PostSecondaryInstitution_AdministrativeFundingControlDescriptor] FOREIGN KEY ([AdministrativeFundingControlDescriptorId]) REFERENCES [edfi].[AdministrativeFundingControlDescriptor] ([AdministrativeFundingControlDescriptorId])
GO
ALTER TABLE [edfi].[PostSecondaryInstitution] ADD CONSTRAINT [FK_PostSecondaryInstitution_EducationOrganization] FOREIGN KEY ([PostSecondaryInstitutionId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[PostSecondaryInstitution] ADD CONSTRAINT [FK_PostSecondaryInstitution_PostSecondaryInstitutionLevelDescriptor] FOREIGN KEY ([PostSecondaryInstitutionLevelDescriptorId]) REFERENCES [edfi].[PostSecondaryInstitutionLevelDescriptor] ([PostSecondaryInstitutionLevelDescriptorId])
GO
