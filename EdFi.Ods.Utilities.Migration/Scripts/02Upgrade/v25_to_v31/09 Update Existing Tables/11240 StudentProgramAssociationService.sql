-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting type to descriptor on [edfi].[StudentProgramAssociationService]'
GO

ALTER TABLE [edfi].[StudentProgramAssociationService]
ADD [ProgramTypeDescriptorId] [int] NULL
GO

UPDATE [edfi].[StudentProgramAssociationService]
SET [ProgramTypeDescriptorId] = m.[ProgramTypeDescriptorId]
FROM [edfi].[StudentProgramAssociationService] s
INNER JOIN [migration_tempdata].[ProgramIdentityMapping] m
ON m.[EducationOrganizationId] = s.[ProgramEducationOrganizationId]
	AND m.[ProgramTypeId] = s.[ProgramTypeId]
	AND m.[ProgramName] = s.[ProgramName]

ALTER TABLE [edfi].[StudentProgramAssociationService]
ALTER COLUMN [ProgramTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentProgramAssociationService]
DROP COLUMN [ProgramTypeId]
GO


