-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Credential]'
GO
ALTER TABLE [edfi].[Credential] ADD CONSTRAINT [FK_Credential_CredentialFieldDescriptor] FOREIGN KEY ([CredentialFieldDescriptorId]) REFERENCES [edfi].[CredentialFieldDescriptor] ([CredentialFieldDescriptorId])
GO
ALTER TABLE [edfi].[Credential] ADD CONSTRAINT [FK_Credential_CredentialTypeDescriptor] FOREIGN KEY ([CredentialTypeDescriptorId]) REFERENCES [edfi].[CredentialTypeDescriptor] ([CredentialTypeDescriptorId])
GO
ALTER TABLE [edfi].[Credential] ADD CONSTRAINT [FK_Credential_StateAbbreviationDescriptor] FOREIGN KEY ([StateOfIssueStateAbbreviationDescriptorId]) REFERENCES [edfi].[StateAbbreviationDescriptor] ([StateAbbreviationDescriptorId])
GO
ALTER TABLE [edfi].[Credential] ADD CONSTRAINT [FK_Credential_TeachingCredentialBasisDescriptor] FOREIGN KEY ([TeachingCredentialBasisDescriptorId]) REFERENCES [edfi].[TeachingCredentialBasisDescriptor] ([TeachingCredentialBasisDescriptorId])
GO
ALTER TABLE [edfi].[Credential] ADD CONSTRAINT [FK_Credential_TeachingCredentialDescriptor] FOREIGN KEY ([TeachingCredentialDescriptorId]) REFERENCES [edfi].[TeachingCredentialDescriptor] ([TeachingCredentialDescriptorId])
GO
