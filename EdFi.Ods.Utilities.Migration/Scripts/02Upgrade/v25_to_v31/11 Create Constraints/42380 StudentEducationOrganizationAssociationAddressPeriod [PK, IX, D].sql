-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationAddressPeriod_PK] on [edfi].[StudentEducationOrganizationAssociationAddressPeriod]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAddressPeriod] ADD CONSTRAINT [StudentEducationOrganizationAssociationAddressPeriod_PK] PRIMARY KEY CLUSTERED  ([AddressTypeDescriptorId], [BeginDate], [EducationOrganizationId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationAddressPeriod_StudentEducationOrganizationAssociationAddress] on [edfi].[StudentEducationOrganizationAssociationAddressPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationAddressPeriod_StudentEducationOrganizationAssociationAddress] ON [edfi].[StudentEducationOrganizationAssociationAddressPeriod] ([AddressTypeDescriptorId], [EducationOrganizationId], [StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationAddressPeriod]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationAddressPeriod] ADD CONSTRAINT [StudentEducationOrganizationAssociationAddressPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
