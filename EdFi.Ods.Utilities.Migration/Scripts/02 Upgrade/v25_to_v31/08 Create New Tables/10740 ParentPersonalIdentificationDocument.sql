-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[ParentPersonalIdentificationDocument]'
GO

CREATE TABLE [edfi].[ParentPersonalIdentificationDocument]
(
[IdentificationDocumentUseTypeId] [int] NOT NULL,
[ParentUSI] [int] NOT NULL,
[PersonalInformationVerificationTypeId] [int] NOT NULL,
[DocumentTitle] [nvarchar] (60) NULL,
[DocumentExpirationDate] [date] NULL,
[IssuerDocumentIdentificationCode] [nvarchar] (60) NULL,
[IssuerName] [nvarchar] (150) NULL,
[IssuerCountryDescriptorId] [int] NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[ParentPersonalIdentificationDocument]
(
[IdentificationDocumentUseTypeId],
[ParentUSI],
[PersonalInformationVerificationTypeId],
[DocumentTitle],
[DocumentExpirationDate],
[IssuerDocumentIdentificationCode],
[IssuerName],
[IssuerCountryDescriptorId],
[CreateDate]
)
SELECT
[IdentificationDocumentUseTypeId],
[ParentUSI],
[PersonalInformationVerificationTypeId],
[DocumentTitle],
[DocumentExpirationDate],
[IssuerDocumentIdentificationCode],
[IssuerName],
[IssuerCountryDescriptorId],
ISNULL([CreateDate], GETDATE())
FROM [edfi].[ParentIdentificationDocument]
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'ParentPersonalIdentificationDocument',
'edfi', 'IdentificationDocumentUseDescriptor',
'edfi', 'IdentificationDocumentUseType'
GO

ALTER TABLE [edfi].[ParentPersonalIdentificationDocument]
ALTER COLUMN [IdentificationDocumentUseDescriptorId] [int] NOT NULL
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'ParentPersonalIdentificationDocument',
'edfi', 'PersonalInformationVerificationDescriptor',
'edfi', 'PersonalInformationVerificationType'
GO

ALTER TABLE [edfi].[ParentPersonalIdentificationDocument]
ALTER COLUMN [PersonalInformationVerificationDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[ParentPersonalIdentificationDocument]
DROP COLUMN
[IdentificationDocumentUseTypeId],
[PersonalInformationVerificationTypeId]
GO


