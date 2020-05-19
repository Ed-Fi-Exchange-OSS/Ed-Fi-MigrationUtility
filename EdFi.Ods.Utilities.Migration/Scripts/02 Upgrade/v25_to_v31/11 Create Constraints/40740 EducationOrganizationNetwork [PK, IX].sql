-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationOrganizationNetwork_PK] on [edfi].[EducationOrganizationNetwork]'
GO
ALTER TABLE [edfi].[EducationOrganizationNetwork] ADD CONSTRAINT [EducationOrganizationNetwork_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationNetworkId])
GO

PRINT N'Creating index [FK_EducationOrganizationNetwork_NetworkPurposeDescriptor] on [edfi].[EducationOrganizationNetwork]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationNetwork_NetworkPurposeDescriptor] ON [edfi].[EducationOrganizationNetwork] ([NetworkPurposeDescriptorId])
GO
