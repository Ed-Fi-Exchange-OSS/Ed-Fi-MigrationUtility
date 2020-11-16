-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[EducationOrganizationInternationalAddress]'
GO
ALTER TABLE [edfi].[EducationOrganizationInternationalAddress] ADD CONSTRAINT [FK_EducationOrganizationInternationalAddress_AddressType] FOREIGN KEY ([AddressTypeId]) REFERENCES [edfi].[AddressType] ([AddressTypeId])
GO
ALTER TABLE [edfi].[EducationOrganizationInternationalAddress] ADD CONSTRAINT [FK_EducationOrganizationInternationalAddress_CountryDescriptor] FOREIGN KEY ([CountryDescriptorId]) REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO
ALTER TABLE [edfi].[EducationOrganizationInternationalAddress] ADD CONSTRAINT [FK_EducationOrganizationInternationalAddress_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]) ON DELETE CASCADE
GO
