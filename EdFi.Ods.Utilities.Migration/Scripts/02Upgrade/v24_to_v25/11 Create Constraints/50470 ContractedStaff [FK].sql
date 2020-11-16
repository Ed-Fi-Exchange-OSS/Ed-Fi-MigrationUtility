-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ContractedStaff]'
GO
ALTER TABLE [edfi].[ContractedStaff] ADD CONSTRAINT [FK_ContractedStaff_Account] FOREIGN KEY ([EducationOrganizationId], [AccountNumber], [FiscalYear]) REFERENCES [edfi].[Account] ([EducationOrganizationId], [AccountNumber], [FiscalYear])
GO
ALTER TABLE [edfi].[ContractedStaff] ADD CONSTRAINT [FK_ContractedStaff_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI])
GO
