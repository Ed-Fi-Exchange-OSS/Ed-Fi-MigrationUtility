-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffCredential_PK] on [edfi].[StaffCredential]'
GO
ALTER TABLE [edfi].[StaffCredential] ADD CONSTRAINT [StaffCredential_PK] PRIMARY KEY CLUSTERED  ([StaffUSI], [CredentialFieldDescriptorId], [CredentialTypeId], [LevelDescriptorId], [TeachingCredentialDescriptorId], [CredentialIssuanceDate])
GO
PRINT N'Creating index [FK_StaffCredential_CredentialFieldDescriptor] on [edfi].[StaffCredential]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffCredential_CredentialFieldDescriptor] ON [edfi].[StaffCredential] ([CredentialFieldDescriptorId])
GO
PRINT N'Creating index [FK_StaffCredential_CredentialType] on [edfi].[StaffCredential]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffCredential_CredentialType] ON [edfi].[StaffCredential] ([CredentialTypeId])
GO
PRINT N'Creating index [FK_StaffCredential_LevelDescriptor] on [edfi].[StaffCredential]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffCredential_LevelDescriptor] ON [edfi].[StaffCredential] ([LevelDescriptorId])
GO
PRINT N'Creating index [FK_StaffCredential_Staff] on [edfi].[StaffCredential]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffCredential_Staff] ON [edfi].[StaffCredential] ([StaffUSI])
GO
PRINT N'Creating index [FK_StaffCredential_StateAbbreviationType] on [edfi].[StaffCredential]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffCredential_StateAbbreviationType] ON [edfi].[StaffCredential] ([StateOfIssueStateAbbreviationTypeId])
GO
PRINT N'Creating index [FK_StaffCredential_TeachingCredentialBasisType] on [edfi].[StaffCredential]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffCredential_TeachingCredentialBasisType] ON [edfi].[StaffCredential] ([TeachingCredentialBasisTypeId])
GO
PRINT N'Creating index [FK_StaffCredential_TeachingCredentialDescriptor] on [edfi].[StaffCredential]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffCredential_TeachingCredentialDescriptor] ON [edfi].[StaffCredential] ([TeachingCredentialDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StaffCredential]'
GO
ALTER TABLE [edfi].[StaffCredential] ADD CONSTRAINT [StaffCredential_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

