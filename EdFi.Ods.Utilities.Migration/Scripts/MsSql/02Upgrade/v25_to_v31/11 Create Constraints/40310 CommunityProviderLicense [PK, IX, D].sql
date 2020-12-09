-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CommunityProviderLicense_PK] on [edfi].[CommunityProviderLicense]'
GO
ALTER TABLE [edfi].[CommunityProviderLicense] ADD CONSTRAINT [CommunityProviderLicense_PK] PRIMARY KEY CLUSTERED  ([CommunityProviderId], [LicenseIdentifier], [LicensingOrganization])
GO

PRINT N'Creating index [UX_CommunityProviderLicense_Id] on [edfi].[CommunityProviderLicense]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CommunityProviderLicense_Id] ON [edfi].[CommunityProviderLicense] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_CommunityProviderLicense_CommunityProvider] on [edfi].[CommunityProviderLicense]'
GO
CREATE NONCLUSTERED INDEX [FK_CommunityProviderLicense_CommunityProvider] ON [edfi].[CommunityProviderLicense] ([CommunityProviderId])
GO

PRINT N'Creating index [FK_CommunityProviderLicense_LicenseStatusDescriptor] on [edfi].[CommunityProviderLicense]'
GO
CREATE NONCLUSTERED INDEX [FK_CommunityProviderLicense_LicenseStatusDescriptor] ON [edfi].[CommunityProviderLicense] ([LicenseStatusDescriptorId])
GO

PRINT N'Creating index [FK_CommunityProviderLicense_LicenseTypeDescriptor] on [edfi].[CommunityProviderLicense]'
GO
CREATE NONCLUSTERED INDEX [FK_CommunityProviderLicense_LicenseTypeDescriptor] ON [edfi].[CommunityProviderLicense] ([LicenseTypeDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[CommunityProviderLicense]'
GO
ALTER TABLE [edfi].[CommunityProviderLicense] ADD CONSTRAINT [CommunityProviderLicense_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CommunityProviderLicense] ADD CONSTRAINT [CommunityProviderLicense_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CommunityProviderLicense] ADD CONSTRAINT [CommunityProviderLicense_DF_Id] DEFAULT (newid()) FOR [Id]
GO
