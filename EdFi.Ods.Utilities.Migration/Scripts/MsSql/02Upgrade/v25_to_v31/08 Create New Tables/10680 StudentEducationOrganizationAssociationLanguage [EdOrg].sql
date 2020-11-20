-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentEducationOrganizationAssociationLanguage]'
GO
CREATE TABLE [edfi].[StudentEducationOrganizationAssociationLanguage]
(
[EducationOrganizationId] [int] NOT NULL,
[LanguageDescriptorId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[StudentEducationOrganizationAssociationLanguage]
(
[EducationOrganizationId],
[LanguageDescriptorId],
[StudentUSI],
[CreateDate]
)
SELECT
a.[EducationOrganizationId],
s.[LanguageDescriptorId],
s.[StudentUSI],
ISNULL(s.[CreateDate], GETDATE())
FROM [edfi].[StudentLanguage] s
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
	ON s.[StudentUSI] = a.[StudentUSI]
GO
