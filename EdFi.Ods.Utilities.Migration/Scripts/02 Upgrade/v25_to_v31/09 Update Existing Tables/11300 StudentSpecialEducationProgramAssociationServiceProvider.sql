-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting type to descriptor on [edfi].[StudentSpecialEducationProgramAssociationServiceProvider]'
GO

ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationServiceProvider]
ADD [ProgramTypeDescriptorId] [int] NULL
GO

UPDATE [edfi].[StudentSpecialEducationProgramAssociationServiceProvider]
SET [ProgramTypeDescriptorId] = m.[ProgramTypeDescriptorId]
FROM [edfi].[StudentSpecialEducationProgramAssociationServiceProvider] s
INNER JOIN [migration_tempdata].[ProgramIdentityMapping] m
ON m.[EducationOrganizationId] = s.[ProgramEducationOrganizationId]
	AND m.[ProgramTypeId] = s.[ProgramTypeId]
	AND m.[ProgramName] = s.[ProgramName]

ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationServiceProvider]
ALTER COLUMN [ProgramTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationServiceProvider]
DROP COLUMN [ProgramTypeId]
GO


