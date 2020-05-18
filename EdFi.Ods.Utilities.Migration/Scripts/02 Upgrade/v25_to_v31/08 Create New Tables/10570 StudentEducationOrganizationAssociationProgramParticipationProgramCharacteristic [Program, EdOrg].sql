-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic]'
GO

CREATE TABLE [edfi].[StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic]
(
[EducationOrganizationId] [int] NOT NULL,
[ProgramCharacteristicDescriptorId] [int] NOT NULL,
[ProgramTypeId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic]
(
[EducationOrganizationId],
[ProgramCharacteristicDescriptorId],
[ProgramTypeId],
[StudentUSI],
[CreateDate]
)
SELECT
a.[EducationOrganizationId],
s.[ProgramCharacteristicDescriptorId],
s.[ProgramTypeId],
s.[StudentUSI],
s.[CreateDate]
FROM [edfi].[StudentProgramParticipationProgramCharacteristic] s
INNER JOIN [migration_tempdata].[StudentEducationOrganizationAll] a
ON s.[StudentUSI] = a.[StudentUSI]
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic',
'edfi', 'ProgramTypeDescriptor',
'edfi', 'ProgramType'
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic]
ALTER COLUMN [ProgramTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic]
DROP COLUMN [ProgramTypeId]
GO
