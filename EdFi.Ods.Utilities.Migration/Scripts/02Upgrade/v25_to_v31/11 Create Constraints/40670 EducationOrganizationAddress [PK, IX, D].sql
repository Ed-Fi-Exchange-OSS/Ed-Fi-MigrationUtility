-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationOrganizationAddress_PK] on [edfi].[EducationOrganizationAddress]'
GO
ALTER TABLE [edfi].[EducationOrganizationAddress] ADD CONSTRAINT [EducationOrganizationAddress_PK] PRIMARY KEY CLUSTERED  ([AddressTypeDescriptorId], [EducationOrganizationId])
GO

PRINT N'Creating index [FK_EducationOrganizationAddress_AddressTypeDescriptor] on [edfi].[EducationOrganizationAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationAddress_AddressTypeDescriptor] ON [edfi].[EducationOrganizationAddress] ([AddressTypeDescriptorId])
GO

PRINT N'Creating index [FK_EducationOrganizationAddress_EducationOrganization] on [edfi].[EducationOrganizationAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationAddress_EducationOrganization] ON [edfi].[EducationOrganizationAddress] ([EducationOrganizationId])
GO

PRINT N'Creating index [FK_EducationOrganizationAddress_StateAbbreviationDescriptor] on [edfi].[EducationOrganizationAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationAddress_StateAbbreviationDescriptor] ON [edfi].[EducationOrganizationAddress] ([StateAbbreviationDescriptorId])
GO

PRINT N'Creating index [FK_EducationOrganizationAddress_LocaleDescriptor] on [edfi].[EducationOrganizationAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationAddress_LocaleDescriptor] ON [edfi].[EducationOrganizationAddress] ([LocaleDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[EducationOrganizationAddress]'
GO
ALTER TABLE [edfi].[EducationOrganizationAddress] ADD CONSTRAINT [EducationOrganizationAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
