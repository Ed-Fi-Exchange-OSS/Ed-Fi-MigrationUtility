-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[EducationOrganizationInstitutionTelephone]'
GO
ALTER TABLE [edfi].[EducationOrganizationInstitutionTelephone] ADD CONSTRAINT [FK_EducationOrganizationInstitutionTelephone_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[EducationOrganizationInstitutionTelephone] ADD CONSTRAINT [FK_EducationOrganizationInstitutionTelephone_InstitutionTelephoneNumberTypeDescriptor] FOREIGN KEY ([InstitutionTelephoneNumberTypeDescriptorId]) REFERENCES [edfi].[InstitutionTelephoneNumberTypeDescriptor] ([InstitutionTelephoneNumberTypeDescriptorId])
GO
