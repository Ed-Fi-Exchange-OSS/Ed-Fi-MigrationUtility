-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffCredential]'
GO
ALTER TABLE [edfi].[StaffCredential] ADD CONSTRAINT [FK_StaffCredential_CredentialFieldDescriptor] FOREIGN KEY ([CredentialFieldDescriptorId]) REFERENCES [edfi].[CredentialFieldDescriptor] ([CredentialFieldDescriptorId])
GO
ALTER TABLE [edfi].[StaffCredential] ADD CONSTRAINT [FK_StaffCredential_CredentialType] FOREIGN KEY ([CredentialTypeId]) REFERENCES [edfi].[CredentialType] ([CredentialTypeId])
GO
ALTER TABLE [edfi].[StaffCredential] ADD CONSTRAINT [FK_StaffCredential_LevelDescriptor] FOREIGN KEY ([LevelDescriptorId]) REFERENCES [edfi].[LevelDescriptor] ([LevelDescriptorId])
GO
ALTER TABLE [edfi].[StaffCredential] ADD CONSTRAINT [FK_StaffCredential_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[StaffCredential] ADD CONSTRAINT [FK_StaffCredential_StateAbbreviationType] FOREIGN KEY ([StateOfIssueStateAbbreviationTypeId]) REFERENCES [edfi].[StateAbbreviationType] ([StateAbbreviationTypeId])
GO
ALTER TABLE [edfi].[StaffCredential] ADD CONSTRAINT [FK_StaffCredential_TeachingCredentialBasisType] FOREIGN KEY ([TeachingCredentialBasisTypeId]) REFERENCES [edfi].[TeachingCredentialBasisType] ([TeachingCredentialBasisTypeId])
GO
ALTER TABLE [edfi].[StaffCredential] ADD CONSTRAINT [FK_StaffCredential_TeachingCredentialDescriptor] FOREIGN KEY ([TeachingCredentialDescriptorId]) REFERENCES [edfi].[TeachingCredentialDescriptor] ([TeachingCredentialDescriptorId])
GO
