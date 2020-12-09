-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[RestraintEventProgram]'
GO

ALTER TABLE [edfi].[RestraintEventProgram] DROP COLUMN [EventDate]
GO

PRINT N'Converting type to descriptor on [edfi].[RestraintEventProgram]'
GO

ALTER TABLE [edfi].[RestraintEventProgram]
ADD [ProgramTypeDescriptorId] [int] NULL
GO

UPDATE [edfi].[RestraintEventProgram]
SET [ProgramTypeDescriptorId] = m.[ProgramTypeDescriptorId]
FROM [edfi].[RestraintEventProgram] s
INNER JOIN [migration_tempdata].[ProgramIdentityMapping] m
ON m.[EducationOrganizationId] = s.[EducationOrganizationId]
	AND m.[ProgramTypeId] = s.[ProgramTypeId]
	AND m.[ProgramName] = s.[ProgramName]

ALTER TABLE [edfi].[RestraintEventProgram]
ALTER COLUMN [ProgramTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[RestraintEventProgram]
DROP COLUMN [ProgramTypeId]
GO
