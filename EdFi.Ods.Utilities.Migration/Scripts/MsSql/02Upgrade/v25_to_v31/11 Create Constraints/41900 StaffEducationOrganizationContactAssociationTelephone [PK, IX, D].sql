-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffEducationOrganizationContactAssociationTelephone_PK] on [edfi].[StaffEducationOrganizationContactAssociationTelephone]'
GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociationTelephone] ADD CONSTRAINT [StaffEducationOrganizationContactAssociationTelephone_PK] PRIMARY KEY CLUSTERED  ([ContactTitle], [EducationOrganizationId], [StaffUSI], [TelephoneNumberTypeDescriptorId])
GO

PRINT N'Creating index [FK_StaffEducationOrganizationContactAssociationTelephone_StaffEducationOrganizationContactAssociation] on [edfi].[StaffEducationOrganizationContactAssociationTelephone]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationContactAssociationTelephone_StaffEducationOrganizationContactAssociation] ON [edfi].[StaffEducationOrganizationContactAssociationTelephone] ([ContactTitle], [EducationOrganizationId], [StaffUSI])
GO

PRINT N'Creating index [FK_StaffEducationOrganizationContactAssociationTelephone_TelephoneNumberTypeDescriptor] on [edfi].[StaffEducationOrganizationContactAssociationTelephone]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationContactAssociationTelephone_TelephoneNumberTypeDescriptor] ON [edfi].[StaffEducationOrganizationContactAssociationTelephone] ([TelephoneNumberTypeDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StaffEducationOrganizationContactAssociationTelephone]'
GO
ALTER TABLE [edfi].[StaffEducationOrganizationContactAssociationTelephone] ADD CONSTRAINT [StaffEducationOrganizationContactAssociationTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
