-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating citizenship document type reference'
GO

IF OBJECT_ID('migration_tempdata.CitizenshipDocumentTypes', 'U') IS NOT NULL 
DROP TABLE [migration_tempdata].[CitizenshipDocumentTypes]
GO

CREATE TABLE [migration_tempdata].[CitizenshipDocumentTypes]
(
[TypeCodeValue] NVARCHAR(100) NOT NULL PRIMARY KEY
)
GO

INSERT [migration_tempdata].[CitizenshipDocumentTypes] ([TypeCodeValue])
VALUES
	('US Citizenship Identification'),
	('Foreign Citizenship Identification')
GO