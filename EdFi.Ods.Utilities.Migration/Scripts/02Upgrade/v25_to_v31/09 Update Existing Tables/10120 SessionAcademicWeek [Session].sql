-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding session reference to [edfi].[SessionAcademicWeek]'

ALTER TABLE [edfi].[SessionAcademicWeek]
ADD [SessionName] [nvarchar] (60) NULL
GO

UPDATE [edfi].[SessionAcademicWeek]
SET [SessionName] = sess.[SessionName]
FROM [edfi].[SessionAcademicWeek] saw
INNER JOIN [edfi].[Session] sess
	ON sess.[SchoolId]  = saw.[SchoolId]
	AND sess.[TermDescriptorId] = saw.[TermDescriptorId]
	AND sess.[SchoolYear] = saw.[SchoolYear]
GO

ALTER TABLE [edfi].[SessionAcademicWeek]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[SessionAcademicWeek]
DROP COLUMN [TermDescriptorId]
GO
