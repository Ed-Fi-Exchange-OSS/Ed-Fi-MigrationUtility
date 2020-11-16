-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ParentPersonalIdentificationDocument]'
GO
ALTER TABLE [edfi].[ParentPersonalIdentificationDocument] ADD CONSTRAINT [FK_ParentPersonalIdentificationDocument_CountryDescriptor] FOREIGN KEY ([IssuerCountryDescriptorId]) REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO
ALTER TABLE [edfi].[ParentPersonalIdentificationDocument] ADD CONSTRAINT [FK_ParentPersonalIdentificationDocument_IdentificationDocumentUseDescriptor] FOREIGN KEY ([IdentificationDocumentUseDescriptorId]) REFERENCES [edfi].[IdentificationDocumentUseDescriptor] ([IdentificationDocumentUseDescriptorId])
GO
ALTER TABLE [edfi].[ParentPersonalIdentificationDocument] ADD CONSTRAINT [FK_ParentPersonalIdentificationDocument_Parent] FOREIGN KEY ([ParentUSI]) REFERENCES [edfi].[Parent] ([ParentUSI]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[ParentPersonalIdentificationDocument] ADD CONSTRAINT [FK_ParentPersonalIdentificationDocument_PersonalInformationVerificationDescriptor] FOREIGN KEY ([PersonalInformationVerificationDescriptorId]) REFERENCES [edfi].[PersonalInformationVerificationDescriptor] ([PersonalInformationVerificationDescriptorId])
GO
