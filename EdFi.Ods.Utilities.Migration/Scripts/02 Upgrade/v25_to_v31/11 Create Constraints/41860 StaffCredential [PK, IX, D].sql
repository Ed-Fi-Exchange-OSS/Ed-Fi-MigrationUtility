-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffCredential_PK] on [edfi].[StaffCredential]'
GO
ALTER TABLE [edfi].[StaffCredential] ADD CONSTRAINT [StaffCredential_PK] PRIMARY KEY CLUSTERED  ([CredentialIdentifier], [StaffUSI], [StateOfIssueStateAbbreviationDescriptorId])
GO

PRINT N'Creating index [FK_StaffCredential_Credential] on [edfi].[StaffCredential]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffCredential_Credential] ON [edfi].[StaffCredential] ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
GO

PRINT N'Creating index [FK_StaffCredential_Staff] on [edfi].[StaffCredential]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffCredential_Staff] ON [edfi].[StaffCredential] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffCredential]'
GO
ALTER TABLE [edfi].[StaffCredential] ADD CONSTRAINT [StaffCredential_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
