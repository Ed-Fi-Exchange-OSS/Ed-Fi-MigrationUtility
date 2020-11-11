-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationOrganizationAddress_PK] on [edfi].[EducationOrganizationAddress]'
GO
ALTER TABLE [edfi].[EducationOrganizationAddress] ADD CONSTRAINT [EducationOrganizationAddress_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [AddressTypeId])
GO
PRINT N'Creating index [FK_EducationOrganizationAddress_AddressType] on [edfi].[EducationOrganizationAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationAddress_AddressType] ON [edfi].[EducationOrganizationAddress] ([AddressTypeId])
GO
PRINT N'Creating index [FK_EducationOrganizationAddress_EducationOrganization] on [edfi].[EducationOrganizationAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationAddress_EducationOrganization] ON [edfi].[EducationOrganizationAddress] ([EducationOrganizationId])
GO
PRINT N'Creating index [FK_EducationOrganizationAddress_StateAbbreviationType] on [edfi].[EducationOrganizationAddress]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationAddress_StateAbbreviationType] ON [edfi].[EducationOrganizationAddress] ([StateAbbreviationTypeId])
GO

PRINT N'Adding constraints to [edfi].[EducationOrganizationAddress]'
GO
ALTER TABLE [edfi].[EducationOrganizationAddress] ADD CONSTRAINT [EducationOrganizationAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

