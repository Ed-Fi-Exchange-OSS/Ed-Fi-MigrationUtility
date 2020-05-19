-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[Credential]'
GO

CREATE TABLE [edfi].[Credential]
(
[CredentialIdentifier] [nvarchar] (60) NOT NULL,
[StateOfIssueStateAbbreviationDescriptorId] [int] NOT NULL,
[EffectiveDate] [date] NULL,
[ExpirationDate] [date] NULL,
[CredentialFieldDescriptorId] [int] NOT NULL,
[IssuanceDate] [date] NOT NULL,
[CredentialTypeDescriptorId] [int] NOT NULL,
[TeachingCredentialDescriptorId] [int] NOT NULL,
[Namespace] [nvarchar] (255) NOT NULL,
[TeachingCredentialBasisTypeId] [int] NULL,
[CreateDate] [datetime] NOT NULL,
[LastModifiedDate] [datetime] NOT NULL,
[Id] [uniqueidentifier] NOT NULL
)
GO


INSERT [edfi].[Credential]
(
	[CredentialIdentifier],
	[StateOfIssueStateAbbreviationDescriptorId],
	[ExpirationDate],
	[CredentialFieldDescriptorId],
	[IssuanceDate],
	[CredentialTypeDescriptorId],
	[TeachingCredentialDescriptorId],
	[Namespace],
	[TeachingCredentialBasisTypeId],
	[CreateDate],
	[LastModifiedDate],
	[Id]
)

SELECT
	m.[CredentialIdentifier],
	m.[StateOfIssueStateAbbreviationDescriptorId],
	s.[CredentialExpirationDate], 
	s.[CredentialFieldDescriptorId],
	s.[CredentialIssuanceDate],
	m.[CredentialTypeDescriptorId],
	s.[TeachingCredentialDescriptorId],
	'$CredentialNamespacePrefix$',
	s.[TeachingCredentialBasisTypeId],
	ISNULL(s.[CreateDate], GETDATE()),
	GETDATE(),
	NEWID()
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

PRINT N'Converting type to descriptor on [edfi].[Credential]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'Credential',
'edfi', 'TeachingCredentialBasisDescriptor',
'edfi', 'TeachingCredentialBasisType'
GO

ALTER TABLE [edfi].[Credential]
DROP COLUMN [TeachingCredentialBasisTypeId]
GO