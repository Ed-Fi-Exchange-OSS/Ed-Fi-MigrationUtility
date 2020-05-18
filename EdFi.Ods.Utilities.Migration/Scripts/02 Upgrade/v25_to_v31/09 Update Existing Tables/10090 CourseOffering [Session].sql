-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding session reference to [edfi].[CourseOffering]'

ALTER TABLE [edfi].[CourseOffering]
ADD [SessionName] [nvarchar] (60) NULL
GO

UPDATE [edfi].[CourseOffering]
SET [SessionName] = sess.[SessionName]
FROM [edfi].[CourseOffering] c
INNER JOIN [edfi].[Session] sess
	ON sess.[SchoolId]  = c.[SchoolId]
	AND sess.[TermDescriptorId] = c.[TermDescriptorId]
	AND sess.[SchoolYear] = c.[SchoolYear]
GO

ALTER TABLE [edfi].[CourseOffering]
ALTER COLUMN [SessionName] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[CourseOffering]
DROP COLUMN [TermDescriptorId]
GO
