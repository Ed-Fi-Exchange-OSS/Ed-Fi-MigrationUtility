-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[CredentialAcademicSubject]'
GO

CREATE TABLE [edfi].[CredentialAcademicSubject]
(
[AcademicSubjectDescriptorId] [int] NOT NULL,
[CredentialIdentifier] [nvarchar] (60) NOT NULL,
[StateOfIssueStateAbbreviationDescriptorId] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[CredentialAcademicSubject]
(
[AcademicSubjectDescriptorId],
[CredentialIdentifier],
[StateOfIssueStateAbbreviationDescriptorId],
[CreateDate]
)

SELECT DISTINCT
	d.[AcademicSubjectDescriptorId],
	c.[CredentialIdentifier],
	c.[StateOfIssueStateAbbreviationDescriptorId],
	GETDATE()
FROM [edfi].[Credential] c
INNER JOIN [edfi].[CredentialFieldDescriptor] d
	ON c.[CredentialFieldDescriptorId] = d.[CredentialFieldDescriptorId]
WHERE d.[AcademicSubjectDescriptorId] IS NOT NULL