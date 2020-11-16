-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding session reference to [edfi].[CourseOfferingCurriculumUsed]'

ALTER TABLE [edfi].[CourseOfferingCurriculumUsed]
ADD [SessionName] [nvarchar] (60) NULL
GO

UPDATE [edfi].[CourseOfferingCurriculumUsed]
SET [SessionName] = sess.[SessionName]
FROM [edfi].[CourseOfferingCurriculumUsed] c
INNER JOIN [edfi].[Session] sess
	ON sess.[SchoolId]  = c.[SchoolId]
	AND sess.[TermDescriptorId] = c.[TermDescriptorId]
	AND sess.[SchoolYear] = c.[SchoolYear]
GO

ALTER TABLE [edfi].[CourseOfferingCurriculumUsed]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[CourseOfferingCurriculumUsed]
DROP COLUMN [TermDescriptorId]
GO

PRINT N'Converting type to descriptor on [edfi].[CourseOfferingCurriculumUsed]'
GO

EXEC [migration_tempdata].[sp_ConvertTypeToDescriptor]
'edfi', 'CourseOfferingCurriculumUsed',
'edfi', 'CurriculumUsedDescriptor',
'edfi', 'CurriculumUsedType'
GO

ALTER TABLE [edfi].[CourseOfferingCurriculumUsed]
ALTER COLUMN [CurriculumUsedDescriptorId] [int] NOT NULL
GO

ALTER TABLE [edfi].[CourseOfferingCurriculumUsed]
DROP COLUMN [CurriculumUsedTypeId]
GO

