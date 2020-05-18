-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting type to descriptor on [edfi].[ProgramLearningStandard]'
GO

ALTER TABLE [edfi].[ProgramLearningStandard]
ADD [ProgramTypeDescriptorId] [int] NULL
GO

UPDATE [edfi].[ProgramLearningStandard]
SET [ProgramTypeDescriptorId] = m.[ProgramTypeDescriptorId]
FROM [edfi].[ProgramLearningStandard] s
INNER JOIN [migration_tempdata].[ProgramIdentityMapping] m
ON m.[EducationOrganizationId] = s.[EducationOrganizationId]
	AND m.[ProgramTypeId] = s.[ProgramTypeId]
	AND m.[ProgramName] = s.[ProgramName]

ALTER TABLE [edfi].[ProgramLearningStandard]
ALTER COLUMN [ProgramTypeDescriptorId] [int] NOT NULL
GO


ALTER TABLE [edfi].[ProgramLearningStandard]
DROP COLUMN [ProgramTypeId]
GO

