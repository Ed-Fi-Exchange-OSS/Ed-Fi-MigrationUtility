-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentEducationOrganizationResponsibilityAssociation]'
GO

CREATE TABLE [edfi].[StudentEducationOrganizationResponsibilityAssociation]
(
[BeginDate] [date] NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[ResponsibilityDescriptorId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[EndDate] [date] NULL,
[CreateDate] [datetime] NOT NULL,
[LastModifiedDate] [datetime] NOT NULL,
[Id] [uniqueidentifier] NOT NULL 
)
GO

;WITH [StudentSchoolEntryDate] AS
(
	SELECT ssa.[StudentUSI], ssa.[SchoolId], MIN(ssa.EntryDate) AS [Date]
	FROM [edfi].[StudentSchoolAssociation] ssa
	GROUP BY ssa.[StudentUSI], ssa.[SchoolId]
),
[StudentDistrictEntryDate] AS
(
	SELECT ssa.[StudentUSI], s.[LocalEducationAgencyId], MIN(ssa.EntryDate) AS [Date]
	FROM [edfi].[StudentSchoolAssociation] ssa
	INNER JOIN [edfi].[School] s
		ON s.[SchoolId] = ssa.[SchoolId]
	GROUP BY ssa.[StudentUSI], s.[LocalEducationAgencyId]
),
[DefaultSchoolEntryDate] AS
(
	SELECT c.[SchoolId], MIN([BeginDate]) AS [Date]
	FROM [migration_tempdata].[CalendarConfig] c
	GROUP BY c.[SchoolId]
),
[DefaultDistrictEntryDate] AS
(
	SELECT s.[LocalEducationAgencyId], MIN([BeginDate]) AS [Date]
	FROM [migration_tempdata].[CalendarConfig] c
	INNER JOIN [edfi].[School] s
		ON s.[SchoolId] = c.[SchoolId]
	GROUP BY s.[LocalEducationAgencyId]
)

INSERT [edfi].[StudentEducationOrganizationResponsibilityAssociation]
(
[BeginDate],
[EducationOrganizationId],
[ResponsibilityDescriptorId],
[StudentUSI],
[CreateDate],
[LastModifiedDate],
[Id]
)
SELECT
COALESCE(StudentSchoolEntryDate.[Date], StudentDistrictEntryDate.[Date], DefaultSchoolEntryDate.[Date], DefaultDistrictEntryDate.[Date], (SELECT MIN([BeginDate]) FROM [migration_tempdata].[CalendarConfig])),
s.[EducationOrganizationId],
s.[ResponsibilityDescriptorId],
s.[StudentUSI],
GETDATE(),
GETDATE(),
NEWID()
FROM [edfi].[StudentEducationOrganizationAssociation] s
LEFT JOIN [StudentSchoolEntryDate]
	ON s.[StudentUSI] = [StudentSchoolEntryDate].[StudentUSI]
	AND s.[EducationOrganizationId] = [StudentSchoolEntryDate].[SchoolId]
LEFT JOIN [StudentDistrictEntryDate]
	ON s.[StudentUSI] = [StudentDistrictEntryDate].[StudentUSI]
	AND s.[EducationOrganizationId] = [StudentDistrictEntryDate].[LocalEducationAgencyId]
LEFT JOIN [DefaultSchoolEntryDate]
	ON s.[EducationOrganizationId] = [DefaultSchoolEntryDate].[SchoolId]
LEFT JOIN [DefaultDistrictEntryDate]
	ON s.[EducationOrganizationId] = [DefaultDistrictEntryDate].[LocalEducationAgencyId]
