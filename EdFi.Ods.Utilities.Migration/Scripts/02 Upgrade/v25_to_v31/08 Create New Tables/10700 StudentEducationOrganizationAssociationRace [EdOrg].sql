-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentEducationOrganizationAssociationRace]'
GO

CREATE TABLE [edfi].[StudentEducationOrganizationAssociationRace]
(
[EducationOrganizationId] [int] NOT NULL,
[RaceTypeId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[StudentEducationOrganizationAssociationRace]
(
[EducationOrganizationId],
[RaceTypeId],
[StudentUSI],
[CreateDate]
)
SELECT
a.[EducationOrganizationId],
s.[RaceTypeId],
s.[StudentUSI],
ISNULL(s.[CreateDate], GETDATE())
FROM [edfi].[StudentRace] s
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
	ON s.[StudentUSI] = a.[StudentUSI]
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentEducationOrganizationAssociationRace',
'edfi', 'RaceDescriptor',
'edfi', 'RaceType'
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationRace]
ALTER COLUMN [RaceDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationRace]
DROP COLUMN [RaceTypeId]
GO
