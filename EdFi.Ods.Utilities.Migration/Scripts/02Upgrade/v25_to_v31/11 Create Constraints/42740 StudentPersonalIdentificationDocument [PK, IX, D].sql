-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentPersonalIdentificationDocument_PK] on [edfi].[StudentPersonalIdentificationDocument]'
GO
ALTER TABLE [edfi].[StudentPersonalIdentificationDocument] ADD CONSTRAINT [StudentPersonalIdentificationDocument_PK] PRIMARY KEY CLUSTERED  ([IdentificationDocumentUseDescriptorId], [PersonalInformationVerificationDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentPersonalIdentificationDocument_IdentificationDocumentUseDescriptor] on [edfi].[StudentPersonalIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentPersonalIdentificationDocument_IdentificationDocumentUseDescriptor] ON [edfi].[StudentPersonalIdentificationDocument] ([IdentificationDocumentUseDescriptorId])
GO

PRINT N'Creating index [FK_StudentPersonalIdentificationDocument_CountryDescriptor] on [edfi].[StudentPersonalIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentPersonalIdentificationDocument_CountryDescriptor] ON [edfi].[StudentPersonalIdentificationDocument] ([IssuerCountryDescriptorId])
GO

PRINT N'Creating index [FK_StudentPersonalIdentificationDocument_PersonalInformationVerificationDescriptor] on [edfi].[StudentPersonalIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentPersonalIdentificationDocument_PersonalInformationVerificationDescriptor] ON [edfi].[StudentPersonalIdentificationDocument] ([PersonalInformationVerificationDescriptorId])
GO

PRINT N'Creating index [FK_StudentPersonalIdentificationDocument_Student] on [edfi].[StudentPersonalIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentPersonalIdentificationDocument_Student] ON [edfi].[StudentPersonalIdentificationDocument] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentPersonalIdentificationDocument]'
GO
ALTER TABLE [edfi].[StudentPersonalIdentificationDocument] ADD CONSTRAINT [StudentPersonalIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
