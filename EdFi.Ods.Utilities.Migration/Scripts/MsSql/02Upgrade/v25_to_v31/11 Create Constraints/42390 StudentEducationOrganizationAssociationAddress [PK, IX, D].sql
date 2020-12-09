-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationAddress_PK] on [edfi].[StudentEducationOrganizationAssociationAddress]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAddress] ADD CONSTRAINT [StudentEducationOrganizationAssociationAddress_PK] PRIMARY KEY CLUSTERED  ([AddressTypeDescriptorId], [EducationOrganizationId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationAddress_AddressTypeDescriptor] on [edfi].[StudentEducationOrganizationAssociationAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationAddress_AddressTypeDescriptor] ON [edfi].[StudentEducationOrganizationAssociationAddress] ([AddressTypeDescriptorId])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationAddress_StudentEducationOrganizationAssociation] on [edfi].[StudentEducationOrganizationAssociationAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationAddress_StudentEducationOrganizationAssociation] ON [edfi].[StudentEducationOrganizationAssociationAddress] ([EducationOrganizationId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationAddress_StateAbbreviationDescriptor] on [edfi].[StudentEducationOrganizationAssociationAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationAddress_StateAbbreviationDescriptor] ON [edfi].[StudentEducationOrganizationAssociationAddress] ([StateAbbreviationDescriptorId])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationAddress_LocaleDescriptor] on [edfi].[StudentEducationOrganizationAssociationAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationAddress_LocaleDescriptor] ON [edfi].[StudentEducationOrganizationAssociationAddress] ([LocaleDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationAddress]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAddress] ADD CONSTRAINT [StudentEducationOrganizationAssociationAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
