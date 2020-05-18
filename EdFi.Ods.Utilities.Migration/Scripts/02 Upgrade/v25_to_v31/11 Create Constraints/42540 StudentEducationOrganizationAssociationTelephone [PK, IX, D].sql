-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentEducationOrganizationAssociationTelephone_PK] on [edfi].[StudentEducationOrganizationAssociationTelephone]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTelephone] ADD CONSTRAINT [StudentEducationOrganizationAssociationTelephone_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [StudentUSI], [TelephoneNumberTypeDescriptorId])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationTelephone_StudentEducationOrganizationAssociation] on [edfi].[StudentEducationOrganizationAssociationTelephone]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationTelephone_StudentEducationOrganizationAssociation] ON [edfi].[StudentEducationOrganizationAssociationTelephone] ([EducationOrganizationId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentEducationOrganizationAssociationTelephone_TelephoneNumberTypeDescriptor] on [edfi].[StudentEducationOrganizationAssociationTelephone]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAssociationTelephone_TelephoneNumberTypeDescriptor] ON [edfi].[StudentEducationOrganizationAssociationTelephone] ([TelephoneNumberTypeDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentEducationOrganizationAssociationTelephone]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTelephone] ADD CONSTRAINT [StudentEducationOrganizationAssociationTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
