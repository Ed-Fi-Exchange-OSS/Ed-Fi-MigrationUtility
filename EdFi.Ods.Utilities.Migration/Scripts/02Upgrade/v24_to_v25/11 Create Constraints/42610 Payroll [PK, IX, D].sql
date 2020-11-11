-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Payroll_PK] on [edfi].[Payroll]'
GO
ALTER TABLE [edfi].[Payroll] ADD CONSTRAINT [Payroll_PK] PRIMARY KEY CLUSTERED  ([StaffUSI], [EducationOrganizationId], [AccountNumber], [FiscalYear], [AsOfDate])
GO
PRINT N'Creating index [UX_Payroll_Id] on [edfi].[Payroll]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Payroll_Id] ON [edfi].[Payroll] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_Payroll_Account] on [edfi].[Payroll]'
GO
CREATE NONCLUSTERED INDEX [FK_Payroll_Account] ON [edfi].[Payroll] ([EducationOrganizationId], [AccountNumber], [FiscalYear])
GO
PRINT N'Creating index [FK_Payroll_Staff] on [edfi].[Payroll]'
GO
CREATE NONCLUSTERED INDEX [FK_Payroll_Staff] ON [edfi].[Payroll] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[Payroll]'
GO
ALTER TABLE [edfi].[Payroll] ADD CONSTRAINT [Payroll_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Payroll] ADD CONSTRAINT [Payroll_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Payroll] ADD CONSTRAINT [Payroll_DF_Id] DEFAULT (newid()) FOR [Id]
GO

