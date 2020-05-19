-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GradingPeriod_PK] on [edfi].[GradingPeriod]'
GO
ALTER TABLE [edfi].[GradingPeriod] ADD CONSTRAINT [GradingPeriod_PK] PRIMARY KEY CLUSTERED  ([GradingPeriodDescriptorId], [SchoolId], [BeginDate])
GO
PRINT N'Creating index [UX_GradingPeriod_Id] on [edfi].[GradingPeriod]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_GradingPeriod_Id] ON [edfi].[GradingPeriod] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_GradingPeriod_GradingPeriodDescriptor] on [edfi].[GradingPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_GradingPeriod_GradingPeriodDescriptor] ON [edfi].[GradingPeriod] ([GradingPeriodDescriptorId])
GO
PRINT N'Creating index [FK_GradingPeriod_School] on [edfi].[GradingPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_GradingPeriod_School] ON [edfi].[GradingPeriod] ([SchoolId])
GO

PRINT N'Adding constraints to [edfi].[GradingPeriod]'
GO
ALTER TABLE [edfi].[GradingPeriod] ADD CONSTRAINT [GradingPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[GradingPeriod] ADD CONSTRAINT [GradingPeriod_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[GradingPeriod] ADD CONSTRAINT [GradingPeriod_DF_Id] DEFAULT (newid()) FOR [Id]
GO

