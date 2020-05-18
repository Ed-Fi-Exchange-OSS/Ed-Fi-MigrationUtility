-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ContractedStaff_PK] on [edfi].[ContractedStaff]'
GO
ALTER TABLE [edfi].[ContractedStaff] ADD CONSTRAINT [ContractedStaff_PK] PRIMARY KEY CLUSTERED  ([StaffUSI], [EducationOrganizationId], [AccountNumber], [FiscalYear], [AsOfDate])
GO
PRINT N'Creating index [UX_ContractedStaff_Id] on [edfi].[ContractedStaff]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_ContractedStaff_Id] ON [edfi].[ContractedStaff] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_ContractedStaff_Account] on [edfi].[ContractedStaff]'
GO
CREATE NONCLUSTERED INDEX [FK_ContractedStaff_Account] ON [edfi].[ContractedStaff] ([EducationOrganizationId], [AccountNumber], [FiscalYear])
GO
PRINT N'Creating index [FK_ContractedStaff_Staff] on [edfi].[ContractedStaff]'
GO
CREATE NONCLUSTERED INDEX [FK_ContractedStaff_Staff] ON [edfi].[ContractedStaff] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[ContractedStaff]'
GO
ALTER TABLE [edfi].[ContractedStaff] ADD CONSTRAINT [ContractedStaff_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[ContractedStaff] ADD CONSTRAINT [ContractedStaff_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[ContractedStaff] ADD CONSTRAINT [ContractedStaff_DF_Id] DEFAULT (newid()) FOR [Id]
GO

