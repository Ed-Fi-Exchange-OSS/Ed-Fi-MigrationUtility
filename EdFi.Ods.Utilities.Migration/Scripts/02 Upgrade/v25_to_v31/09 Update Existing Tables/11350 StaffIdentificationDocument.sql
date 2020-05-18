-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Removing personal identification records from [edfi].[StaffIdentificationDocument] (these records were moved to [edfi].[StaffPersonalIdentificationDocument])'
GO

DELETE s
FROM [edfi].[StaffIdentificationDocument] s
INNER JOIN [edfi].[IdentificationDocumentUseType] t
ON s.[IdentificationDocumentUseTypeId] = t.[IdentificationDocumentUseTypeId]
WHERE NOT EXISTS (SELECT 1 FROM [migration_tempdata].[CitizenshipDocumentTypes] c WHERE t.[CodeValue] = c.[TypeCodeValue])
GO

PRINT N'Converting type to descriptor on [edfi].[StaffIdentificationDocument]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StaffIdentificationDocument',
'edfi', 'IdentificationDocumentUseDescriptor',
'edfi', 'IdentificationDocumentUseType'
GO

ALTER TABLE [edfi].[StaffIdentificationDocument]
ALTER COLUMN [IdentificationDocumentUseDescriptorId] [int] NOT NULL
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StaffIdentificationDocument',
'edfi', 'PersonalInformationVerificationDescriptor',
'edfi', 'PersonalInformationVerificationType'
GO

ALTER TABLE [edfi].[StaffIdentificationDocument]
ALTER COLUMN [PersonalInformationVerificationDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StaffIdentificationDocument]
DROP COLUMN
[IdentificationDocumentUseTypeId],
[PersonalInformationVerificationTypeId]
GO

