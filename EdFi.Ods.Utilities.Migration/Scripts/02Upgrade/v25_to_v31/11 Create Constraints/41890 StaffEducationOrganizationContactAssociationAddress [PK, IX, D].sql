-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffEducationOrganizationContactAssociationAddress_PK] on [edfi].[StaffEducationOrganizationContactAssociationAddress]'
GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociationAddress] ADD CONSTRAINT [StaffEducationOrganizationContactAssociationAddress_PK] PRIMARY KEY CLUSTERED  ([ContactTitle], [EducationOrganizationId], [StaffUSI])
GO

PRINT N'Creating index [FK_StaffEducationOrganizationContactAssociationAddress_AddressTypeDescriptor] on [edfi].[StaffEducationOrganizationContactAssociationAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationContactAssociationAddress_AddressTypeDescriptor] ON [edfi].[StaffEducationOrganizationContactAssociationAddress] ([AddressTypeDescriptorId])
GO

PRINT N'Creating index [FK_StaffEducationOrganizationContactAssociationAddress_StateAbbreviationDescriptor] on [edfi].[StaffEducationOrganizationContactAssociationAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationContactAssociationAddress_StateAbbreviationDescriptor] ON [edfi].[StaffEducationOrganizationContactAssociationAddress] ([StateAbbreviationDescriptorId])
GO

PRINT N'Creating index [FK_StaffEducationOrganizationContactAssociationAddress_LocaleDescriptor] on [edfi].[StaffEducationOrganizationContactAssociationAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationContactAssociationAddress_LocaleDescriptor] ON [edfi].[StaffEducationOrganizationContactAssociationAddress] ([LocaleDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StaffEducationOrganizationContactAssociationAddress]'
GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociationAddress] ADD CONSTRAINT [StaffEducationOrganizationContactAssociationAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
