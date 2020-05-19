-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StaffPersonalIdentificationDocument]'
GO

CREATE TABLE [edfi].[StaffPersonalIdentificationDocument]
(
[IdentificationDocumentUseTypeId] [int] NOT NULL,
[PersonalInformationVerificationTypeId] [int] NOT NULL,
[StaffUSI] [int] NOT NULL,
[DocumentTitle] [nvarchar] (60) NULL,
[DocumentExpirationDate] [date] NULL,
[IssuerDocumentIdentificationCode] [nvarchar] (60) NULL,
[IssuerName] [nvarchar] (150) NULL,
[IssuerCountryDescriptorId] [int] NULL,
[CreateDate] [datetime] NOT NULL
)
GO
INSERT [edfi].[StaffPersonalIdentificationDocument]
(
[IdentificationDocumentUseTypeId],
[PersonalInformationVerificationTypeId],
[StaffUSI],
[DocumentTitle],
[DocumentExpirationDate],
[IssuerDocumentIdentificationCode],
[IssuerName],
[IssuerCountryDescriptorId],
[CreateDate]
)
SELECT
s.[IdentificationDocumentUseTypeId],
s.[PersonalInformationVerificationTypeId],
s.[StaffUSI],
s.[DocumentTitle],
s.[DocumentExpirationDate],
s.[IssuerDocumentIdentificationCode],
s.[IssuerName],
s.[IssuerCountryDescriptorId],
ISNULL(s.[CreateDate], GETDATE())
FROM [edfi].[StaffIdentificationDocument] s
INNER JOIN [edfi].[IdentificationDocumentUseType] i
ON s.[IdentificationDocumentUseTypeId] = i.[IdentificationDocumentUseTypeId]
WHERE NOT EXISTS (SELECT 1 FROM [migration_tempdata].[CitizenshipDocumentTypes] c WHERE i.[CodeValue] = c.[TypeCodeValue])
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StaffPersonalIdentificationDocument',
'edfi', 'IdentificationDocumentUseDescriptor',
'edfi', 'IdentificationDocumentUseType'
GO

ALTER TABLE [edfi].[StaffPersonalIdentificationDocument]
ALTER COLUMN [IdentificationDocumentUseDescriptorId] [int] NOT NULL
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StaffPersonalIdentificationDocument',
'edfi', 'PersonalInformationVerificationDescriptor',
'edfi', 'PersonalInformationVerificationType'
GO

ALTER TABLE [edfi].[StaffPersonalIdentificationDocument]
ALTER COLUMN [PersonalInformationVerificationDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StaffPersonalIdentificationDocument]
DROP COLUMN
[IdentificationDocumentUseTypeId],
[PersonalInformationVerificationTypeId]
GO
