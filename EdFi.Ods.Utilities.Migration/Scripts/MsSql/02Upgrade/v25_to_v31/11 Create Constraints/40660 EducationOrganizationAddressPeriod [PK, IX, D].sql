-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationOrganizationAddressPeriod_PK] on [edfi].[EducationOrganizationAddressPeriod]'
GO
ALTER TABLE [edfi].[EducationOrganizationAddressPeriod] ADD CONSTRAINT [EducationOrganizationAddressPeriod_PK] PRIMARY KEY CLUSTERED  ([AddressTypeDescriptorId], [BeginDate], [EducationOrganizationId])
GO

PRINT N'Creating index [FK_EducationOrganizationAddressPeriod_EducationOrganizationAddress] on [edfi].[EducationOrganizationAddressPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationAddressPeriod_EducationOrganizationAddress] ON [edfi].[EducationOrganizationAddressPeriod] ([AddressTypeDescriptorId], [EducationOrganizationId])
GO

PRINT N'Adding constraints to [edfi].[EducationOrganizationAddressPeriod]'
GO
ALTER TABLE [edfi].[EducationOrganizationAddressPeriod] ADD CONSTRAINT [EducationOrganizationAddressPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
