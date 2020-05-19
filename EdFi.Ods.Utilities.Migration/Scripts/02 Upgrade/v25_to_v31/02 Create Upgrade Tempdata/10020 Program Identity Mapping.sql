-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Generating Program identity mappings'
GO

IF OBJECT_ID('migration_tempdata.ProgramIdentityMapping', 'U') IS NOT NULL 
DROP TABLE [migration_tempdata].[ProgramIdentityMapping]
GO

CREATE TABLE [migration_tempdata].[ProgramIdentityMapping]
(
--descriptor mapping for types below to be created when the new descriptor data is imported
[EducationOrganizationId] [int] NOT NULL,
[ProgramName] [nvarchar] (60) NOT NULL,
[ProgramSponsorTypeId] [int] NULL, 
[ProgramTypeId] [int] NOT NULL
CONSTRAINT PK_ProgramSponsorIdentityMapping_20 PRIMARY KEY ([EducationOrganizationId], [ProgramTypeId], [ProgramName])
)

INSERT  [migration_tempdata].[ProgramIdentityMapping]
(
[EducationOrganizationId],
[ProgramName],
[ProgramTypeId],
[ProgramSponsorTypeId]
)
SELECT 
[EducationOrganizationId],
[ProgramName],
[ProgramTypeId],
[ProgramSponsorTypeId]
FROM [edfi].[Program]


