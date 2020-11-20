-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[SchoolChoiceImplementStatusType]'
GO

UPDATE [edfi].[SchoolChoiceImplementStatusType]
SET [Description] = COALESCE (NULLIF([Description], ''''), NULLIF([CodeValue], ''''), NULLIF([ShortDescription], ''''), [CodeValue])
WHERE [Description] IS NULL
GO

ALTER TABLE [edfi].[SchoolChoiceImplementStatusType]
ALTER COLUMN [Description] [nvarchar] (1024) NOT NULL
GO
