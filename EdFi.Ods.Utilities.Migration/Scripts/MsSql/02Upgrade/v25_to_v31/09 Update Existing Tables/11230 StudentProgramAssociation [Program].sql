-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[StudentProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentProgramAssociation] DROP
COLUMN [EndDate],
COLUMN [ReasonExitedDescriptorId],
COLUMN [ServedOutsideOfRegularSession],
COLUMN [Id],
COLUMN [LastModifiedDate],
COLUMN [CreateDate]
GO

PRINT N'Converting type to descriptor on [edfi].[StudentProgramAssociation]'
GO

ALTER TABLE [edfi].[StudentProgramAssociation]
ADD [ProgramTypeDescriptorId] [int] NULL
GO

UPDATE [edfi].[StudentProgramAssociation]
SET [ProgramTypeDescriptorId] = m.[ProgramTypeDescriptorId]
FROM [edfi].[StudentProgramAssociation] s
INNER JOIN [migration_tempdata].[ProgramIdentityMapping] m
ON m.[EducationOrganizationId] = s.[ProgramEducationOrganizationId]
	AND m.[ProgramTypeId] = s.[ProgramTypeId]
	AND m.[ProgramName] = s.[ProgramName]

ALTER TABLE [edfi].[StudentProgramAssociation]
ALTER COLUMN [ProgramTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentProgramAssociation]
DROP COLUMN [ProgramTypeId]
GO

