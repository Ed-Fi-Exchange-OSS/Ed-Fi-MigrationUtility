-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AccountAccountCode_PK] on [edfi].[AccountAccountCode]'
GO
ALTER TABLE [edfi].[AccountAccountCode] ADD CONSTRAINT [AccountAccountCode_PK] PRIMARY KEY CLUSTERED  ([AccountClassificationDescriptorId], [AccountCodeNumber], [AccountIdentifier], [EducationOrganizationId], [FiscalYear])
GO

PRINT N'Creating index [FK_AccountAccountCode_AccountCode] on [edfi].[AccountAccountCode]'
GO
CREATE NONCLUSTERED INDEX [FK_AccountAccountCode_AccountCode] ON [edfi].[AccountAccountCode] ([AccountClassificationDescriptorId], [AccountCodeNumber], [EducationOrganizationId], [FiscalYear])
GO

PRINT N'Creating index [FK_AccountAccountCode_Account] on [edfi].[AccountAccountCode]'
GO
CREATE NONCLUSTERED INDEX [FK_AccountAccountCode_Account] ON [edfi].[AccountAccountCode] ([AccountIdentifier], [EducationOrganizationId], [FiscalYear])
GO

PRINT N'Adding constraints to [edfi].[AccountAccountCode]'
GO
ALTER TABLE [edfi].[AccountAccountCode] ADD CONSTRAINT [AccountAccountCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
