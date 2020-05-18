-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffEducationOrganizationContactAssociationAddressPeriod_PK] on [edfi].[StaffEducationOrganizationContactAssociationAddressPeriod]'
GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociationAddressPeriod] ADD CONSTRAINT [StaffEducationOrganizationContactAssociationAddressPeriod_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [ContactTitle], [EducationOrganizationId], [StaffUSI])
GO

PRINT N'Creating index [FK_StaffEducationOrganizationContactAssociationAddressPeriod_StaffEducationOrganizationContactAssociationAddress] on [edfi].[StaffEducationOrganizationContactAssociationAddressPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationContactAssociationAddressPeriod_StaffEducationOrganizationContactAssociationAddress] ON [edfi].[StaffEducationOrganizationContactAssociationAddressPeriod] ([ContactTitle], [EducationOrganizationId], [StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffEducationOrganizationContactAssociationAddressPeriod]'
GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociationAddressPeriod] ADD CONSTRAINT [StaffEducationOrganizationContactAssociationAddressPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
