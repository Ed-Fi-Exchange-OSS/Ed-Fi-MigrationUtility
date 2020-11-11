-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService]'
GO

CREATE TABLE [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService]
(
[BeginDate] [date] NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[ProgramEducationOrganizationId] [int] NOT NULL,
[ProgramName] [nvarchar] (60) NOT NULL,
[ProgramTypeDescriptorId] [int] NOT NULL,
[SpecialEducationProgramServiceDescriptorId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[PrimaryIndicator] [bit] NULL,
[ServiceBeginDate] [date] NULL,
[ServiceEndDate] [date] NULL,
[CreateDate] [datetime] NOT NULL
)
GO

