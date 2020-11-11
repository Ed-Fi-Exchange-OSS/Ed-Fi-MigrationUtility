-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[AccountAccountCode]'
GO

CREATE TABLE [edfi].[AccountAccountCode]
(
[AccountClassificationDescriptorId] [int] NOT NULL,
[AccountCodeNumber] [nvarchar] (50) NOT NULL,
[AccountIdentifier] [nvarchar] (50) NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[FiscalYear] [int] NOT NULL,
[CreateDate] [datetime] NOT NULL
)
GO
