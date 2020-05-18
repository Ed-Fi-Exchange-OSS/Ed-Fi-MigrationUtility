-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationOrganizationInternationalAddress_PK] on [edfi].[EducationOrganizationInternationalAddress]'
GO
ALTER TABLE [edfi].[EducationOrganizationInternationalAddress] ADD CONSTRAINT [EducationOrganizationInternationalAddress_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [AddressTypeId])
GO
PRINT N'Creating index [FK_EducationOrganizationInternationalAddress_AddressType] on [edfi].[EducationOrganizationInternationalAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationInternationalAddress_AddressType] ON [edfi].[EducationOrganizationInternationalAddress] ([AddressTypeId])
GO
PRINT N'Creating index [FK_EducationOrganizationInternationalAddress_CountryDescriptor] on [edfi].[EducationOrganizationInternationalAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationInternationalAddress_CountryDescriptor] ON [edfi].[EducationOrganizationInternationalAddress] ([CountryDescriptorId])
GO
PRINT N'Creating index [FK_EducationOrganizationInternationalAddress_EducationOrganization] on [edfi].[EducationOrganizationInternationalAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationInternationalAddress_EducationOrganization] ON [edfi].[EducationOrganizationInternationalAddress] ([EducationOrganizationId])
GO

PRINT N'Adding constraints to [edfi].[EducationOrganizationInternationalAddress]'
GO
ALTER TABLE [edfi].[EducationOrganizationInternationalAddress] ADD CONSTRAINT [EducationOrganizationInternationalAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

