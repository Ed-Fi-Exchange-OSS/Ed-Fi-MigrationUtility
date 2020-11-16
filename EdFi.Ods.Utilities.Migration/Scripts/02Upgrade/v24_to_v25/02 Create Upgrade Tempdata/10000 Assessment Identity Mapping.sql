-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Generating Assessment identity mappings'
GO

IF OBJECT_ID('migration_tempdata.AssessmentIdentityMapping', 'U') IS NOT NULL 
DROP TABLE [migration_tempdata].[AssessmentIdentityMapping]
GO

/*
This mapping table will be used to select the correct [AssessmentIdentifier] and [Namespace]
for tables previously referencing the old Assessment Primary Key

Old Primary Key:
	[AssessmentTitle]
	[AssessedGradeLevelDescriptorId]
	[AcademicSubjectDescriptorId]
	[Version]
New Primary key:
	[AssessmentIdentifier]
	[Namespace]

Note:  [AssessedGradeLevelDescriptorId] and [AcademicSubjectDescriptorId] will be dropped 
from [edfi].[Assessment] and moved to another table.
*/
CREATE TABLE [migration_tempdata].[AssessmentIdentityMapping]
(
	[AssessmentTitle] [nvarchar](60) NOT NULL,
	[AssessedGradeLevelDescriptorId] [int] NOT NULL,
	[AcademicSubjectDescriptorId] [int] NOT NULL,
	[Version] [int] NOT NULL,
	[Namespace] [nvarchar] (255) NOT NULL,
	[AssessmentIdentifier] [nvarchar] (60) NOT NULL,
	CONSTRAINT [PK_AssessmentIdentityMapping_OldPK] PRIMARY KEY CLUSTERED
	(
		[AssessmentTitle] ASC,
		[AssessedGradeLevelDescriptorId] ASC,
		[AcademicSubjectDescriptorId] ASC,
		[Version] ASC
	),
	CONSTRAINT UC_AssessmentIdentityMapping_NewPK UNIQUE ([AssessmentIdentifier], [Namespace], [AssessedGradeLevelDescriptorId], [AcademicSubjectDescriptorId])
)
GO

;WITH [AssessmentKeys] AS
(
SELECT
	a.[AssessmentTitle],
	a.[AssessedGradeLevelDescriptorId],
	a.[AcademicSubjectDescriptorId],
	a.[Version],
	COALESCE(a.[Namespace], f.[Namespace]) as [Namespace],
	/*
	The following partitions will be used to generate a human
	readable [AssessmentIdentifier] that is unique under the new primary key.

	The new identifier will be generated based on columns dropped from the
	old primary key, [AssessmentTitle] and [Version] where possible.
	*/
	ROW_NUMBER() OVER
	(
		PARTITION BY a.[AssessmentTitle], COALESCE(a.[Namespace], f.[Namespace])
		ORDER BY a.[Namespace] DESC, f.[Namespace] DESC, a.[Version], a.[CreateDate] DESC
	) AS [TitleRowOverNewAssessmentKey],
	ROW_NUMBER() OVER
	(
		PARTITION BY a.[AssessmentTitle], COALESCE(a.[Namespace], f.[Namespace]), a.[Version]
		ORDER BY a.[Namespace] DESC, f.[Namespace] DESC, a.[Version], a.[CreateDate] DESC
	) AS [VersionRowOverNewAssessmentKey]
FROM [edfi].[Assessment] a
LEFT JOIN [edfi].[AssessmentFamily] f
	ON a.[AssessmentFamilyTitle] = f.[AssessmentFamilyTitle]
)
INSERT [migration_tempdata].[AssessmentIdentityMapping]
(
	[AssessmentTitle],
	[AssessedGradeLevelDescriptorId],
	[AcademicSubjectDescriptorId],
	[Version],
	[Namespace],
	[AssessmentIdentifier]
)
SELECT
	a.[AssessmentTitle],
	a.[AssessedGradeLevelDescriptorId],
	a.[AcademicSubjectDescriptorId],
	a.[Version],
	a.[Namespace],
	/*
	Generates a human readable [AssessmentIdentifier] where possible based on the previous
	assessment title and version.

	Some assessments may be duplicates of each other after dropping subject and
	grade level, but these records are not safe to clean up on the upgrader's behalf
	because there are other referencing tables (and potentially extensions) that use
    the assessment's old primary key as part of their own. 

	In cases where the title and version are not suitable to generate a unique 
	primary key under the new schema, a new identifier will be generated based on 
	the old assessment key. 
	*/
	CASE WHEN (a.[TitleRowOverNewAssessmentKey] = 1)
		THEN a.[AssessmentTitle] 
	WHEN (a.[VersionRowOverNewAssessmentKey] = 1)
		THEN [migration_tempdata].[append_to_key] (a.[AssessmentTitle], CONVERT(NVARCHAR(max), a.[Version]), 60)
	ELSE
		CONVERT(NVARCHAR(60), [migration_tempdata].[string_to_guid] (CONCAT(a.[AssessmentTitle], a.[AssessedGradeLevelDescriptorId],a.[AcademicSubjectDescriptorId], a.[Version])))
	END
	AS [AssessmentIdentifier]
FROM [AssessmentKeys] a
