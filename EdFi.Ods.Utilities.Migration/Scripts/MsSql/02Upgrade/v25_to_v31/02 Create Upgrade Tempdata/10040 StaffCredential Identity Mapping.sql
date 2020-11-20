-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Generating StaffCredential identity mappings'
GO

IF OBJECT_ID('migration_tempdata.StaffCredentialIdentityMapping', 'U') IS NOT NULL 
DROP TABLE [migration_tempdata].[StaffCredentialIdentityMapping]
GO

CREATE TABLE [migration_tempdata].[StaffCredentialIdentityMapping]
(
	--descriptor mapping for types below to be created when the new descriptor data is imported
	[CredentialIdentifier] [nvarchar] (60) NOT NULL,
	[StateOfIssueStateAbbreviationTypeId] [int] NOT NULL,
	[StaffUSI] [int] NOT NULL,
	[CredentialFieldDescriptorId] [int] NOT NULL,
	[CredentialTypeId] [int] NOT NULL,
	[LevelDescriptorId] [int] NOT NULL,
	[TeachingCredentialDescriptorId] [int] NOT NULL,
	[CredentialIssuanceDate] [date] NOT NULL,
	CONSTRAINT PK_StaffCredentialIdentityMapping PRIMARY KEY ([StaffUSI], [CredentialFieldDescriptorId], [CredentialTypeId], [LevelDescriptorId], [TeachingCredentialDescriptorId], [CredentialIssuanceDate])
)
GO

INSERT  [migration_tempdata].[StaffCredentialIdentityMapping]
(
	[CredentialIdentifier],
	[StateOfIssueStateAbbreviationTypeId],
    [StaffUSI],
	[CredentialFieldDescriptorId],
	[CredentialTypeId],
	[LevelDescriptorId],
	[TeachingCredentialDescriptorId],
	[CredentialIssuanceDate]
)
SELECT 
	CONVERT(NVARCHAR(60),
		CONCAT 
		(
			CONVERT(NVARCHAR(10), [StaffUSI]),
			FORMAT([CredentialIssuanceDate], N'yyyyMMdd'),
			CONVERT(NVARCHAR(10), [CredentialFieldDescriptorId]),
			CONVERT(NVARCHAR(10), [CredentialTypeId]),
			CONVERT(NVARCHAR(10), [LevelDescriptorId]),
			CONVERT(NVARCHAR(10), [TeachingCredentialDescriptorId])
		)
	) AS [CredentialIdentifier],
	[StateOfIssueStateAbbreviationTypeId],
	[StaffUSI], 
	[CredentialFieldDescriptorId],
	[CredentialTypeId],
	[LevelDescriptorId],
	[TeachingCredentialDescriptorId],
	[CredentialIssuanceDate]
FROM [edfi].[StaffCredential]
