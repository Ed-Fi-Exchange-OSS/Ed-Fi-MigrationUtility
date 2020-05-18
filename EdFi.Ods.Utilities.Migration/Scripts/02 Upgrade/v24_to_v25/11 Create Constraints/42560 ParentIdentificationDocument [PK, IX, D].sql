-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ParentIdentificationDocument_PK] on [edfi].[ParentIdentificationDocument]'
GO
ALTER TABLE [edfi].[ParentIdentificationDocument] ADD CONSTRAINT [ParentIdentificationDocument_PK] PRIMARY KEY CLUSTERED  ([PersonalInformationVerificationTypeId], [IdentificationDocumentUseTypeId], [ParentUSI])
GO
PRINT N'Creating index [FK_ParentIdentificationDocument_IdentificationDocumentUseType] on [edfi].[ParentIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentIdentificationDocument_IdentificationDocumentUseType] ON [edfi].[ParentIdentificationDocument] ([IdentificationDocumentUseTypeId])
GO
PRINT N'Creating index [FK_ParentIdentificationDocument_CountryDescriptor] on [edfi].[ParentIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentIdentificationDocument_CountryDescriptor] ON [edfi].[ParentIdentificationDocument] ([IssuerCountryDescriptorId])
GO
PRINT N'Creating index [FK_ParentIdentificationDocument_Parent] on [edfi].[ParentIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentIdentificationDocument_Parent] ON [edfi].[ParentIdentificationDocument] ([ParentUSI])
GO
PRINT N'Creating index [FK_ParentIdentificationDocument_PersonalInformationVerificationType] on [edfi].[ParentIdentificationDocument]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentIdentificationDocument_PersonalInformationVerificationType] ON [edfi].[ParentIdentificationDocument] ([PersonalInformationVerificationTypeId])
GO

PRINT N'Adding constraints to [edfi].[ParentIdentificationDocument]'
GO
ALTER TABLE [edfi].[ParentIdentificationDocument] ADD CONSTRAINT [ParentIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

