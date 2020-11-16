-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Budget_PK] on [edfi].[Budget]'
GO
ALTER TABLE [edfi].[Budget] ADD CONSTRAINT [Budget_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [AccountNumber], [FiscalYear], [AsOfDate])
GO
PRINT N'Creating index [UX_Budget_Id] on [edfi].[Budget]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Budget_Id] ON [edfi].[Budget] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_Budget_Account] on [edfi].[Budget]'
GO
CREATE NONCLUSTERED INDEX [FK_Budget_Account] ON [edfi].[Budget] ([EducationOrganizationId], [AccountNumber], [FiscalYear])
GO

PRINT N'Adding constraints to [edfi].[Budget]'
GO
ALTER TABLE [edfi].[Budget] ADD CONSTRAINT [Budget_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Budget] ADD CONSTRAINT [Budget_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Budget] ADD CONSTRAINT [Budget_DF_Id] DEFAULT (newid()) FOR [Id]
GO

