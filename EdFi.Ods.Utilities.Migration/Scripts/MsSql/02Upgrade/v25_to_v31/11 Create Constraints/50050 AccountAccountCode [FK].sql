-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[AccountAccountCode]'
GO
ALTER TABLE [edfi].[AccountAccountCode] ADD CONSTRAINT [FK_AccountAccountCode_Account] FOREIGN KEY ([AccountIdentifier], [EducationOrganizationId], [FiscalYear]) REFERENCES [edfi].[Account] ([AccountIdentifier], [EducationOrganizationId], [FiscalYear]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[AccountAccountCode] ADD CONSTRAINT [FK_AccountAccountCode_AccountCode] FOREIGN KEY ([AccountClassificationDescriptorId], [AccountCodeNumber], [EducationOrganizationId], [FiscalYear]) REFERENCES [edfi].[AccountCode] ([AccountClassificationDescriptorId], [AccountCodeNumber], [EducationOrganizationId], [FiscalYear])
GO
