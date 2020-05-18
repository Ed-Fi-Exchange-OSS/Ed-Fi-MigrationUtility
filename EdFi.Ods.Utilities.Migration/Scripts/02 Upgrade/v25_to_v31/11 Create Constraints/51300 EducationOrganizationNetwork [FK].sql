-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[EducationOrganizationNetwork]'
GO
ALTER TABLE [edfi].[EducationOrganizationNetwork] ADD CONSTRAINT [FK_EducationOrganizationNetwork_EducationOrganization] FOREIGN KEY ([EducationOrganizationNetworkId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[EducationOrganizationNetwork] ADD CONSTRAINT [FK_EducationOrganizationNetwork_NetworkPurposeDescriptor] FOREIGN KEY ([NetworkPurposeDescriptorId]) REFERENCES [edfi].[NetworkPurposeDescriptor] ([NetworkPurposeDescriptorId])
GO
