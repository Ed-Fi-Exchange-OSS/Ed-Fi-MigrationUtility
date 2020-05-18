-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffIdentificationDocument_PK] on [edfi].[StaffIdentificationDocument]'
GO
ALTER TABLE [edfi].[StaffIdentificationDocument] ADD CONSTRAINT [StaffIdentificationDocument_PK] PRIMARY KEY CLUSTERED  ([PersonalInformationVerificationTypeId], [IdentificationDocumentUseTypeId], [StaffUSI])
GO
PRINT N'Creating index [FK_StaffIdentificationDocument_IdentificationDocumentUseType] on [edfi].[StaffIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffIdentificationDocument_IdentificationDocumentUseType] ON [edfi].[StaffIdentificationDocument] ([IdentificationDocumentUseTypeId])
GO
PRINT N'Creating index [FK_StaffIdentificationDocument_CountryDescriptor] on [edfi].[StaffIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffIdentificationDocument_CountryDescriptor] ON [edfi].[StaffIdentificationDocument] ([IssuerCountryDescriptorId])
GO
PRINT N'Creating index [FK_StaffIdentificationDocument_PersonalInformationVerificationType] on [edfi].[StaffIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffIdentificationDocument_PersonalInformationVerificationType] ON [edfi].[StaffIdentificationDocument] ([PersonalInformationVerificationTypeId])
GO
PRINT N'Creating index [FK_StaffIdentificationDocument_Staff] on [edfi].[StaffIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffIdentificationDocument_Staff] ON [edfi].[StaffIdentificationDocument] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffIdentificationDocument]'
GO
ALTER TABLE [edfi].[StaffIdentificationDocument] ADD CONSTRAINT [StaffIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

