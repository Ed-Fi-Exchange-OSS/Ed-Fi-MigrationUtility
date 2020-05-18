-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationInternationalAddress_PK] on [edfi].[StudentEducationOrganizationAssociationInternationalAddress]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationInternationalAddress] ADD CONSTRAINT [StudentEducationOrganizationAssociationInternationalAddress_PK] PRIMARY KEY CLUSTERED  ([AddressTypeDescriptorId], [EducationOrganizationId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationInternationalAddress_AddressTypeDescriptor] on [edfi].[StudentEducationOrganizationAssociationInternationalAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationInternationalAddress_AddressTypeDescriptor] ON [edfi].[StudentEducationOrganizationAssociationInternationalAddress] ([AddressTypeDescriptorId])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationInternationalAddress_CountryDescriptor] on [edfi].[StudentEducationOrganizationAssociationInternationalAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationInternationalAddress_CountryDescriptor] ON [edfi].[StudentEducationOrganizationAssociationInternationalAddress] ([CountryDescriptorId])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationInternationalAddress_StudentEducationOrganizationAssociation] on [edfi].[StudentEducationOrganizationAssociationInternationalAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationInternationalAddress_StudentEducationOrganizationAssociation] ON [edfi].[StudentEducationOrganizationAssociationInternationalAddress] ([EducationOrganizationId], [StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationInternationalAddress]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationInternationalAddress] ADD CONSTRAINT [StudentEducationOrganizationAssociationInternationalAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
