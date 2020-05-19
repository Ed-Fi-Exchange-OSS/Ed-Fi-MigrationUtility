-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [BellScheduleClassPeriod_PK] on [edfi].[BellScheduleClassPeriod]'
GO
ALTER TABLE [edfi].[BellScheduleClassPeriod] ADD CONSTRAINT [BellScheduleClassPeriod_PK] PRIMARY KEY CLUSTERED  ([BellScheduleName], [ClassPeriodName], [SchoolId])
GO

PRINT N'Creating index [FK_BellScheduleClassPeriod_BellSchedule] on [edfi].[BellScheduleClassPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_BellScheduleClassPeriod_BellSchedule] ON [edfi].[BellScheduleClassPeriod] ([BellScheduleName], [SchoolId])
GO

PRINT N'Creating index [FK_BellScheduleClassPeriod_ClassPeriod] on [edfi].[BellScheduleClassPeriod]'
GO
CREATE NONCLUSTERED INDEX [FK_BellScheduleClassPeriod_ClassPeriod] ON [edfi].[BellScheduleClassPeriod] ([ClassPeriodName], [SchoolId])
GO

PRINT N'Adding constraints to [edfi].[BellScheduleClassPeriod]'
GO
ALTER TABLE [edfi].[BellScheduleClassPeriod] ADD CONSTRAINT [BellScheduleClassPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
