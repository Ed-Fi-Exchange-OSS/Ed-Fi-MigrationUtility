-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [TeachingCredentialDescriptor_PK] on [edfi].[TeachingCredentialDescriptor]'
GO
ALTER TABLE [edfi].[TeachingCredentialDescriptor] ADD CONSTRAINT [TeachingCredentialDescriptor_PK] PRIMARY KEY CLUSTERED  ([TeachingCredentialDescriptorId])
GO
PRINT N'Creating index [FK_TeachingCredentialDescriptor_Descriptor] on [edfi].[TeachingCredentialDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_TeachingCredentialDescriptor_Descriptor] ON [edfi].[TeachingCredentialDescriptor] ([TeachingCredentialDescriptorId])
GO
PRINT N'Creating index [FK_TeachingCredentialDescriptor_TeachingCredentialType] on [edfi].[TeachingCredentialDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_TeachingCredentialDescriptor_TeachingCredentialType] ON [edfi].[TeachingCredentialDescriptor] ([TeachingCredentialTypeId])
GO

