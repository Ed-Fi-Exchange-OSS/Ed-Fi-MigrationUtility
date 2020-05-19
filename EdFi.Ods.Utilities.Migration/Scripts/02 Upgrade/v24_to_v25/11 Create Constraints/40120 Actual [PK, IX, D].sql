-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Actual_PK] on [edfi].[Actual]'
GO
ALTER TABLE [edfi].[Actual] ADD CONSTRAINT [Actual_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [AccountNumber], [FiscalYear], [AsOfDate])
GO
PRINT N'Creating index [UX_Actual_Id] on [edfi].[Actual]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Actual_Id] ON [edfi].[Actual] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_Actual_Account] on [edfi].[Actual]'
GO
CREATE NONCLUSTERED INDEX [FK_Actual_Account] ON [edfi].[Actual] ([EducationOrganizationId], [AccountNumber], [FiscalYear])
GO

PRINT N'Adding constraints to [edfi].[Actual]'
GO
ALTER TABLE [edfi].[Actual] ADD CONSTRAINT [Actual_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Actual] ADD CONSTRAINT [Actual_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Actual] ADD CONSTRAINT [Actual_DF_Id] DEFAULT (newid()) FOR [Id]
GO

