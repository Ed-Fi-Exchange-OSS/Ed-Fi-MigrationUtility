-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Generating StudentAssessment identity mappings'
GO

IF OBJECT_ID('migration_tempdata.StudentAssessmentIdentityMapping', 'U') IS NOT NULL 
DROP TABLE [migration_tempdata].[StudentAssessmentIdentityMapping]
GO

/*
This mapping table will be used to select the correct [StudentAssessmentIdentifier] 
for tables previously referencing the old StudentAssessment Primary key

Old StudentAssessment Primary Key:
	[AssessmentTitle]
	[AssessedGradeLevelDescriptorId]
	[AcademicSubjectDescriptorId]
	[Version]
	[StudentUSI]
	[AdministrationDate]
New Primary key:
	[StudentUSI]
	[AssessmentIdentifier]
	[Namespace]
	[StudentAssessmentIdentifier] 

Conversion of ([AssessmentTitle], [AssessedGradeLevelDescriptorId], [AcademicSubjectDescriptorId], [Version]) to  ([AssessmentIdentifier], [Namespace])
is handled in  [migration_tempdata].[AssessmentIdentityMapping]

This table will contain a new, generated [StudentAssessmentIdentifier] based on data from the remaining unmapped columns
*/
CREATE TABLE [migration_tempdata].[StudentAssessmentIdentityMapping]
(
	[StudentUSI] [int] NOT NULL,
	[AssessmentTitle] [nvarchar](60) NOT NULL,
	[AcademicSubjectDescriptorId] [int] NOT NULL,
	[AssessedGradeLevelDescriptorId] [int] NOT NULL,
	[Version] [int] NOT NULL,
	[AdministrationDate] [date] NOT NULL,
	[StudentAssessmentIdentifier] [nvarchar](60) NOT NULL,
	CONSTRAINT [PK_StudentAssessmentIdentityMapping_OldPK] PRIMARY KEY CLUSTERED
	(
		[StudentUSI] ASC,
		[AssessmentTitle] ASC,
		[AcademicSubjectDescriptorId] ASC,
		[AssessedGradeLevelDescriptorId] ASC,
		[Version] ASC,
		[AdministrationDate] ASC
	)
)
GO

ALTER TABLE [migration_tempdata].[StudentAssessmentIdentityMapping] 
ADD CONSTRAINT [FK_StudentAssessmentIdentityMapping_AssessmentIdentityMapping]
FOREIGN KEY
	([AssessmentTitle], [AssessedGradeLevelDescriptorId], [AcademicSubjectDescriptorId], [Version])
REFERENCES [migration_tempdata].[AssessmentIdentityMapping] 
	([AssessmentTitle], [AssessedGradeLevelDescriptorId], [AcademicSubjectDescriptorId], [Version])
GO



INSERT [migration_tempdata].[StudentAssessmentIdentityMapping]
(
	[StudentUSI],
	[AssessmentTitle],
	[AcademicSubjectDescriptorId],
	[AssessedGradeLevelDescriptorId],
	[Version],
	[AdministrationDate],
	[StudentAssessmentIdentifier]
)
SELECT
	[s].[StudentUSI],
	[s].[AssessmentTitle],
	[s].[AcademicSubjectDescriptorId],
	[s].[AssessedGradeLevelDescriptorId],
	[s].[Version],
	[s].[AdministrationDate],
	CASE WHEN LEN (CONCAT ([a].[AssessmentIdentifier], '_', [s].[AdministrationDate])) <= 60
		THEN CONCAT ([a].[AssessmentIdentifier], '_', [s].[AdministrationDate])
	ELSE
		[migration_tempdata].[string_to_hash_id] (CONCAT ([s].[StudentUSI], [s].[AssessmentTitle], [s].[Version], [s].[AdministrationDate]))
	END
	AS [AssessmentIdentifier]
FROM [edfi].[StudentAssessment] [s]
INNER JOIN [migration_tempdata].[AssessmentIdentityMapping] [a]
	 ON [s].[AssessmentTitle] = [a].[AssessmentTitle]
	 AND [s].[AssessedGradeLevelDescriptorId] = [a].[AssessedGradeLevelDescriptorId]
	 AND [s].[AcademicSubjectDescriptorId] = [a].[AcademicSubjectDescriptorId]
	 AND [s].[Version] = [a].[Version]
GO
