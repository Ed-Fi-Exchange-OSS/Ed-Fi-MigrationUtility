-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Preparing to update assessment keys on [edfi].[StudentAssessmentItem].  This can take a long time on larger sets of data'
GO

CREATE TABLE [edfi].[_UPDATE_IN_PROGRESS-StudentAssessmentItem]
(
	[AssessmentIdentifier] [nvarchar](60) NOT NULL,
	[IdentificationCode] [nvarchar](60) NOT NULL,
	[Namespace] [nvarchar](255) NOT NULL,
	[StudentAssessmentIdentifier] [nvarchar](60) NOT NULL,
	[StudentUSI] [int] NOT NULL,
	[AssessmentResponse] [nvarchar](60) NULL,
	[DescriptiveFeedback] [nvarchar](1024) NULL,
	[ResponseIndicatorTypeId] [int] NULL,
	[AssessmentItemResultTypeId] [int] NOT NULL,
	[RawScoreResult] [int] NULL,
	[TimeAssessed] [nvarchar](30) NULL,
	[CreateDate] [datetime] NOT NULL,
)
GO

/*
	Developer note:

	For some users with a large number of students, the  V2.0 StudentAssessmentItem table 
	(prior to the v25 model update) can contain a disproportionately large number of records
	compared to other tables. Creating the new StudentAssessmentItem primary
	key in a single pass has the potential to cause a timeout on some configurations.
	The temporary index below is created for the upgrade operation only and then dropped.  The purpose
	is to split the execution time up into multiple operations in order to prevent a timeout.
*/
CREATE NONCLUSTERED INDEX [IX_StudentAssessmentItem_Migration_Temporary_10530]
    ON [edfi].[StudentAssessmentItem]  ([StudentUSI], [AssessmentTitle], [AcademicSubjectDescriptorId], [AssessedGradeLevelDescriptorId], [Version], [AdministrationDate]) 
GO 

PRINT N'Creating new assessment keys for [edfi].[StudentAssessmentItem].  This can take a long time on larger sets of data'
GO

INSERT [edfi].[_UPDATE_IN_PROGRESS-StudentAssessmentItem]
(
	[AssessmentIdentifier],
	[IdentificationCode],
	[Namespace],
	[StudentAssessmentIdentifier],
	[StudentUSI],
	[AssessmentResponse],
	[DescriptiveFeedback],
	[ResponseIndicatorTypeId],
	[AssessmentItemResultTypeId],
	[RawScoreResult],
	[TimeAssessed],
	[CreateDate]
)
SELECT
	m.[AssessmentIdentifier],
	a.[IdentificationCode],
	m.[Namespace],
	s.[StudentAssessmentIdentifier],
	a.[StudentUSI],
	a.[AssessmentResponse],
	a.[DescriptiveFeedback],
	a.[ResponseIndicatorTypeId],
	a.[AssessmentItemResultTypeId],
	a.[RawScoreResult],
	a.[TimeAssessed],
	a.[CreateDate]
FROM [edfi].[StudentAssessmentItem]  a
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

PRINT N'Completing update of assessment keys on [edfi].[StudentAssessmentItem]'
GO

DROP TABLE [edfi].[StudentAssessmentItem] 
GO

EXEC sp_rename 'edfi._UPDATE_IN_PROGRESS-StudentAssessmentItem', 'StudentAssessmentItem';  
GO
