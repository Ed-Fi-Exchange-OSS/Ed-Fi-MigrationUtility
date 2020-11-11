-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting type to descriptor on [edfi].[ProgramCharacteristic]'
GO

ALTER TABLE [edfi].[ProgramCharacteristic]
ADD [ProgramTypeDescriptorId] [int] NULL
GO

UPDATE [edfi].[ProgramCharacteristic]
SET [ProgramTypeDescriptorId] = m.[ProgramTypeDescriptorId]
FROM [edfi].[ProgramCharacteristic] s
INNER JOIN [migration_tempdata].[ProgramIdentityMapping] m
ON m.[EducationOrganizationId] = s.[EducationOrganizationId]
	AND m.[ProgramTypeId] = s.[ProgramTypeId]
	AND m.[ProgramName] = s.[ProgramName]

ALTER TABLE [edfi].[ProgramCharacteristic]
ALTER COLUMN [ProgramTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[ProgramCharacteristic]
DROP COLUMN [ProgramTypeId]
GO

