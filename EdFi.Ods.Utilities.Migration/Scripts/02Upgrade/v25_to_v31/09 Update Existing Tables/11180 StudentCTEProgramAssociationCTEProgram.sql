-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting type to descriptor on [edfi].[StudentCTEProgramAssociationCTEProgram]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentCTEProgramAssociationCTEProgram',
'edfi', 'CareerPathwayDescriptor',
'edfi', 'CareerPathwayType'
GO

ALTER TABLE [edfi].[StudentCTEProgramAssociationCTEProgram]
ALTER COLUMN [CareerPathwayDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentCTEProgramAssociationCTEProgram]
ADD [ProgramTypeDescriptorId] [int] NULL
GO

UPDATE [edfi].[StudentCTEProgramAssociationCTEProgram]
SET [ProgramTypeDescriptorId] = m.[ProgramTypeDescriptorId]
FROM [edfi].[StudentCTEProgramAssociationCTEProgram] s
INNER JOIN [migration_tempdata].[ProgramIdentityMapping] m
ON m.[EducationOrganizationId] = s.[ProgramEducationOrganizationId]
	AND m.[ProgramTypeId] = s.[ProgramTypeId]
	AND m.[ProgramName] = s.[ProgramName]

ALTER TABLE [edfi].[StudentCTEProgramAssociationCTEProgram]
ALTER COLUMN [ProgramTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentCTEProgramAssociationCTEProgram]
DROP COLUMN
[CareerPathwayTypeId],
[ProgramTypeId]
GO



