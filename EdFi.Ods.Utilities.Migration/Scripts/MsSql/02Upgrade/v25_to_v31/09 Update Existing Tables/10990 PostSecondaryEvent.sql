-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[PostSecondaryEvent]'
GO

ALTER TABLE [edfi].[PostSecondaryEvent] ADD
[PostSecondaryInstitutionId] [int] NULL
GO

UPDATE [edfi].[PostSecondaryEvent]
SET [PostSecondaryInstitutionId] = CAST(i.[PostSecondaryInstitutionId] AS INT)
FROM [edfi].[PostSecondaryEvent] e 
INNER JOIN [edfi].[PostSecondaryEventPostSecondaryInstitution] i
ON e.[StudentUSI] = i.StudentUSI
AND e.[PostSecondaryEventCategoryTypeId] = i.[PostSecondaryEventCategoryTypeId]
AND e.[EventDate] = i.[EventDate]

PRINT N'Converting type to descriptor on [edfi].[PostSecondaryEvent]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'PostSecondaryEvent',
'edfi', 'PostSecondaryEventCategoryDescriptor',
'edfi', 'PostSecondaryEventCategoryType'
GO

ALTER TABLE [edfi].[PostSecondaryEvent]
ALTER COLUMN [PostSecondaryEventCategoryDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[PostSecondaryEvent]
DROP COLUMN [PostSecondaryEventCategoryTypeId]
GO


