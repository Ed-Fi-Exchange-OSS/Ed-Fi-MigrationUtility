-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationOrganizationPeerAssociation_PK] on [edfi].[EducationOrganizationPeerAssociation]'
GO
ALTER TABLE [edfi].[EducationOrganizationPeerAssociation] ADD CONSTRAINT [EducationOrganizationPeerAssociation_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [PeerEducationOrganizationId])
GO

PRINT N'Creating index [UX_EducationOrganizationPeerAssociation_Id] on [edfi].[EducationOrganizationPeerAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_EducationOrganizationPeerAssociation_Id] ON [edfi].[EducationOrganizationPeerAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_EducationOrganizationPeerAssociation_EducationOrganization] on [edfi].[EducationOrganizationPeerAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationPeerAssociation_EducationOrganization] ON [edfi].[EducationOrganizationPeerAssociation] ([EducationOrganizationId])
GO

PRINT N'Creating index [FK_EducationOrganizationPeerAssociation_EducationOrganization1] on [edfi].[EducationOrganizationPeerAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationPeerAssociation_EducationOrganization1] ON [edfi].[EducationOrganizationPeerAssociation] ([PeerEducationOrganizationId])
GO

PRINT N'Adding constraints to [edfi].[EducationOrganizationPeerAssociation]'
GO
ALTER TABLE [edfi].[EducationOrganizationPeerAssociation] ADD CONSTRAINT [EducationOrganizationPeerAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[EducationOrganizationPeerAssociation] ADD CONSTRAINT [EducationOrganizationPeerAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[EducationOrganizationPeerAssociation] ADD CONSTRAINT [EducationOrganizationPeerAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
