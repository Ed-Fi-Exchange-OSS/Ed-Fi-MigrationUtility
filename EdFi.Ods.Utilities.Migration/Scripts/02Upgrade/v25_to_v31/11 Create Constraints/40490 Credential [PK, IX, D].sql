-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Credential_PK] on [edfi].[Credential]'
GO
ALTER TABLE [edfi].[Credential] ADD CONSTRAINT [Credential_PK] PRIMARY KEY CLUSTERED  ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
GO

PRINT N'Creating index [UX_Credential_Id] on [edfi].[Credential]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Credential_Id] ON [edfi].[Credential] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_Credential_CredentialFieldDescriptor] on [edfi].[Credential]'
GO
CREATE NONCLUSTERED INDEX [FK_Credential_CredentialFieldDescriptor] ON [edfi].[Credential] ([CredentialFieldDescriptorId])
GO

PRINT N'Creating index [FK_Credential_CredentialTypeDescriptor] on [edfi].[Credential]'
GO
CREATE NONCLUSTERED INDEX [FK_Credential_CredentialTypeDescriptor] ON [edfi].[Credential] ([CredentialTypeDescriptorId])
GO

PRINT N'Creating index [FK_Credential_StateAbbreviationDescriptor] on [edfi].[Credential]'
GO
CREATE NONCLUSTERED INDEX [FK_Credential_StateAbbreviationDescriptor] ON [edfi].[Credential] ([StateOfIssueStateAbbreviationDescriptorId])
GO

PRINT N'Creating index [FK_Credential_TeachingCredentialBasisDescriptor] on [edfi].[Credential]'
GO
CREATE NONCLUSTERED INDEX [FK_Credential_TeachingCredentialBasisDescriptor] ON [edfi].[Credential] ([TeachingCredentialBasisDescriptorId])
GO

PRINT N'Creating index [FK_Credential_TeachingCredentialDescriptor] on [edfi].[Credential]'
GO
CREATE NONCLUSTERED INDEX [FK_Credential_TeachingCredentialDescriptor] ON [edfi].[Credential] ([TeachingCredentialDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[Credential]'
GO
ALTER TABLE [edfi].[Credential] ADD CONSTRAINT [Credential_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Credential] ADD CONSTRAINT [Credential_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Credential] ADD CONSTRAINT [Credential_DF_Id] DEFAULT (newid()) FOR [Id]
GO
