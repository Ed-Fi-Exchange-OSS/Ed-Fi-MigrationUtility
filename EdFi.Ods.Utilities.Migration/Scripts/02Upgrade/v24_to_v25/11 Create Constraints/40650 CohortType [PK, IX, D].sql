-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CohortType_PK] on [edfi].[CohortType]'
GO
ALTER TABLE [edfi].[CohortType] ADD CONSTRAINT [CohortType_PK] PRIMARY KEY CLUSTERED  ([CohortTypeId])
GO
PRINT N'Creating index [UX_CohortType_Id] on [edfi].[CohortType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CohortType_Id] ON [edfi].[CohortType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[CohortType]'
GO
ALTER TABLE [edfi].[CohortType] ADD CONSTRAINT [CohortType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CohortType] ADD CONSTRAINT [CohortType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CohortType] ADD CONSTRAINT [CohortType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

