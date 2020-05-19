-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[ProgramSponsor]'

CREATE TABLE [edfi].[ProgramSponsor]
(
[EducationOrganizationId] [int] NOT NULL,
[ProgramName] [nvarchar] (60) NOT NULL,
[ProgramSponsorDescriptorId] [int] NOT NULL,
[ProgramTypeDescriptorId] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[ProgramSponsor]
(
[EducationOrganizationId],
[ProgramName],
[ProgramSponsorDescriptorId],
[ProgramTypeDescriptorId],
[CreateDate]
)
SELECT
m.[EducationOrganizationId],
m.[ProgramName],
m.[ProgramSponsorDescriptorId],
m.[ProgramTypeDescriptorId],
GETDATE()
FROM [migration_tempdata].[ProgramIdentityMapping] m
INNER JOIN [edfi].[Program] p
	ON p.[ProgramName] = m.[ProgramName]
	AND p.[EducationOrganizationId] = m.[EducationOrganizationId]
	AND p.[ProgramTypeId] = m.[ProgramTypeId]
WHERE m.[ProgramSponsorTypeId] IS NOT NULL
GO