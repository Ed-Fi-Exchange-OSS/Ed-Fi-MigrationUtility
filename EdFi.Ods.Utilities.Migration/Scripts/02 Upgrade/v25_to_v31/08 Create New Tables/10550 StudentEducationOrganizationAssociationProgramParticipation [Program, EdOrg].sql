-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentEducationOrganizationAssociationProgramParticipation]'
GO

CREATE TABLE [edfi].[StudentEducationOrganizationAssociationProgramParticipation]
(
[EducationOrganizationId] [int] NOT NULL,
[ProgramTypeId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[BeginDate] [date] NULL,
[EndDate] [date] NULL,
[DesignatedBy] [nvarchar] (60) NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[StudentEducationOrganizationAssociationProgramParticipation]
(
[EducationOrganizationId],
[ProgramTypeId], 
[StudentUSI],
[BeginDate],
[EndDate],
[DesignatedBy],
[CreateDate]
)
SELECT
a.[EducationOrganizationId],
spp.[ProgramTypeId], 
spp.[StudentUSI],
spp.[BeginDate],
spp.[EndDate],
spp.[DesignatedBy],
GETDATE()
FROM [edfi].[StudentProgramParticipation] spp
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
ON spp.[StudentUSI] = a.[StudentUSI]

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentEducationOrganizationAssociationProgramParticipation',
'edfi', 'ProgramTypeDescriptor',
'edfi', 'ProgramType'
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationProgramParticipation]
ALTER COLUMN [ProgramTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationProgramParticipation]
DROP COLUMN [ProgramTypeId]
GO
