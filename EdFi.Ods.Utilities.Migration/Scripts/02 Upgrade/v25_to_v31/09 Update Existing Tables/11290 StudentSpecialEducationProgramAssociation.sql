-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting type to descriptor on [edfi].[StudentSpecialEducationProgramAssociation]'
GO

ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociation]
ADD [ProgramTypeDescriptorId] [int] NULL
GO

UPDATE [edfi].[StudentSpecialEducationProgramAssociation]
SET [ProgramTypeDescriptorId] = m.[ProgramTypeDescriptorId]
FROM [edfi].[StudentSpecialEducationProgramAssociation] s
INNER JOIN [migration_tempdata].[ProgramIdentityMapping] m
ON m.[EducationOrganizationId] = s.[ProgramEducationOrganizationId]
	AND m.[ProgramTypeId] = s.[ProgramTypeId]
	AND m.[ProgramName] = s.[ProgramName]

ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociation]
ALTER COLUMN [ProgramTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociation]
DROP COLUMN [ProgramTypeId]
GO

