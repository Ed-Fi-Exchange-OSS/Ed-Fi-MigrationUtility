-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

	/*
		[edfi].[ObjectiveAssessmentScore] is new in version 2.0.1.
		This migration may be executed on both v2.0 and v2.0.1 databases.
		The below script will create ObjectiveAssessmentScore
		in the v2.0.1 state if it doesn't already exist
	*/ 

IF (OBJECT_ID(N'[edfi].[ObjectiveAssessmentScore]', 'U') IS NULL)
BEGIN

	PRINT N'Creating [edfi].[ObjectiveAssessmentScore] (Added in v2.0.1)'
	
	CREATE TABLE [edfi].[ObjectiveAssessmentScore]
	(
	[AcademicSubjectDescriptorId] [int] NOT NULL,
	[AssessedGradeLevelDescriptorId] [int] NOT NULL,
	[AssessmentReportingMethodTypeId] [int] NOT NULL,
	[AssessmentTitle] [nvarchar] (60) NOT NULL,
	[Version] [int] NOT NULL,
	[IdentificationCode] [nvarchar] (60) NOT NULL,
	[MinimumScore] [nvarchar] (35) NULL,
	[MaximumScore] [nvarchar] (35) NULL,
	[ResultDatatypeTypeId] [int] NULL,
	[CreateDate] [datetime] NOT NULL
	)

	/*
	Business Rule: In the event that there are multiple conflicting ResultDataType options associated
	with a single ObjectiveAssessmentScore, select the ResultDataType value that is associated
	with the corresponding ObjectiveAssessmentScore primary key the most.  If there are an equal number
	of conflicting records, CreateDate will be used as a tiebreaker.
	*/
	;WITH [AllResultDataTypeOptions] AS
	(
	SELECT --Select all available options for ResultDataType for each ObjectiveAssessmentScore, the number of times each value is used, and their create dates
		[AcademicSubjectDescriptorId],
		[AssessedGradeLevelDescriptorId],
		[AssessmentReportingMethodTypeId],
		[AssessmentTitle],
		[Version],
		[IdentificationCode],
		[ResultDatatypeTypeId],
		ROW_NUMBER() OVER
		(
			PARTITION BY
				[AcademicSubjectDescriptorId],
				[AssessedGradeLevelDescriptorId],
				[AssessmentReportingMethodTypeId],
				[AssessmentTitle],
				[Version],
				[IdentificationCode],
				[ResultDatatypeTypeId]
			ORDER BY
				[CreateDate]
		) AS [ResultDataTypeOrderKey],
		[CreateDate]
	FROM [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult]
	),
	[ResultDataTypeByPriority] AS
	(
	SELECT --Rank each selection above by priority (first by number of usages, then by create date)
   		[AcademicSubjectDescriptorId],
		[AssessedGradeLevelDescriptorId],
		[AssessmentReportingMethodTypeId],
		[AssessmentTitle],
		[Version],
		[IdentificationCode],
		[ResultDatatypeTypeId],
		ROW_NUMBER() OVER
		(
			PARTITION BY
				[AcademicSubjectDescriptorId],
				[AssessedGradeLevelDescriptorId],
				[AssessmentReportingMethodTypeId],
				[AssessmentTitle],
				[Version],
				[IdentificationCode]
			ORDER BY [ResultDataTypeOrderKey] DESC, [CreateDate] DESC
		) AS [ObjectiveAssessmentKey_V3_Priority]
	FROM [AllResultDataTypeOptions]
	)
	INSERT [edfi].[ObjectiveAssessmentScore]
	(
		[AcademicSubjectDescriptorId],
		[AssessedGradeLevelDescriptorId],
		[AssessmentReportingMethodTypeId],
		[AssessmentTitle],
		[Version],
		[IdentificationCode],
		[ResultDatatypeTypeId],
		[CreateDate]
	)
	SELECT 
		[AcademicSubjectDescriptorId],
		[AssessedGradeLevelDescriptorId],
		[AssessmentReportingMethodTypeId],
		[AssessmentTitle],
		[Version],
		[IdentificationCode],
		[ResultDatatypeTypeId],
		GETDATE()
	FROM [ResultDataTypeByPriority]
	WHERE [ObjectiveAssessmentKey_V3_Priority] = 1 --Selects the single best matching ResultDataType for each ObjectiveAssessmentScore using the business rule logic commented above
END
GO
