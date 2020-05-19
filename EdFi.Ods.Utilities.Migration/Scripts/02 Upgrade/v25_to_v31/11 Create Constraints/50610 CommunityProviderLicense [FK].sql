-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[CommunityProviderLicense]'
GO
ALTER TABLE [edfi].[CommunityProviderLicense] ADD CONSTRAINT [FK_CommunityProviderLicense_CommunityProvider] FOREIGN KEY ([CommunityProviderId]) REFERENCES [edfi].[CommunityProvider] ([CommunityProviderId])
GO
ALTER TABLE [edfi].[CommunityProviderLicense] ADD CONSTRAINT [FK_CommunityProviderLicense_LicenseStatusDescriptor] FOREIGN KEY ([LicenseStatusDescriptorId]) REFERENCES [edfi].[LicenseStatusDescriptor] ([LicenseStatusDescriptorId])
GO
ALTER TABLE [edfi].[CommunityProviderLicense] ADD CONSTRAINT [FK_CommunityProviderLicense_LicenseTypeDescriptor] FOREIGN KEY ([LicenseTypeDescriptorId]) REFERENCES [edfi].[LicenseTypeDescriptor] ([LicenseTypeDescriptorId])
GO
