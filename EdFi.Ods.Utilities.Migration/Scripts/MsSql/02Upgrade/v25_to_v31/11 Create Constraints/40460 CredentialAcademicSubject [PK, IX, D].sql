-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CredentialAcademicSubject_PK] on [edfi].[CredentialAcademicSubject]'
GO
ALTER TABLE [edfi].[CredentialAcademicSubject] ADD CONSTRAINT [CredentialAcademicSubject_PK] PRIMARY KEY CLUSTERED  ([AcademicSubjectDescriptorId], [CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
GO

PRINT N'Creating index [FK_CredentialAcademicSubject_AcademicSubjectDescriptor] on [edfi].[CredentialAcademicSubject]'
GO
CREATE NONCLUSTERED INDEX [FK_CredentialAcademicSubject_AcademicSubjectDescriptor] ON [edfi].[CredentialAcademicSubject] ([AcademicSubjectDescriptorId])
GO

PRINT N'Creating index [FK_CredentialAcademicSubject_Credential] on [edfi].[CredentialAcademicSubject]'
GO
CREATE NONCLUSTERED INDEX [FK_CredentialAcademicSubject_Credential] ON [edfi].[CredentialAcademicSubject] ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[CredentialAcademicSubject]'
GO
ALTER TABLE [edfi].[CredentialAcademicSubject] ADD CONSTRAINT [CredentialAcademicSubject_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
