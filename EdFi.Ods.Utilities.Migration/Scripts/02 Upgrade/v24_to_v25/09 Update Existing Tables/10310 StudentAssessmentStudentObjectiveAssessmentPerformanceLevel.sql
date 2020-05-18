-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding reporting method to [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]'
GO

ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]
ADD [AssessmentReportingMethodTypeId] INT NULL
GO

IF NOT EXISTS (SELECT 1 FROM [edfi].[AssessmentReportingMethodType] WHERE [CodeValue] = 'Not Applicable')
BEGIN
	INSERT [edfi].[AssessmentReportingMethodType]
	(
		[CodeValue],
		[Description],
		[ShortDescription],
		[CreateDate],
		[LastModifiedDate],
		[Id]
	)
	VALUES
	(
		N'Not Applicable',
		N'Not Applicable',
		N'Not Applicable',
		GETDATE(),
		GETDATE(),
		NEWID()
	)
END
GO

DECLARE @defaultReportingMethodTypeId INT
SELECT @defaultReportingMethodTypeId =
(
	SELECT TOP (1) [AssessmentReportingMethodTypeId]
	FROM [edfi].[AssessmentReportingMethodType]
	WHERE [CodeValue] = 'Not Applicable'
)

/*
Business Rule: In the event that there are multiple conflicting ReportingMethod options associated
with a single v3 StudentAssessmentStudentObjectiveAssessmentPerformanceLevel, select the ReportingMethod value that is associated
with the corresponding v3 StudentAssessmentStudentObjectiveAssessmentPerformanceLevel primary key the most.  If there are an equal number
of conflicting records, CreateDate will be used as a tiebreaker.
*/
;WITH [AllReportingMethodOptions] AS
(
SELECT s.[StudentUSI], --Select all available options for ReportingMethod for each v3 StudentAssessmentStudentObjectiveAssessmentPerformanceLevel, the number of times each value is used, and their create dates
s.[AssessmentTitle],
s.[AssessedGradeLevelDescriptorId],
s.[IdentificationCode],
s.[AdministrationDate],
s.[PerformanceLevelDescriptorId],
s.[Version],
s.[AcademicSubjectDescriptorId],
o.[AssessmentReportingMethodTypeId],
s.[CreateDate],
ROW_NUMBER() OVER
(
	PARTITION BY s.[AssessmentTitle], s.[AcademicSubjectDescriptorId], s.[AssessedGradeLevelDescriptorId], s.[Version], s.[IdentificationCode], s.[AssessmentReportingMethodTypeId]
	ORDER BY s.[AdministrationDate], s.[CreateDate]
) AS [AssessmentReportingMethodOrderKey]
FROM [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel] s
INNER JOIN [edfi].[ObjectiveAssessmentPerformanceLevel] o
ON s.[AssessmentTitle] = o.[AssessmentTitle]
AND s.[AcademicSubjectDescriptorId] = o.[AcademicSubjectDescriptorId]
AND s.[AssessedGradeLevelDescriptorId] = o.[AssessedGradeLevelDescriptorId]
AND s.[Version] = o.[Version]
AND s.[IdentificationCode] = o.[IdentificationCode]
AND s.[PerformanceLevelDescriptorId] = o.[PerformanceLevelDescriptorId]
),

[AssessmentReportingMethodDescriptorByPriority] AS
(
SELECT [AcademicSubjectDescriptorId], --Rank each selection above by priority (first by number of usages, then by create date)
[AdministrationDate],
[AssessedGradeLevelDescriptorId],
[AssessmentTitle],
[Version],
[IdentificationCode],
[PerformanceLevelDescriptorId],
[StudentUSI],
[AssessmentReportingMethodTypeId],
ROW_NUMBER() OVER
(
	PARTITION BY [AcademicSubjectDescriptorId], [AdministrationDate], [AssessedGradeLevelDescriptorId],[AssessmentTitle], [Version], [IdentificationCode], [PerformanceLevelDescriptorId], [StudentUSI]
	ORDER BY [AssessmentReportingMethodOrderKey] DESC, [CreateDate] DESC
) AS [StudentAssessmentStudentObjectiveAssessmentPerformanceLevelKey_V3_Priority]
FROM [AllReportingMethodOptions] 
)
UPDATE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]
SET [AssessmentReportingMethodTypeId] = ISNULL(p.[AssessmentReportingMethodTypeId], @defaultReportingMethodTypeId)
FROM [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel] s
LEFT JOIN [AssessmentReportingMethodDescriptorByPriority] p
ON s.[AcademicSubjectDescriptorId] = p.[AcademicSubjectDescriptorId]
AND s.[AdministrationDate] = p.[AdministrationDate]
AND s.[AssessedGradeLevelDescriptorId] = p.[AssessedGradeLevelDescriptorId]
AND s.[AssessmentTitle] = p.[AssessmentTitle]
AND s.[Version] = p.[Version]
AND s.[IdentificationCode] = p.[IdentificationCode]
AND s.[PerformanceLevelDescriptorId] = p.[PerformanceLevelDescriptorId]
AND s.[StudentUSI] = p.[StudentUSI]
AND p.[StudentAssessmentStudentObjectiveAssessmentPerformanceLevelKey_V3_Priority] = 1 --Selects the single best matching ReportingMethod for each StudentAssessmentStudentObjectiveAssessmentPerformanceLevel using the business rule logic commented above

ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]
ALTER COLUMN [AssessmentReportingMethodTypeId] INT NOT NULL
GO

PRINT N'Updating Assessment key references in [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]'
GO

ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]
ADD
	[AssessmentIdentifier] [nvarchar] (60) NULL,
	[StudentAssessmentIdentifier] [nvarchar] (60) NULL,
	[Namespace] [nvarchar] (255) NULL
GO

UPDATE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]
SET
	[AssessmentIdentifier] = m.[AssessmentIdentifier],
	[StudentAssessmentIdentifier] = s.[StudentAssessmentIdentifier],
	[Namespace] = m.[Namespace]
FROM [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel] a
INNER JOIN [migration_tempdata].[StudentAssessmentIdentityMapping] s
ON a.[StudentUSI] = s.[StudentUSI]
	AND a.[AssessmentTitle] = s.[AssessmentTitle]
	AND a.[AcademicSubjectDescriptorId] = s.[AcademicSubjectDescriptorId]
	AND a.[AssessedGradeLevelDescriptorId] = s.[AssessedGradeLevelDescriptorId]
	AND a.[Version] = s.[Version]
	AND a.[AdministrationDate] = s.[AdministrationDate]
INNER JOIN [migration_tempdata].[AssessmentIdentityMapping] m
ON s.[AssessmentTitle] = m.[AssessmentTitle]
	AND s.[AssessedGradeLevelDescriptorId] = m.[AssessedGradeLevelDescriptorId]
	AND s.[AcademicSubjectDescriptorId] = m.[AcademicSubjectDescriptorId]
	AND s.[Version] = m.[Version]
GO

ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]
ALTER COLUMN [AssessmentIdentifier] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]
ALTER COLUMN [StudentAssessmentIdentifier] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel]
ALTER COLUMN [Namespace] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel] DROP
	COLUMN [AssessedGradeLevelDescriptorId],
	COLUMN [AcademicSubjectDescriptorId],
	COLUMN [AssessmentTitle],
	COLUMN [Version],
	COLUMN [AdministrationDate]
GO

