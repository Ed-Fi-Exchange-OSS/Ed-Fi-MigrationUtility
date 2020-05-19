-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating [edfi].[Account]'
GO

ALTER TABLE [edfi].[Account]
ADD [AccountIdentifier] [nvarchar] (50) NULL,
[AccountName] [nvarchar] (100) NULL
GO

UPDATE [edfi].[Account]
SET [AccountIdentifier] = [AccountNumber]
GO

ALTER TABLE [edfi].[Account]
ALTER COLUMN [AccountIdentifier] [nvarchar] (50) NOT NULL
GO

ALTER TABLE [edfi].[Account]
DROP COLUMN [AccountNumber]
GO
