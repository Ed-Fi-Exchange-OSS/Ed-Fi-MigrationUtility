-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffEducationOrganizationContactAssociationAddress]'
GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociationAddress] ADD CONSTRAINT [FK_StaffEducationOrganizationContactAssociationAddress_AddressTypeDescriptor] FOREIGN KEY ([AddressTypeDescriptorId]) REFERENCES [edfi].[AddressTypeDescriptor] ([AddressTypeDescriptorId])
GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociationAddress] ADD CONSTRAINT [FK_StaffEducationOrganizationContactAssociationAddress_StaffEducationOrganizationContactAssociation] FOREIGN KEY ([ContactTitle], [EducationOrganizationId], [StaffUSI]) REFERENCES [edfi].[StaffEducationOrganizationContactAssociation] ([ContactTitle], [EducationOrganizationId], [StaffUSI]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociationAddress] ADD CONSTRAINT [FK_StaffEducationOrganizationContactAssociationAddress_StateAbbreviationDescriptor] FOREIGN KEY ([StateAbbreviationDescriptorId]) REFERENCES [edfi].[StateAbbreviationDescriptor] ([StateAbbreviationDescriptorId])
GO
