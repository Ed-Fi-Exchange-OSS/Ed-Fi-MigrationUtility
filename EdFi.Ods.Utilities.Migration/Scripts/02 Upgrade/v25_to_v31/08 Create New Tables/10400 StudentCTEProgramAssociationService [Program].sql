-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentCTEProgramAssociationService]'
GO

CREATE TABLE [edfi].[StudentCTEProgramAssociationService]
(
[BeginDate] [date] NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[ProgramEducationOrganizationId] [int] NOT NULL,
[ProgramName] [nvarchar] (60) NOT NULL,
[ProgramTypeDescriptorId] [int] NOT NULL,
[ServiceDescriptorId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[PrimaryIndicator] [bit] NULL,
[ServiceBeginDate] [date] NULL,
[ServiceEndDate] [date] NULL,
[CreateDate] [datetime] NOT NULL
)
GO
