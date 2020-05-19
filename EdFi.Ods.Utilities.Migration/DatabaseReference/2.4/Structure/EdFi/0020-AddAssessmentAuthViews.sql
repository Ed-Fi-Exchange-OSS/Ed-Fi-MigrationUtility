-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[AssessmentToAssessmentFamily]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [auth].[AssessmentToAssessmentFamily]
AS
	SELECT assessmentFamily.AssessmentFamilyTitle, COALESCE(assessment.Namespace, assessmentFamily.Namespace) AS Namespace
	FROM edfi.Assessment assessment
	INNER JOIN edfi.AssessmentFamily assessmentFamily
	ON assessment.AssessmentFamilyTitle = assessmentFamily.AssessmentFamilyTitle'
GO

IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[AssessmentItemToAssessment]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [auth].[AssessmentItemToAssessment]
AS
	SELECT assessmentItem.Id, COALESCE(assessment.Namespace, aaf.Namespace) AS Namespace
	FROM edfi.AssessmentItem assessmentItem
	INNER JOIN edfi.Assessment assessment
	ON assessment.AssessmentTitle = assessmentItem.AssessmentTitle
	AND assessment.AcademicSubjectDescriptorId = assessmentItem.AcademicSubjectDescriptorId
	AND assessment.AssessedGradeLevelDescriptorId = assessmentItem.AssessedGradeLevelDescriptorId
	AND assessment.Version = assessmentItem.Version
	LEFT OUTER JOIN [auth].[AssessmentToAssessmentFamily] aaf
	ON assessment.AssessmentFamilyTitle = aaf.AssessmentFamilyTitle'
GO

IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[ObjectiveAssessmentToAssessment]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [auth].[ObjectiveAssessmentToAssessment]
AS
	SELECT objectiveAssessment.Id, COALESCE(assessment.Namespace, aaf.Namespace) AS Namespace
	FROM edfi.ObjectiveAssessment objectiveAssessment
	INNER JOIN edfi.Assessment assessment
	ON assessment.AssessmentTitle = objectiveAssessment.AssessmentTitle
	AND assessment.AcademicSubjectDescriptorId = objectiveAssessment.AcademicSubjectDescriptorId
	AND assessment.AssessedGradeLevelDescriptorId = objectiveAssessment.AssessedGradeLevelDescriptorId
	AND assessment.Version = objectiveAssessment.Version
	LEFT OUTER JOIN [auth].[AssessmentToAssessmentFamily] aaf
	ON assessment.AssessmentFamilyTitle = aaf.AssessmentFamilyTitle'
GO

IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[auth].[StudentAssessmentToAssessment]'))
EXEC dbo.sp_executesql @statement = N'
CREATE VIEW [auth].[StudentAssessmentToAssessment]
AS
	SELECT studentAssessment.Id, COALESCE(assessment.Namespace, aaf.Namespace) AS Namespace
	FROM edfi.StudentAssessment studentAssessment
	INNER JOIN edfi.Assessment assessment
	ON assessment.AssessmentTitle = studentAssessment.AssessmentTitle
	AND assessment.AcademicSubjectDescriptorId = studentAssessment.AcademicSubjectDescriptorId
	AND assessment.AssessedGradeLevelDescriptorId = studentAssessment.AssessedGradeLevelDescriptorId
	AND assessment.Version = studentAssessment.Version
	LEFT OUTER JOIN [auth].[AssessmentToAssessmentFamily] aaf
	ON assessment.AssessmentFamilyTitle = aaf.AssessmentFamilyTitle'
GO
