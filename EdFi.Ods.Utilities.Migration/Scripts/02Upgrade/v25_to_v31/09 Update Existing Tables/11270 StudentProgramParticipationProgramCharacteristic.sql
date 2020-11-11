-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Converting type to descriptor on [edfi].[StudentProgramParticipationProgramCharacteristic]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'StudentProgramParticipationProgramCharacteristic',
'edfi', 'ProgramTypeDescriptor',
'edfi', 'ProgramType'
GO

ALTER TABLE [edfi].[StudentProgramParticipationProgramCharacteristic]
ALTER COLUMN [ProgramTypeDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[StudentProgramParticipationProgramCharacteristic]
DROP COLUMN [ProgramTypeId]
GO


