-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Account_PK] on [edfi].[Account]'
GO
ALTER TABLE [edfi].[Account] ADD CONSTRAINT [Account_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [AccountNumber], [FiscalYear])
GO
PRINT N'Creating index [UX_Account_Id] on [edfi].[Account]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Account_Id] ON [edfi].[Account] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_Account_EducationOrganization] on [edfi].[Account]'
GO
CREATE NONCLUSTERED INDEX [FK_Account_EducationOrganization] ON [edfi].[Account] ([EducationOrganizationId])
GO

PRINT N'Adding constraints to [edfi].[Account]'
GO
ALTER TABLE [edfi].[Account] ADD CONSTRAINT [Account_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Account] ADD CONSTRAINT [Account_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Account] ADD CONSTRAINT [Account_DF_Id] DEFAULT (newid()) FOR [Id]
GO

