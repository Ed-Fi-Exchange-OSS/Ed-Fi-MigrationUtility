-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Generating LearningObjective identity mappings'
GO

IF OBJECT_ID('migration_tempdata.LearningObjectiveIdentityMapping', 'U') IS NOT NULL 
DROP TABLE [migration_tempdata].[LearningObjectiveIdentityMapping]
GO

/*
This mapping table will be used to select the correct [LearningObjectiveId] and [Namespace]
for tables previously referencing the old LearningObjective Primary key

Old StudentAssessment Primary Key:
	[Objective],
	[AcademicSubjectDescriptorId],
	[ObjectiveGradeLevelDescriptorId]
New Primary key:
	[LearningObjectiveId]
	[Namespace]

The [LearningObjectiveId] already exists and is optional in v24/v30.  This mapping table will generate
default LearningObjectiveId entries where needed, and resolve duplicate keys
*/

CREATE TABLE [migration_tempdata].[LearningObjectiveIdentityMapping]
(
	[Objective] [nvarchar](60) NOT NULL,
	[AcademicSubjectDescriptorId] [int] NOT NULL,
	[ObjectiveGradeLevelDescriptorId] [int] NOT NULL,
	[Namespace] [nvarchar](255) NOT NULL,
	[LearningObjectiveId] [nvarchar](60) NOT NULL,
	CONSTRAINT [PK_LearningObjectiveIdentityMapping_OldPK] PRIMARY KEY CLUSTERED
	(
		[Objective] ASC,
		[AcademicSubjectDescriptorId] ASC,
		[ObjectiveGradeLevelDescriptorId] ASC
	),
	CONSTRAINT UC_LearningObjectiveIdentityMapping_NewPK UNIQUE ([LearningObjectiveId], [Namespace])
)
GO


;WITH [AllLearningObjectiveKeys] AS
(
	SELECT
		[Objective],
		[AcademicSubjectDescriptorId],
		[ObjectiveGradeLevelDescriptorId],
		[Namespace],
		[LearningObjectiveId],
		/*
			Partition function will be used to resolve duplicate 
			keys after replacing currently null [LearningObjectiveId] values 
			with a default value ([Objective]) 
		*/
		ROW_NUMBER() OVER
		(
			PARTITION BY ISNULL([LearningObjectiveId], [Objective]), [Namespace]
			ORDER BY [LearningObjectiveId] DESC, [CreateDate] DESC
		) AS [LearningObjectiveIdRowNumberOverNewPK]
	FROM [edfi].[LearningObjective]
)

INSERT [migration_tempdata].[LearningObjectiveIdentityMapping]
(
	[Objective],
	[AcademicSubjectDescriptorId],
	[ObjectiveGradeLevelDescriptorId],
	[Namespace],
	[LearningObjectiveId]
)
SELECT 
	[Objective],
	[AcademicSubjectDescriptorId],
	[ObjectiveGradeLevelDescriptorId],
	[Namespace],
	CASE
		WHEN ([LearningObjectiveIdRowNumberOverNewPK] = 1)
			THEN ISNULL([LearningObjectiveId], [Objective])
		WHEN ([LearningObjectiveId] IS NULL)
			THEN [migration_tempdata].[string_to_hash_id] (CONCAT([Objective], [AcademicSubjectDescriptorId], [ObjectiveGradeLevelDescriptorId]))
		ELSE
			[migration_tempdata].[append_to_key] ([LearningObjectiveId], CONVERT(NVARCHAR(max), [LearningObjectiveIdRowNumberOverNewPK]), 60)
		END 
	AS [LearningObjectiveId]
FROM [AllLearningObjectiveKeys]
GO

	