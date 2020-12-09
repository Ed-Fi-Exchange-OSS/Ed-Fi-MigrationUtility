-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CohortYearType_PK] on [edfi].[CohortYearType]'
GO
ALTER TABLE [edfi].[CohortYearType] ADD CONSTRAINT [CohortYearType_PK] PRIMARY KEY CLUSTERED  ([CohortYearTypeId])
GO
PRINT N'Creating index [UX_CohortYearType_Id] on [edfi].[CohortYearType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CohortYearType_Id] ON [edfi].[CohortYearType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[CohortYearType]'
GO
ALTER TABLE [edfi].[CohortYearType] ADD CONSTRAINT [CohortYearType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CohortYearType] ADD CONSTRAINT [CohortYearType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CohortYearType] ADD CONSTRAINT [CohortYearType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

