-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentEducationOrganizationAssociationLanguageUse]'
GO

CREATE TABLE [edfi].[StudentEducationOrganizationAssociationLanguageUse]
(
[EducationOrganizationId] [int] NOT NULL,
[LanguageDescriptorId] [int] NOT NULL,
[LanguageUseTypeId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[StudentEducationOrganizationAssociationLanguageUse]
(
[EducationOrganizationId],
[LanguageDescriptorId],
[LanguageUseTypeId],
[StudentUSI],
[CreateDate]
)
SELECT 
a.[EducationOrganizationId],
s.[LanguageDescriptorId],
s.[LanguageUseTypeId],
s.[StudentUSI],
ISNULL(s.[CreateDate], GETDATE())
FROM [edfi].[StudentLanguageUse] s
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
	ON s.[StudentUSI] = a.[StudentUSI]
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentEducationOrganizationAssociationLanguageUse',
'edfi', 'LanguageUseDescriptor',
'edfi', 'LanguageUseType'
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationLanguageUse]
ALTER COLUMN [LanguageUseDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationLanguageUse]
DROP COLUMN [LanguageUseTypeId]
GO
