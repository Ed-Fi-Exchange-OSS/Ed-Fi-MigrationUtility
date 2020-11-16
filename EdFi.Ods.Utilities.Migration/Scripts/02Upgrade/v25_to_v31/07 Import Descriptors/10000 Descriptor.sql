-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Backing up current Descriptor state'
GO

CREATE SCHEMA [v2_to_v3_deprecated]
GO

CREATE TABLE [v2_to_v3_deprecated].[DescriptorBackup]
(
	[DescriptorId] [int] NOT NULL,
	[Namespace] [nvarchar] (255) NOT NULL,
	[CodeValue] [nvarchar] (50) NOT NULL,
	[ShortDescription] [nvarchar] (75) NULL,
	[Description] [nvarchar] (1024) NULL,
	[PriorDescriptorId] [int] NULL,
	[EffectiveBeginDate] [date] NULL,
	[EffectiveEndDate] [date] NULL,
	[Id] [uniqueidentifier] NULL,
	[LastModifiedDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[BackupDate] [datetime] NOT NULL,
	CONSTRAINT [PK_DescriptorBackup] PRIMARY KEY CLUSTERED ([DescriptorId])
)

CREATE TABLE [v2_to_v3_deprecated].[TypeToDescriptorAssociationBackup]
(
	[DescriptorId] INT NOT NULL,
	[DescriptorName] NVARCHAR(128) NOT NULL,
	[TypeName] NVARCHAR(128) NOT NULL,
	[DescriptorCodeValue] NVARCHAR(50) NOT NULL,
	[Namespace] [nvarchar] (255) NOT NULL,
	[TypeCodeValue] NVARCHAR(200) NULL,
	[BackupDate] DATE NOT NULL,
	CONSTRAINT PK_TypeToDescriptorAssociationBackup PRIMARY KEY CLUSTERED ([DescriptorId], [TypeName]),
	CONSTRAINT FK_TypeToDescriptorAssociationBackup_DescriptorBackup FOREIGN KEY ([DescriptorId]) REFERENCES [v2_to_v3_deprecated].[DescriptorBackup] ([DescriptorId])
)

INSERT [v2_to_v3_deprecated].[DescriptorBackup]
(
	[DescriptorId],
	[Namespace],
	[CodeValue],
	[ShortDescription],
	[Description],
	[PriorDescriptorId],
	[EffectiveBeginDate],
	[EffectiveEndDate],
	[Id],
	[LastModifiedDate],
	[CreateDate],
	[BackupDate]
)
SELECT 
	[DescriptorId],
	[Namespace],
	[CodeValue],
	[ShortDescription],
	[Description],
	[PriorDescriptorId],
	[EffectiveBeginDate],
	[EffectiveEndDate],
	[Id],
	[LastModifiedDate],
	[CreateDate],
	GETDATE()
FROM [edfi].[Descriptor]
GO

PRINT N'Backing up 2.0 type references on Ed-Fi Descriptor tables'
GO

DECLARE @EdFiDescriptorTableName NVARCHAR(128)
DECLARE @EdFiTypeTableName NVARCHAR(128)
DECLARE @DescriptorIdColumnName NVARCHAR(128)
DECLARE @TypeIdColumnName NVARCHAR(128)

DECLARE FORWARD_CURSOR CURSOR LOCAL FAST_FORWARD FOR 
	SELECT o.name AS EdFiDescriptorTableName
	, OBJECT_NAME(fk_type.referenced_object_id) AS EdFiTypeTableName
	, COL_NAME(o.object_id, fk_descriptor.parent_column_id) AS DescriptorIdColumnName
	, COL_NAME(o.object_id, fk_type.parent_column_id) AS TypeIdColumnName
	FROM sys.objects o
	INNER JOIN sys.foreign_key_columns fk_descriptor
	ON fk_descriptor.parent_object_id = o.object_id
	INNER JOIN sys.foreign_key_columns fk_type
	ON fk_type.parent_object_id = o.object_id
	WHERE o.type = 'U'
	AND o.name LIKE '%Descriptor'
	AND OBJECT_SCHEMA_NAME(o.object_id) = 'edfi'
	AND OBJECT_NAME(fk_descriptor.referenced_object_id) = 'Descriptor'							 
	AND COL_NAME(fk_descriptor.parent_object_id, fk_descriptor.parent_column_id) LIKE '%DescriptorId'
	AND COL_NAME(fk_descriptor.referenced_object_id, fk_descriptor.referenced_column_id) = 'DescriptorId'
	AND OBJECT_NAME(fk_type.referenced_object_id) like '%Type'
	AND OBJECT_SCHEMA_NAME(fk_type.referenced_object_id) = 'edfi'					 
	AND COL_NAME(fk_type.parent_object_id, fk_type.parent_column_id) LIKE '%TypeId'
	AND COL_NAME(fk_type.parent_object_id, fk_type.parent_column_id) = COL_NAME(fk_type.referenced_object_id, fk_type.referenced_column_id)
	ORDER BY EdFiDescriptorTableName, EdFiTypeTableName, DescriptorIdColumnName, TypeIdColumnName
OPEN FORWARD_CURSOR 
FETCH NEXT FROM FORWARD_CURSOR INTO @EdFiDescriptorTableName, @EdFiTypeTableName, @DescriptorIdColumnName, @TypeIdColumnName
WHILE (@@FETCH_STATUS = 0)
BEGIN
	PRINT N'Backing up ' + @EdFiTypeTableName + ' references on ' + @EdFiDescriptorTableName
	EXEC('
	INSERT [v2_to_v3_deprecated].[TypeToDescriptorAssociationBackup]
	(
		[DescriptorId],
		[DescriptorName],
		[TypeName],
		[DescriptorCodeValue],
		[Namespace],
		[TypeCodeValue],
		[BackupDate]
	)
	SELECT DISTINCT
		d.[DescriptorId],
		''' + @EdFiDescriptorTableName + ''',
		''' + @EdFiTypeTableName + ''',
		d.[CodeValue],
		d.[Namespace],
		t.[CodeValue],
		GETDATE()
	FROM [edfi].[' + @EdFiDescriptorTableName + '] src
	INNER JOIN [edfi].[Descriptor] d
		ON src.[' + @DescriptorIdColumnName + '] =  d.[DescriptorId]
	LEFT JOIN [edfi].[' + @EdFiTypeTableName + '] t
		ON t.[' + @TypeIdColumnName + '] = src.[' + @TypeIdColumnName + ']')
	FETCH NEXT FROM FORWARD_CURSOR INTO @EdFiDescriptorTableName, @EdFiTypeTableName, @DescriptorIdColumnName, @TypeIdColumnName
END
CLOSE FORWARD_CURSOR
DEALLOCATE FORWARD_CURSOR
GO

PRINT N'Updating Ed-Fi CodeValues'
GO

IF OBJECT_ID('tempdb..#RenamedCodeValues') IS NOT NULL
BEGIN
    DROP TABLE #RenamedCodeValues
END

CREATE TABLE #RenamedCodeValues
(
	[OldCodeValue] NVARCHAR (100) NOT NULL PRIMARY KEY,
	[NewCodeValue] NVARCHAR (100) NOT NULL UNIQUE,
)

INSERT #RenamedCodeValues ([OldCodeValue], [NewCodeValue]) VALUES
('Completion of requirement, but no units of value a', 'Completion of requirement, but no units awarded'),
('Student Completed Term Requirements Sooner Than Ex', 'Completed Term Requirements Sooner Than Expected'),
('Continuation Of Previous Year''s Disciplinary Actio', 'Continuation Of Prior Year''s Disciplinary Action'),
('Term Decreased Due To Extenuating Health-Related C', 'Term Decreased Due To Health-Related Circumstances'),
('Term Modified By Placement Program Due To Student', 'Term Modified By Placement Program Due To Behavior'),
('Non-special education student used calculator on n', 'Non-special ed student used calculator'),
('Yes, with reporting of one or more students for an', 'Yes, with one or more student offenses'),
('Changed Agency', 'Changed'),
('American Indian - Alaskan Native', 'American Indian - Alaska Native'),
('Not designated as a Title I Part A school', 'Not A Title I School'),
('Title I Part A Schoolwide Assistance Program Schoo', 'Title I Schoolwide School'),
('Title I Part A Targeted Assistance School', 'Title I Targeted Assistance School'),
('Title I targeted eligible school - no program', 'Title I Targeted Assistance Eligible-No Program'),
('Title I school wide eligible - Title I targeted pr', 'Title I Schoolwide eligible-Target Assist Program'),
('Title I school wide eligible school - no program', 'Title I Schoolwide Eligible School-No Program'),
('M1 - Foreign Student pursuing vocational or non-ac', 'M1 - Foreign Student vocational/non-academic Visa')

UPDATE [edfi].[Descriptor]
SET [CodeValue] = r.[NewCodeValue]
FROM [edfi].[Descriptor] d
INNER JOIN #RenamedCodeValues r
ON r.[OldCodeValue] = d.[CodeValue]
WHERE
(
	[Namespace] LIKE 'http://ed-fi.org%'
	OR [Namespace] LIKE 'http://www.ed-fi.org%'
)
AND NOT EXISTS
(
	SELECT 1 FROM [edfi].[Descriptor]
	WHERE [Namespace] = d.[Namespace]
	AND [CodeValue] = r.[NewCodeValue]
)

UPDATE [edfi].[AcademicHonorCategoryType]
SET [CodeValue] = r.[NewCodeValue]
FROM [edfi].[AcademicHonorCategoryType] t
INNER JOIN #RenamedCodeValues r
ON r.[OldCodeValue] = t.[CodeValue]
WHERE NOT EXISTS
(
	SELECT 1 FROM [edfi].[AcademicHonorCategoryType]
	WHERE [CodeValue] = r.[NewCodeValue]
)


UPDATE [edfi].[DisciplineActionLengthDifferenceReasonType]
SET [CodeValue] = r.[NewCodeValue]
FROM [edfi].[AcademicHonorCategoryType] t
INNER JOIN #RenamedCodeValues r
ON r.[OldCodeValue] = t.[CodeValue]
WHERE NOT EXISTS
(
	SELECT 1 FROM [edfi].[AcademicHonorCategoryType]
	WHERE [CodeValue] = r.[NewCodeValue]
)

UPDATE [edfi].[EventCircumstanceType]
SET [CodeValue] = r.[NewCodeValue]
FROM [edfi].[EventCircumstanceType] t
INNER JOIN #RenamedCodeValues r
ON r.[OldCodeValue] = t.[CodeValue]
WHERE NOT EXISTS
(
	SELECT 1 FROM [edfi].[EventCircumstanceType]
	WHERE [CodeValue] = r.[NewCodeValue]
)

UPDATE [edfi].[GunFreeSchoolsActReportingStatusType]
SET [CodeValue] = r.[NewCodeValue]
FROM [edfi].[GunFreeSchoolsActReportingStatusType] t
INNER JOIN #RenamedCodeValues r
ON r.[OldCodeValue] = t.[CodeValue]
WHERE NOT EXISTS
(
	SELECT 1 FROM [edfi].[GunFreeSchoolsActReportingStatusType]
	WHERE [CodeValue] = r.[NewCodeValue]
)

UPDATE [edfi].[OperationalStatusType]
SET [CodeValue] = r.[NewCodeValue]
FROM [edfi].[OperationalStatusType] t
INNER JOIN #RenamedCodeValues r
ON r.[OldCodeValue] = t.[CodeValue]
WHERE NOT EXISTS
(
	SELECT 1 FROM [edfi].[OperationalStatusType]
	WHERE [CodeValue] = r.[NewCodeValue]
)

UPDATE [edfi].[RaceType]
SET [CodeValue] = r.[NewCodeValue]
FROM [edfi].[RaceType] t
INNER JOIN #RenamedCodeValues r
ON r.[OldCodeValue] = t.[CodeValue]
WHERE NOT EXISTS
(
	SELECT 1 FROM [edfi].[RaceType]
	WHERE [CodeValue] = r.[NewCodeValue]
)

UPDATE [edfi].[TeachingCredentialBasisType]
SET [CodeValue] = r.[NewCodeValue]
FROM [edfi].[TeachingCredentialBasisType] t
INNER JOIN #RenamedCodeValues r
ON r.[OldCodeValue] = t.[CodeValue]
WHERE NOT EXISTS
(
	SELECT 1 FROM [edfi].[TeachingCredentialBasisType]
	WHERE [CodeValue] = r.[NewCodeValue]
)

UPDATE [edfi].[TitleIPartASchoolDesignationType]
SET [CodeValue] = r.[NewCodeValue]
FROM [edfi].[TitleIPartASchoolDesignationType] t
INNER JOIN #RenamedCodeValues r
ON r.[OldCodeValue] = t.[CodeValue]
WHERE NOT EXISTS
(
	SELECT 1 FROM [edfi].[TitleIPartASchoolDesignationType]
	WHERE [CodeValue] = r.[NewCodeValue]
)

UPDATE [edfi].[VisaType]
SET [CodeValue] = r.[NewCodeValue]
FROM [edfi].[VisaType] t
INNER JOIN #RenamedCodeValues r
ON r.[OldCodeValue] = t.[CodeValue]
WHERE NOT EXISTS
(
	SELECT 1 FROM [edfi].[VisaType]
	WHERE [CodeValue] = r.[NewCodeValue]
)