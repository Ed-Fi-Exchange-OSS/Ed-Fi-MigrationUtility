-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffIdentificationDocument]'
GO
ALTER TABLE [edfi].[StaffIdentificationDocument] ADD CONSTRAINT [FK_StaffIdentificationDocument_CountryDescriptor] FOREIGN KEY ([IssuerCountryDescriptorId]) REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO
ALTER TABLE [edfi].[StaffIdentificationDocument] ADD CONSTRAINT [FK_StaffIdentificationDocument_IdentificationDocumentUseType] FOREIGN KEY ([IdentificationDocumentUseTypeId]) REFERENCES [edfi].[IdentificationDocumentUseType] ([IdentificationDocumentUseTypeId])
GO
ALTER TABLE [edfi].[StaffIdentificationDocument] ADD CONSTRAINT [FK_StaffIdentificationDocument_PersonalInformationVerificationType] FOREIGN KEY ([PersonalInformationVerificationTypeId]) REFERENCES [edfi].[PersonalInformationVerificationType] ([PersonalInformationVerificationTypeId])
GO
ALTER TABLE [edfi].[StaffIdentificationDocument] ADD CONSTRAINT [FK_StaffIdentificationDocument_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]) ON DELETE CASCADE
GO
