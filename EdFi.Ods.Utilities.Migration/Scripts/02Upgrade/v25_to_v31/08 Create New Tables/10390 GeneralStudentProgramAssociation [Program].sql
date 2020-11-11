-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[GeneralStudentProgramAssociation]'
GO

CREATE TABLE [edfi].[GeneralStudentProgramAssociation]
(
[BeginDate] [date] NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[ProgramEducationOrganizationId] [int] NOT NULL,
[ProgramName] [nvarchar] (60) NOT NULL,
[ProgramTypeDescriptorId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[EndDate] [date] NULL,
[ReasonExitedDescriptorId] [int] NULL,
[ServedOutsideOfRegularSession] [bit] NULL,
[CreateDate] [datetime] NOT NULL,
[LastModifiedDate] [datetime] NOT NULL,
[Id] [uniqueidentifier] NOT NULL
)
GO

IF EXISTS (SELECT 1 FROM [edfi].[StudentProgramAssociation])
BEGIN
	PRINT N'Warning: Student program association records will be converted to generalized program associations during upgrade.  If you wish to create additional references for specialized programs newly supported by the version 3 schema, custom migration scripts should be added'
END

INSERT [edfi].[GeneralStudentProgramAssociation]
(
[BeginDate],
[EducationOrganizationId],
[ProgramEducationOrganizationId],
[ProgramName],
[ProgramTypeDescriptorId],
[StudentUSI],
[EndDate],
[ReasonExitedDescriptorId],
[ServedOutsideOfRegularSession],
[CreateDate],
[LastModifiedDate],
[Id]
)
SELECT
s.[BeginDate],
s.[EducationOrganizationId],
s.[ProgramEducationOrganizationId],
s.[ProgramName],
m.[ProgramTypeDescriptorId],
s.[StudentUSI],
s.[EndDate],
s.[ReasonExitedDescriptorId],
s.[ServedOutsideOfRegularSession],
ISNULL(s.[CreateDate], GETDATE()),
ISNULL(s.[LastModifiedDate], GETDATE()),
ISNULL(s.[Id], NEWID())
FROM [edfi].[StudentProgramAssociation] s
INNER JOIN [migration_tempdata].[ProgramIdentityMapping] m
ON m.[EducationOrganizationId] = s.[ProgramEducationOrganizationId]
	AND m.[ProgramTypeId] = s.[ProgramTypeId]
	AND m.[ProgramName] = s.[ProgramName]
