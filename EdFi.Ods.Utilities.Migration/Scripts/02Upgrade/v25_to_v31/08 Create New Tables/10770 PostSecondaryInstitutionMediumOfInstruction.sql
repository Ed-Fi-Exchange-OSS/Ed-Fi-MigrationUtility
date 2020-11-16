-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[PostSecondaryInstitutionMediumOfInstruction]'
GO

CREATE TABLE [edfi].[PostSecondaryInstitutionMediumOfInstruction]
(
[MediumOfInstructionTypeId] [int] NOT NULL,
[PostSecondaryInstitutionId] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO

INSERT [edfi].[PostSecondaryInstitutionMediumOfInstruction]
(
[MediumOfInstructionTypeId],
[PostSecondaryInstitutionId],
[CreateDate]
)
SELECT DISTINCT
m.[MediumOfInstructionTypeId],
CAST(i.[PostSecondaryInstitutionId] AS INT),
GETDATE()
FROM [edfi].[PostSecondaryEventPostSecondaryInstitutionMediumOfInstruction] m
INNER JOIN [edfi].[PostSecondaryEventPostSecondaryInstitution] i
ON m.[StudentUSI] = i.[StudentUSI]
AND m.[PostSecondaryEventCategoryTypeId] = i.[PostSecondaryEventCategoryTypeId]
AND m.[EventDate] = i.[EventDate]
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'PostSecondaryInstitutionMediumOfInstruction',
'edfi', 'MediumOfInstructionDescriptor',
'edfi', 'MediumOfInstructionType'
GO

ALTER TABLE [edfi].[PostSecondaryInstitutionMediumOfInstruction]
ALTER COLUMN [MediumOfInstructionDescriptorId] INT NOT NULL
GO

ALTER TABLE [edfi].[PostSecondaryInstitutionMediumOfInstruction]
DROP COLUMN [MediumOfInstructionTypeId]
GO