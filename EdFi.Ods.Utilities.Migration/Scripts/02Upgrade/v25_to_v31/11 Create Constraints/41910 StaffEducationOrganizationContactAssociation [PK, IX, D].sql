-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffEducationOrganizationContactAssociation_PK] on [edfi].[StaffEducationOrganizationContactAssociation]'
GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociation] ADD CONSTRAINT [StaffEducationOrganizationContactAssociation_PK] PRIMARY KEY CLUSTERED  ([ContactTitle], [EducationOrganizationId], [StaffUSI])
GO

PRINT N'Creating index [UX_StaffEducationOrganizationContactAssociation_Id] on [edfi].[StaffEducationOrganizationContactAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StaffEducationOrganizationContactAssociation_Id] ON [edfi].[StaffEducationOrganizationContactAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_StaffEducationOrganizationContactAssociation_ContactTypeDescriptor] on [edfi].[StaffEducationOrganizationContactAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationContactAssociation_ContactTypeDescriptor] ON [edfi].[StaffEducationOrganizationContactAssociation] ([ContactTypeDescriptorId])
GO

PRINT N'Creating index [FK_StaffEducationOrganizationContactAssociation_EducationOrganization] on [edfi].[StaffEducationOrganizationContactAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationContactAssociation_EducationOrganization] ON [edfi].[StaffEducationOrganizationContactAssociation] ([EducationOrganizationId])
GO

PRINT N'Creating index [FK_StaffEducationOrganizationContactAssociation_Staff] on [edfi].[StaffEducationOrganizationContactAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationContactAssociation_Staff] ON [edfi].[StaffEducationOrganizationContactAssociation] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffEducationOrganizationContactAssociation]'
GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociation] ADD CONSTRAINT [StaffEducationOrganizationContactAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociation] ADD CONSTRAINT [StaffEducationOrganizationContactAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociation] ADD CONSTRAINT [StaffEducationOrganizationContactAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
