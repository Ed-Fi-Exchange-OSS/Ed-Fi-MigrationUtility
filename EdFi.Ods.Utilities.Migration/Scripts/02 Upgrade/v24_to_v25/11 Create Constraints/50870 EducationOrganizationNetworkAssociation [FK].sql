-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[EducationOrganizationNetworkAssociation]'
GO
ALTER TABLE [edfi].[EducationOrganizationNetworkAssociation] ADD CONSTRAINT [FK_EducationOrganizationNetworkAssociation_EducationOrganization] FOREIGN KEY ([MemberEducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
ALTER TABLE [edfi].[EducationOrganizationNetworkAssociation] ADD CONSTRAINT [FK_EducationOrganizationNetworkAssociation_EducationOrganizationNetwork] FOREIGN KEY ([EducationOrganizationNetworkId]) REFERENCES [edfi].[EducationOrganizationNetwork] ([EducationOrganizationNetworkId])
GO
