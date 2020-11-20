-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CommunityProvider_PK] on [edfi].[CommunityProvider]'
GO
ALTER TABLE [edfi].[CommunityProvider] ADD CONSTRAINT [CommunityProvider_PK] PRIMARY KEY CLUSTERED  ([CommunityProviderId])
GO

PRINT N'Creating index [FK_CommunityProvider_CommunityOrganization] on [edfi].[CommunityProvider]'
GO
CREATE NONCLUSTERED INDEX [FK_CommunityProvider_CommunityOrganization] ON [edfi].[CommunityProvider] ([CommunityOrganizationId])
GO

PRINT N'Creating index [FK_CommunityProvider_ProviderCategoryDescriptor] on [edfi].[CommunityProvider]'
GO
CREATE NONCLUSTERED INDEX [FK_CommunityProvider_ProviderCategoryDescriptor] ON [edfi].[CommunityProvider] ([ProviderCategoryDescriptorId])
GO

PRINT N'Creating index [FK_CommunityProvider_ProviderProfitabilityDescriptor] on [edfi].[CommunityProvider]'
GO
CREATE NONCLUSTERED INDEX [FK_CommunityProvider_ProviderProfitabilityDescriptor] ON [edfi].[CommunityProvider] ([ProviderProfitabilityDescriptorId])
GO

PRINT N'Creating index [FK_CommunityProvider_ProviderStatusDescriptor] on [edfi].[CommunityProvider]'
GO
CREATE NONCLUSTERED INDEX [FK_CommunityProvider_ProviderStatusDescriptor] ON [edfi].[CommunityProvider] ([ProviderStatusDescriptorId])
GO
