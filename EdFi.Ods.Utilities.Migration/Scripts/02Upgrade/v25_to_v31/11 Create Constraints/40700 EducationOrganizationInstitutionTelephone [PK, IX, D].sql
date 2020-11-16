-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationOrganizationInstitutionTelephone_PK] on [edfi].[EducationOrganizationInstitutionTelephone]'
GO
ALTER TABLE [edfi].[EducationOrganizationInstitutionTelephone] ADD CONSTRAINT [EducationOrganizationInstitutionTelephone_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [InstitutionTelephoneNumberTypeDescriptorId])
GO

PRINT N'Creating index [FK_EducationOrganizationInstitutionTelephone_EducationOrganization] on [edfi].[EducationOrganizationInstitutionTelephone]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationInstitutionTelephone_EducationOrganization] ON [edfi].[EducationOrganizationInstitutionTelephone] ([EducationOrganizationId])
GO

PRINT N'Creating index [FK_EducationOrganizationInstitutionTelephone_InstitutionTelephoneNumberTypeDescriptor] on [edfi].[EducationOrganizationInstitutionTelephone]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationInstitutionTelephone_InstitutionTelephoneNumberTypeDescriptor] ON [edfi].[EducationOrganizationInstitutionTelephone] ([InstitutionTelephoneNumberTypeDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[EducationOrganizationInstitutionTelephone]'
GO
ALTER TABLE [edfi].[EducationOrganizationInstitutionTelephone] ADD CONSTRAINT [EducationOrganizationInstitutionTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
