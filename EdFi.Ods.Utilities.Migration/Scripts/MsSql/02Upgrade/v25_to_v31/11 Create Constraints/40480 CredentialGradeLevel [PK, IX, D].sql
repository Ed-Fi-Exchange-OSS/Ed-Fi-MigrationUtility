-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CredentialGradeLevel_PK] on [edfi].[CredentialGradeLevel]'
GO
ALTER TABLE [edfi].[CredentialGradeLevel] ADD CONSTRAINT [CredentialGradeLevel_PK] PRIMARY KEY CLUSTERED  ([CredentialIdentifier], [GradeLevelDescriptorId], [StateOfIssueStateAbbreviationDescriptorId])
GO

PRINT N'Creating index [FK_CredentialGradeLevel_Credential] on [edfi].[CredentialGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_CredentialGradeLevel_Credential] ON [edfi].[CredentialGradeLevel] ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
GO

PRINT N'Creating index [FK_CredentialGradeLevel_GradeLevelDescriptor] on [edfi].[CredentialGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_CredentialGradeLevel_GradeLevelDescriptor] ON [edfi].[CredentialGradeLevel] ([GradeLevelDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[CredentialGradeLevel]'
GO
ALTER TABLE [edfi].[CredentialGradeLevel] ADD CONSTRAINT [CredentialGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
