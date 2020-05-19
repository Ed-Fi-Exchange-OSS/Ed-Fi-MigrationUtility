-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[AssessmentItemToAssessment]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [auth].[AssessmentItemToAssessment]
AS
	SELECT assessmentItem.Id, assessment.Namespace AS Namespace
	FROM edfi.AssessmentItem assessmentItem
	INNER JOIN edfi.Assessment assessment
	ON assessment.AssessmentTitle = assessmentItem.AssessmentTitle
	AND assessment.AcademicSubjectDescriptorId = assessmentItem.AcademicSubjectDescriptorId
	AND assessment.AssessedGradeLevelDescriptorId = assessmentItem.AssessedGradeLevelDescriptorId
	AND assessment.AssessmentVersion = assessmentItem.AssessmentVersion'
GO

IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[ObjectiveAssessmentToAssessment]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [auth].[ObjectiveAssessmentToAssessment]
AS
	SELECT objectiveAssessment.Id, assessment.Namespace AS Namespace
	FROM edfi.ObjectiveAssessment objectiveAssessment
	INNER JOIN edfi.Assessment assessment
	ON assessment.AssessmentTitle = objectiveAssessment.AssessmentTitle
	AND assessment.AcademicSubjectDescriptorId = objectiveAssessment.AcademicSubjectDescriptorId
	AND assessment.AssessedGradeLevelDescriptorId = objectiveAssessment.AssessedGradeLevelDescriptorId
	AND assessment.AssessmentVersion = objectiveAssessment.AssessmentVersion'
GO

IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[StudentAssessmentToAssessment]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [auth].[StudentAssessmentToAssessment]
AS
	SELECT studentAssessment.Id, assessment.Namespace AS Namespace
	FROM edfi.StudentAssessment studentAssessment
	INNER JOIN edfi.Assessment assessment
	ON assessment.AssessmentTitle = studentAssessment.AssessmentTitle
	AND assessment.AcademicSubjectDescriptorId = studentAssessment.AcademicSubjectDescriptorId
	AND assessment.AssessedGradeLevelDescriptorId = studentAssessment.AssessedGradeLevelDescriptorId
	AND assessment.AssessmentVersion = studentAssessment.AssessmentVersion'
GO
