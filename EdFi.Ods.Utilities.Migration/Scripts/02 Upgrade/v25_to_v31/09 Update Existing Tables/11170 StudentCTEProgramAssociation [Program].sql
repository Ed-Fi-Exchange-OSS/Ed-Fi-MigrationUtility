-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[StudentCTEProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentCTEProgramAssociation] ADD
[ProgramTypeDescriptorId] [int] NULL,
[NonTraditionalGenderStatus] [bit] NULL,
[PrivateCTEProgram] [bit] NULL,
[TechnicalSkillsAssessmentDescriptorId] [int] NULL
GO

PRINT N'Converting type to descriptor on [edfi].[StudentCTEProgramAssociation]'
GO

UPDATE [edfi].[StudentCTEProgramAssociation]
SET [ProgramTypeDescriptorId] = m.[ProgramTypeDescriptorId]
FROM [edfi].[StudentCTEProgramAssociation] s
INNER JOIN [migration_tempdata].[ProgramIdentityMapping] m
ON m.[EducationOrganizationId] = s.[ProgramEducationOrganizationId]
	AND m.[ProgramTypeId] = s.[ProgramTypeId]
	AND m.[ProgramName] = s.[ProgramName]

ALTER TABLE [edfi].[StudentCTEProgramAssociation]
ALTER COLUMN [ProgramTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentCTEProgramAssociation]
DROP COLUMN [ProgramTypeId]
GO

