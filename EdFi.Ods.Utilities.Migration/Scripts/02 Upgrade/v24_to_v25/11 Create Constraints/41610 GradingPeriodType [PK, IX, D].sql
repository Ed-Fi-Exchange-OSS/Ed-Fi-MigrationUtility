-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GradingPeriodType_PK] on [edfi].[GradingPeriodType]'
GO
ALTER TABLE [edfi].[GradingPeriodType] ADD CONSTRAINT [GradingPeriodType_PK] PRIMARY KEY CLUSTERED  ([GradingPeriodTypeId])
GO
PRINT N'Creating index [UX_GradingPeriodType_Id] on [edfi].[GradingPeriodType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_GradingPeriodType_Id] ON [edfi].[GradingPeriodType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[GradingPeriodType]'
GO
ALTER TABLE [edfi].[GradingPeriodType] ADD CONSTRAINT [GradingPeriodType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[GradingPeriodType] ADD CONSTRAINT [GradingPeriodType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[GradingPeriodType] ADD CONSTRAINT [GradingPeriodType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

