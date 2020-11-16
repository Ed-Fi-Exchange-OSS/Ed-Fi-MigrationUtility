-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping [edfi] views'
GO

PRINT N'Dropping [edfi].[StudentAssessmentStudentObjectiveAssessmentH]'
GO
IF OBJECT_ID(N'[edfi].[StudentAssessmentStudentObjectiveAssessmentH]', 'V') IS NOT NULL
DROP VIEW [edfi].[StudentAssessmentStudentObjectiveAssessmentH]
GO

PRINT N'Dropping [edfi].[ObjectiveAssessmentH]'
GO
IF OBJECT_ID(N'[edfi].[ObjectiveAssessmentH]', 'V') IS NOT NULL
DROP VIEW [edfi].[ObjectiveAssessmentH]
GO

PRINT N'Dropping [edfi].[LocalEducationAgencyH]'
GO
IF OBJECT_ID(N'[edfi].[LocalEducationAgencyH]', 'V') IS NOT NULL
DROP VIEW [edfi].[LocalEducationAgencyH]
GO

PRINT N'Dropping [edfi].[LearningStandardH]'
GO
IF OBJECT_ID(N'[edfi].[LearningStandardH]', 'V') IS NOT NULL
DROP VIEW [edfi].[LearningStandardH]
GO

PRINT N'Dropping [edfi].[LearningObjectiveH]'
GO
IF OBJECT_ID(N'[edfi].[LearningObjectiveH]', 'V') IS NOT NULL
DROP VIEW [edfi].[LearningObjectiveH]
GO

PRINT N'Dropping [edfi].[AssessmentFamilyH]'
GO
IF OBJECT_ID(N'[edfi].[AssessmentFamilyH]', 'V') IS NOT NULL
DROP VIEW [edfi].[AssessmentFamilyH]
GO

