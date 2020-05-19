-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ProviderProfitabilityDescriptor_PK] on [edfi].[ProviderProfitabilityDescriptor]'
GO
ALTER TABLE [edfi].[ProviderProfitabilityDescriptor] ADD CONSTRAINT [ProviderProfitabilityDescriptor_PK] PRIMARY KEY CLUSTERED  ([ProviderProfitabilityDescriptorId])
GO
