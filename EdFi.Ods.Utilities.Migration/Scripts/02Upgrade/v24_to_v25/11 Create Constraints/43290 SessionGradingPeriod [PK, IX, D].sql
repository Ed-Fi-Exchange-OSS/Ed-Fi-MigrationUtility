-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SessionGradingPeriod_PK] on [edfi].[SessionGradingPeriod]'
GO
ALTER TABLE [edfi].[SessionGradingPeriod] ADD CONSTRAINT [SessionGradingPeriod_PK] PRIMARY KEY CLUSTERED  ([SchoolYear], [TermDescriptorId], [SchoolId], [GradingPeriodDescriptorId], [BeginDate])
GO
PRINT N'Creating index [FK_SessionGradingPeriod_GradingPeriod] on [edfi].[SessionGradingPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_SessionGradingPeriod_GradingPeriod] ON [edfi].[SessionGradingPeriod] ([GradingPeriodDescriptorId], [SchoolId], [BeginDate])
GO
PRINT N'Creating index [FK_SessionGradingPeriod_Session] on [edfi].[SessionGradingPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_SessionGradingPeriod_Session] ON [edfi].[SessionGradingPeriod] ([SchoolId], [SchoolYear], [TermDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[SessionGradingPeriod]'
GO
ALTER TABLE [edfi].[SessionGradingPeriod] ADD CONSTRAINT [SessionGradingPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

