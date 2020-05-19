-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ParentPersonalIdentificationDocument_PK] on [edfi].[ParentPersonalIdentificationDocument]'
GO
ALTER TABLE [edfi].[ParentPersonalIdentificationDocument] ADD CONSTRAINT [ParentPersonalIdentificationDocument_PK] PRIMARY KEY CLUSTERED  ([IdentificationDocumentUseDescriptorId], [ParentUSI], [PersonalInformationVerificationDescriptorId])
GO

PRINT N'Creating index [FK_ParentPersonalIdentificationDocument_IdentificationDocumentUseDescriptor] on [edfi].[ParentPersonalIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentPersonalIdentificationDocument_IdentificationDocumentUseDescriptor] ON [edfi].[ParentPersonalIdentificationDocument] ([IdentificationDocumentUseDescriptorId])
GO

PRINT N'Creating index [FK_ParentPersonalIdentificationDocument_CountryDescriptor] on [edfi].[ParentPersonalIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentPersonalIdentificationDocument_CountryDescriptor] ON [edfi].[ParentPersonalIdentificationDocument] ([IssuerCountryDescriptorId])
GO

PRINT N'Creating index [FK_ParentPersonalIdentificationDocument_Parent] on [edfi].[ParentPersonalIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentPersonalIdentificationDocument_Parent] ON [edfi].[ParentPersonalIdentificationDocument] ([ParentUSI])
GO

PRINT N'Creating index [FK_ParentPersonalIdentificationDocument_PersonalInformationVerificationDescriptor] on [edfi].[ParentPersonalIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentPersonalIdentificationDocument_PersonalInformationVerificationDescriptor] ON [edfi].[ParentPersonalIdentificationDocument] ([PersonalInformationVerificationDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[ParentPersonalIdentificationDocument]'
GO
ALTER TABLE [edfi].[ParentPersonalIdentificationDocument] ADD CONSTRAINT [ParentPersonalIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
