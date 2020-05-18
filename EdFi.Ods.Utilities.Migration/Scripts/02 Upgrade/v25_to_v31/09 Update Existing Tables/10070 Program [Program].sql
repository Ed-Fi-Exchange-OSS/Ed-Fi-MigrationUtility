-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting type to descriptor on [edfi].[Program]'
GO

ALTER TABLE [edfi].[Program]
ADD [ProgramTypeDescriptorId] [int] NULL
GO

UPDATE [edfi].[Program]
SET [ProgramTypeDescriptorId] = m.[ProgramTypeDescriptorId]
FROM [edfi].[Program] p
INNER JOIN [migration_tempdata].[ProgramIdentityMapping] m
	ON p.[ProgramName] = m.[ProgramName]
	AND p.[EducationOrganizationId] = m.[EducationOrganizationId]
	AND p.[ProgramTypeId] = m.[ProgramTypeId]
GO

ALTER TABLE [edfi].[Program]
ALTER COLUMN [ProgramTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[Program] DROP
COLUMN
[ProgramSponsorTypeId]
,[ProgramTypeId]
GO