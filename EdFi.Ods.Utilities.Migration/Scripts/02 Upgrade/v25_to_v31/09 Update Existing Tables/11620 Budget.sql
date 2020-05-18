-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[Budget]'
GO

ALTER TABLE [edfi].[Budget]
ADD [AccountIdentifier] [nvarchar] (50) NULL
GO

UPDATE [edfi].[Budget]
SET [AccountIdentifier] = [AccountNumber]
GO

ALTER TABLE [edfi].[Budget]
ALTER COLUMN [AccountIdentifier] [nvarchar] (50) NOT NULL
GO

ALTER TABLE [edfi].[Budget]
DROP COLUMN [AccountNumber]
GO
