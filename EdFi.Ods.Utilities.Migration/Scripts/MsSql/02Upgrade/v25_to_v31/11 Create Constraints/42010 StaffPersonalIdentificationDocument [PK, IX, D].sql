-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffPersonalIdentificationDocument_PK] on [edfi].[StaffPersonalIdentificationDocument]'
GO
ALTER TABLE [edfi].[StaffPersonalIdentificationDocument] ADD CONSTRAINT [StaffPersonalIdentificationDocument_PK] PRIMARY KEY CLUSTERED  ([IdentificationDocumentUseDescriptorId], [PersonalInformationVerificationDescriptorId], [StaffUSI])
GO

PRINT N'Creating index [FK_StaffPersonalIdentificationDocument_IdentificationDocumentUseDescriptor] on [edfi].[StaffPersonalIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffPersonalIdentificationDocument_IdentificationDocumentUseDescriptor] ON [edfi].[StaffPersonalIdentificationDocument] ([IdentificationDocumentUseDescriptorId])
GO

PRINT N'Creating index [FK_StaffPersonalIdentificationDocument_CountryDescriptor] on [edfi].[StaffPersonalIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffPersonalIdentificationDocument_CountryDescriptor] ON [edfi].[StaffPersonalIdentificationDocument] ([IssuerCountryDescriptorId])
GO

PRINT N'Creating index [FK_StaffPersonalIdentificationDocument_PersonalInformationVerificationDescriptor] on [edfi].[StaffPersonalIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffPersonalIdentificationDocument_PersonalInformationVerificationDescriptor] ON [edfi].[StaffPersonalIdentificationDocument] ([PersonalInformationVerificationDescriptorId])
GO

PRINT N'Creating index [FK_StaffPersonalIdentificationDocument_Staff] on [edfi].[StaffPersonalIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffPersonalIdentificationDocument_Staff] ON [edfi].[StaffPersonalIdentificationDocument] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffPersonalIdentificationDocument]'
GO
ALTER TABLE [edfi].[StaffPersonalIdentificationDocument] ADD CONSTRAINT [StaffPersonalIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
