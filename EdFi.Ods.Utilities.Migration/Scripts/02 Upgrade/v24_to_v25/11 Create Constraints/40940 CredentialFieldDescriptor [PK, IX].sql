-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CredentialFieldDescriptor_PK] on [edfi].[CredentialFieldDescriptor]'
GO
ALTER TABLE [edfi].[CredentialFieldDescriptor] ADD CONSTRAINT [CredentialFieldDescriptor_PK] PRIMARY KEY CLUSTERED  ([CredentialFieldDescriptorId])
GO
PRINT N'Creating index [FK_CredentialFieldDescriptor_AcademicSubjectDescriptor] on [edfi].[CredentialFieldDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_CredentialFieldDescriptor_AcademicSubjectDescriptor] ON [edfi].[CredentialFieldDescriptor] ([AcademicSubjectDescriptorId])
GO
PRINT N'Creating index [FK_CredentialFieldDescriptor_Descriptor] on [edfi].[CredentialFieldDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_CredentialFieldDescriptor_Descriptor] ON [edfi].[CredentialFieldDescriptor] ([CredentialFieldDescriptorId])
GO

