-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentIdentificationDocument_PK] on [edfi].[StudentIdentificationDocument]'
GO
ALTER TABLE [edfi].[StudentIdentificationDocument] ADD CONSTRAINT [StudentIdentificationDocument_PK] PRIMARY KEY CLUSTERED  ([IdentificationDocumentUseDescriptorId], [PersonalInformationVerificationDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentIdentificationDocument_IdentificationDocumentUseDescriptor] on [edfi].[StudentIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentIdentificationDocument_IdentificationDocumentUseDescriptor] ON [edfi].[StudentIdentificationDocument] ([IdentificationDocumentUseDescriptorId])
GO

PRINT N'Creating index [FK_StudentIdentificationDocument_CountryDescriptor] on [edfi].[StudentIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentIdentificationDocument_CountryDescriptor] ON [edfi].[StudentIdentificationDocument] ([IssuerCountryDescriptorId])
GO

PRINT N'Creating index [FK_StudentIdentificationDocument_PersonalInformationVerificationDescriptor] on [edfi].[StudentIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentIdentificationDocument_PersonalInformationVerificationDescriptor] ON [edfi].[StudentIdentificationDocument] ([PersonalInformationVerificationDescriptorId])
GO

PRINT N'Creating index [FK_StudentIdentificationDocument_Student] on [edfi].[StudentIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentIdentificationDocument_Student] ON [edfi].[StudentIdentificationDocument] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentIdentificationDocument]'
GO
ALTER TABLE [edfi].[StudentIdentificationDocument] ADD CONSTRAINT [StudentIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
