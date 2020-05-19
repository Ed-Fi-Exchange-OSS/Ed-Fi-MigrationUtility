-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentEducationOrganizationAssociationCohortYear]'
GO

CREATE TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear]
(
[CohortYearTypeId] [int] NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[SchoolYear] [smallint] NOT NULL,
[StudentUSI] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[StudentEducationOrganizationAssociationCohortYear]
(
[CohortYearTypeId],
[EducationOrganizationId],
[SchoolYear],
[StudentUSI],
[CreateDate]
)
SELECT DISTINCT
s.[CohortYearTypeId],
ISNULL(c.[EducationOrganizationId], a.[EducationOrganizationId]),
s.[SchoolYear],
s.[StudentUSI],
ISNULL(s.[CreateDate], GETDATE())
FROM [edfi].[StudentCohortYear] s
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
	ON s.[StudentUSI] = a.[StudentUSI]
LEFT JOIN [edfi].[StudentCohortAssociation] c
	ON s.[StudentUSI] = c.[StudentUSI]
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentEducationOrganizationAssociationCohortYear',
'edfi', 'CohortYearTypeDescriptor',
'edfi', 'CohortYearType'
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear]
ALTER COLUMN [CohortYearTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationCohortYear]
DROP COLUMN [CohortYearTypeId]
GO
