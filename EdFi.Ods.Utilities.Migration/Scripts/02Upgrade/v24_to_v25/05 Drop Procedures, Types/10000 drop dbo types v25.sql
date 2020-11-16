-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Dropping [dbo] types and procedures'
GO

IF TYPE_ID(N'[dbo].[IntTable]') IS NOT NULL
DROP TYPE [dbo].[IntTable]
GO

IF TYPE_ID(N'[dbo].[UniqueIdentifierTable]') IS NOT NULL
DROP TYPE [dbo].[UniqueIdentifierTable]
GO
