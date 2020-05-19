-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[AssessmentAssessedGradeLevel]'
GO
CREATE TABLE [edfi].[AssessmentAssessedGradeLevel]
(
	[AssessmentIdentifier] [nvarchar] (60) NOT NULL,
	[GradeLevelDescriptorId] [int] NOT NULL,
	[Namespace] [nvarchar] (255) NOT NULL,
	[CreateDate] [datetime] NOT NULL
)
GO
INSERT [edfi].[AssessmentAssessedGradeLevel]
(
	[GradeLevelDescriptorId],
	[AssessmentIdentifier],
	[Namespace],
	[CreateDate]
)
SELECT DISTINCT
	[AssessedGradeLevelDescriptorId],
	[AssessmentIdentifier],
	[Namespace],
	GETDATE()
FROM [migration_tempdata].[AssessmentIdentityMapping]
GO