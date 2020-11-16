-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[CommunityProvider]'
GO
ALTER TABLE [edfi].[CommunityProvider] ADD CONSTRAINT [FK_CommunityProvider_CommunityOrganization] FOREIGN KEY ([CommunityOrganizationId]) REFERENCES [edfi].[CommunityOrganization] ([CommunityOrganizationId])
GO
ALTER TABLE [edfi].[CommunityProvider] ADD CONSTRAINT [FK_CommunityProvider_EducationOrganization] FOREIGN KEY ([CommunityProviderId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[CommunityProvider] ADD CONSTRAINT [FK_CommunityProvider_ProviderCategoryDescriptor] FOREIGN KEY ([ProviderCategoryDescriptorId]) REFERENCES [edfi].[ProviderCategoryDescriptor] ([ProviderCategoryDescriptorId])
GO
ALTER TABLE [edfi].[CommunityProvider] ADD CONSTRAINT [FK_CommunityProvider_ProviderProfitabilityDescriptor] FOREIGN KEY ([ProviderProfitabilityDescriptorId]) REFERENCES [edfi].[ProviderProfitabilityDescriptor] ([ProviderProfitabilityDescriptorId])
GO
ALTER TABLE [edfi].[CommunityProvider] ADD CONSTRAINT [FK_CommunityProvider_ProviderStatusDescriptor] FOREIGN KEY ([ProviderStatusDescriptorId]) REFERENCES [edfi].[ProviderStatusDescriptor] ([ProviderStatusDescriptorId])
GO
