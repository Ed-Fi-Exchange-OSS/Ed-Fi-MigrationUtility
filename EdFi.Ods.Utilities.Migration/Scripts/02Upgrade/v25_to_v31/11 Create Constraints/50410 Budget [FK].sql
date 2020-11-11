-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Budget]'
GO
ALTER TABLE [edfi].[Budget] ADD CONSTRAINT [FK_Budget_Account] FOREIGN KEY ([AccountIdentifier], [EducationOrganizationId], [FiscalYear]) REFERENCES [edfi].[Account] ([AccountIdentifier], [EducationOrganizationId], [FiscalYear])
GO
