-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CostRateType_PK] on [edfi].[CostRateType]'
GO
ALTER TABLE [edfi].[CostRateType] ADD CONSTRAINT [CostRateType_PK] PRIMARY KEY CLUSTERED  ([CostRateTypeId])
GO
PRINT N'Creating index [UX_CostRateType_Id] on [edfi].[CostRateType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CostRateType_Id] ON [edfi].[CostRateType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[CostRateType]'
GO
ALTER TABLE [edfi].[CostRateType] ADD CONSTRAINT [CostRateType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CostRateType] ADD CONSTRAINT [CostRateType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CostRateType] ADD CONSTRAINT [CostRateType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

