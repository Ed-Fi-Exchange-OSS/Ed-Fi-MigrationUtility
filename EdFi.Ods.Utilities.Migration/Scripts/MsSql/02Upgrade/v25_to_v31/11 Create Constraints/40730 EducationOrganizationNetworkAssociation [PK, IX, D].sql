-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationOrganizationNetworkAssociation_PK] on [edfi].[EducationOrganizationNetworkAssociation]'
GO
ALTER TABLE [edfi].[EducationOrganizationNetworkAssociation] ADD CONSTRAINT [EducationOrganizationNetworkAssociation_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationNetworkId], [MemberEducationOrganizationId])
GO

PRINT N'Creating index [UX_EducationOrganizationNetworkAssociation_Id] on [edfi].[EducationOrganizationNetworkAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_EducationOrganizationNetworkAssociation_Id] ON [edfi].[EducationOrganizationNetworkAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_EducationOrganizationNetworkAssociation_EducationOrganizationNetwork] on [edfi].[EducationOrganizationNetworkAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationNetworkAssociation_EducationOrganizationNetwork] ON [edfi].[EducationOrganizationNetworkAssociation] ([EducationOrganizationNetworkId])
GO

PRINT N'Creating index [FK_EducationOrganizationNetworkAssociation_EducationOrganization] on [edfi].[EducationOrganizationNetworkAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationNetworkAssociation_EducationOrganization] ON [edfi].[EducationOrganizationNetworkAssociation] ([MemberEducationOrganizationId])
GO

PRINT N'Adding constraints to [edfi].[EducationOrganizationNetworkAssociation]'
GO
ALTER TABLE [edfi].[EducationOrganizationNetworkAssociation] ADD CONSTRAINT [EducationOrganizationNetworkAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[EducationOrganizationNetworkAssociation] ADD CONSTRAINT [EducationOrganizationNetworkAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[EducationOrganizationNetworkAssociation] ADD CONSTRAINT [EducationOrganizationNetworkAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
