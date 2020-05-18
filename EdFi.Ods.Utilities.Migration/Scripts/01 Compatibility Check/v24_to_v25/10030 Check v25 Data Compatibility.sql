-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Checking data preconditions for migration'
GO

IF EXISTS
(
	SELECT *
	FROM [edfi].[Assessment] a
	LEFT JOIN [edfi].[AssessmentFamily] f
		ON a.[AssessmentFamilyTitle] = f.[AssessmentFamilyTitle]
	WHERE COALESCE(a.[Namespace], f.[Namespace]) IS NULL
)
BEGIN
	DECLARE @ValidNamespaceInstructionsVersionSpecific nvarchar(max) =
	CASE
		WHEN '$RequestedFinalUpgradeVersion$' like '2%'
			THEN 'Please insert a [Namespace] for each assessment in the format "[scheme]://[organization-name]/Assessment/Assessment.xml"'
		WHEN '$RequestedFinalUpgradeVersion$' like '3%'
			THEN 'Please insert a [Namespace] for each assessment in the format "uri://[organization-name]/Assessment"'
		ELSE
			'Please insert a valid [Namespace] for each assessment'
	END

	DECLARE @Newline CHAR(2) = CHAR(13) + CHAR(10)
	DECLARE @ErrorMessage NVARCHAR(max) = N'Action Required - [edfi].[Assessment]: All assessments must have a [Namespace] set.'
	+@Newline
	+@Newline
	+@ValidNamespaceInstructionsVersionSpecific
	+@Newline
	+'This will become part of the new [edfi].[Assessment] primary key beginning in version 2.5.'
	PRINT @ErrorMessage;
	THROW 55001, @ErrorMessage, 1
END
GO

DECLARE @EdFiTablesNewInV25 TABLE
(
	[ObjectName] NVARCHAR(128) NOT NULL
)

INSERT @EdFiTablesNewInV25 ([ObjectName])
VALUES
	('AssessmentAcademicSubject'),
	('AssessmentAssessedGradeLevel'),
	('LearningObjectiveAcademicSubject'),
	('LearningObjectiveGradeLevel')
	
DECLARE @ExistingTablesWithConflictingNames TABLE 
(
	[ListItem] NVARCHAR(130) NOT NULL
)

INSERT @ExistingTablesWithConflictingNames ([ListItem])
SELECT DISTINCT CONCAT
(
'* edfi.', e.[ObjectName]
)
FROM @EdFiTablesNewInV25 e
INNER JOIN [sys].[objects] o
	ON o.[type] = 'U'
	AND o.[name] COLLATE DATABASE_DEFAULT = e.[ObjectName]
	AND OBJECT_SCHEMA_NAME(o.[object_id]) = 'edfi'

IF EXISTS
(
	SELECT * FROM @ExistingTablesWithConflictingNames 
)
BEGIN
	DECLARE @TableList NVARCHAR(max)
	DECLARE @Newline CHAR(2) = CHAR(13) + CHAR(10)

	SELECT @TableList = COALESCE(@TableList + @Newline ,'') + [ListItem]
	FROM @ExistingTablesWithConflictingNames
	
	DECLARE @FinalErrorMessage NVARCHAR(max)
	SELECT  @FinalErrorMessage = CONCAT('Action Required - Conflicting table name: The following existing table(s) will be created as a new part of the new schema'
	, @Newline
	, @Newline
	, @TableList
	, @Newline
	, @Newline
	, 'The above table(s) must be renamed or dropped before the upgrade can proceed.  You may also optionally create your own custom scripts to move existing data into the new tables once they have been created.')
	;THROW 53012, @FinalErrorMessage, 1
END
ELSE
	PRINT N'Table compatibility check: OK'
GO
