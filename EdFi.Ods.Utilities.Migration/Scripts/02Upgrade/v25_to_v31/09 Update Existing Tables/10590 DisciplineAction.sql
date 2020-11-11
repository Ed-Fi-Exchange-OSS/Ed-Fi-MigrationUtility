-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[DisciplineAction]'
GO

ALTER TABLE [edfi].[DisciplineAction] ALTER COLUMN [DisciplineActionLength] [decimal] (5, 2) NULL
GO

ALTER TABLE [edfi].[DisciplineAction] ALTER COLUMN [ActualDisciplineActionLength] [decimal] (5, 2) NULL
GO

ALTER TABLE [edfi].[DisciplineAction] ADD
[ReceivedEducationServicesDuringExpulsion] [bit] NULL,
[IEPPlacementMeetingIndicator] [bit] NULL
GO

PRINT N'Converting type to descriptor on [edfi].[DisciplineAction]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'DisciplineAction',
'edfi', 'DisciplineActionLengthDifferenceReasonDescriptor',
'edfi', 'DisciplineActionLengthDifferenceReasonType'
GO

ALTER TABLE [edfi].[DisciplineAction]
DROP COLUMN [DisciplineActionLengthDifferenceReasonTypeId]
GO
