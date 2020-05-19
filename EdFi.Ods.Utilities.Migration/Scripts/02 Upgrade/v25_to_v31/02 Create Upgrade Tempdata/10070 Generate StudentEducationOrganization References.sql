-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Generating StudentEducationOrganization references'
GO

IF OBJECT_ID('migration_tempdata.StudentEducationOrganizationAll', 'U') IS NOT NULL 
DROP TABLE [migration_tempdata].StudentEducationOrganizationAll
GO

CREATE TABLE [migration_tempdata].[StudentEducationOrganizationAll]
(
[StudentUSI] INT NOT NULL,
[EducationOrganizationId] INT NOT NULL
CONSTRAINT [StudentEducationOrganizationAll_PK] PRIMARY KEY CLUSTERED ([StudentUSI], [EducationOrganizationId] )
)
GO

INSERT [migration_tempdata].[StudentEducationOrganizationAll]
(
[StudentUSI],
[EducationOrganizationId]
)
SELECT [StudentUSI], [EducationOrganizationId]
FROM [migration_tempdata].[get_all_student_education_orgs_v20]()
GO

DROP FUNCTION [migration_tempdata].[get_all_student_education_orgs_v20]
GO