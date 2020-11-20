-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting namespace to v3 format on [edfi].[ProgramLearningObjective]'
GO

UPDATE [edfi].[ProgramLearningObjective]
SET
	[LearningObjectiveId] = m.[V3LearningObjectiveId],
	[Namespace] = m.[V3Namespace]
FROM [migration_tempdata].[LearningObjectiveIdentityMapping] m
INNER JOIN [edfi].[ProgramLearningObjective] l
	ON l.[LearningObjectiveId] = m.[V2LearningObjectiveId]
	AND l.[Namespace] = m.[V2Namespace]
GO

PRINT N'Converting type to descriptor on [edfi].[ProgramLearningObjective]'
GO

ALTER TABLE [edfi].[ProgramLearningObjective]
ADD [ProgramTypeDescriptorId] [int] NULL
GO

UPDATE [edfi].[ProgramLearningObjective]
SET [ProgramTypeDescriptorId] = m.[ProgramTypeDescriptorId]
FROM [edfi].[ProgramLearningObjective] s
INNER JOIN [migration_tempdata].[ProgramIdentityMapping] m
ON m.[EducationOrganizationId] = s.[EducationOrganizationId]
	AND m.[ProgramTypeId] = s.[ProgramTypeId]
	AND m.[ProgramName] = s.[ProgramName]

ALTER TABLE [edfi].[ProgramLearningObjective]
ALTER COLUMN [ProgramTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[ProgramLearningObjective]
DROP COLUMN [ProgramTypeId]
GO


