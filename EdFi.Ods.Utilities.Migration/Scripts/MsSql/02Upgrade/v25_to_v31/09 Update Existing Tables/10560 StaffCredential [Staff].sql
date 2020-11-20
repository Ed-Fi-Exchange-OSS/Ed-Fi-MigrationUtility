-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[StaffCredential]'
GO

ALTER TABLE [edfi].[StaffCredential] ADD
[CredentialIdentifier] [nvarchar] (60) NULL,
[StateOfIssueStateAbbreviationDescriptorId] [int] NULL
GO

UPDATE [edfi].[StaffCredential]
SET
	[CredentialIdentifier] = m.[CredentialIdentifier],
	[StateOfIssueStateAbbreviationDescriptorId] = m.[StateOfIssueStateAbbreviationDescriptorId]
FROM [edfi].[StaffCredential] s
INNER JOIN [migration_tempdata].[StaffCredentialIdentityMapping] m
ON 
	s.[StaffUSI] = m.[StaffUSI]
	AND s.[CredentialFieldDescriptorId] = m.[CredentialFieldDescriptorId]
	AND s.[CredentialTypeId] = m.[CredentialTypeId]
	AND s.[LevelDescriptorId] = m.[LevelDescriptorId]
	AND s.[TeachingCredentialDescriptorId] = m.[TeachingCredentialDescriptorId]
	AND s.[CredentialIssuanceDate] = m.[CredentialIssuanceDate]
GO

ALTER TABLE [edfi].[StaffCredential]
ALTER COLUMN [CredentialIdentifier] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[StaffCredential]
ALTER COLUMN [StateOfIssueStateAbbreviationDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StaffCredential] DROP
COLUMN [CredentialFieldDescriptorId],
COLUMN [CredentialTypeId],
COLUMN [LevelDescriptorId],
COLUMN [TeachingCredentialDescriptorId],
COLUMN [CredentialIssuanceDate],
COLUMN [CredentialExpirationDate],
COLUMN [TeachingCredentialBasisTypeId],
COLUMN [StateOfIssueStateAbbreviationTypeId]
GO
