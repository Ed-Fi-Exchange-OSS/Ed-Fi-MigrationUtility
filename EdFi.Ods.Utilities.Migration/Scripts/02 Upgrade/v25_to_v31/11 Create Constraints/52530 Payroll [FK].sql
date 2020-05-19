-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Payroll]'
GO
ALTER TABLE [edfi].[Payroll] ADD CONSTRAINT [FK_Payroll_Account] FOREIGN KEY ([AccountIdentifier], [EducationOrganizationId], [FiscalYear]) REFERENCES [edfi].[Account] ([AccountIdentifier], [EducationOrganizationId], [FiscalYear])
GO
ALTER TABLE [edfi].[Payroll] ADD CONSTRAINT [FK_Payroll_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI])
GO
