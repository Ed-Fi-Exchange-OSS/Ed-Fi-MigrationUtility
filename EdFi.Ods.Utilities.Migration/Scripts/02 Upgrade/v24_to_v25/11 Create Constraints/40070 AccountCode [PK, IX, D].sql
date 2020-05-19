-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AccountCode_PK] on [edfi].[AccountCode]'
GO
ALTER TABLE [edfi].[AccountCode] ADD CONSTRAINT [AccountCode_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [AccountNumber], [FiscalYear], [AccountCodeDescriptorId])
GO
PRINT N'Creating index [FK_AccountCode_AccountCodeDescriptor] on [edfi].[AccountCode]'
GO
CREATE NONCLUSTERED INDEX [FK_AccountCode_AccountCodeDescriptor] ON [edfi].[AccountCode] ([AccountCodeDescriptorId])
GO
PRINT N'Creating index [FK_AccountCode_Account] on [edfi].[AccountCode]'
GO
CREATE NONCLUSTERED INDEX [FK_AccountCode_Account] ON [edfi].[AccountCode] ([EducationOrganizationId], [AccountNumber], [FiscalYear])
GO

PRINT N'Adding constraints to [edfi].[AccountCode]'
GO
ALTER TABLE [edfi].[AccountCode] ADD CONSTRAINT [AccountCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

