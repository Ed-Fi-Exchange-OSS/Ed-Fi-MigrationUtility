-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [BellScheduleMeetingTime_PK] on [edfi].[BellScheduleMeetingTime]'
GO
ALTER TABLE [edfi].[BellScheduleMeetingTime] ADD CONSTRAINT [BellScheduleMeetingTime_PK] PRIMARY KEY CLUSTERED  ([SchoolId], [GradeLevelDescriptorId], [Date], [BellScheduleName], [ClassPeriodName], [StartTime])
GO
PRINT N'Creating index [FK_BellScheduleMeetingTime_BellSchedule] on [edfi].[BellScheduleMeetingTime]'
GO
CREATE NONCLUSTERED INDEX [FK_BellScheduleMeetingTime_BellSchedule] ON [edfi].[BellScheduleMeetingTime] ([BellScheduleName], [GradeLevelDescriptorId], [SchoolId], [Date])
GO
PRINT N'Creating index [FK_BellScheduleMeetingTime_ClassPeriod] on [edfi].[BellScheduleMeetingTime]'
GO
CREATE NONCLUSTERED INDEX [FK_BellScheduleMeetingTime_ClassPeriod] ON [edfi].[BellScheduleMeetingTime] ([SchoolId], [ClassPeriodName])
GO

PRINT N'Adding constraints to [edfi].[BellScheduleMeetingTime]'
GO
ALTER TABLE [edfi].[BellScheduleMeetingTime] ADD CONSTRAINT [BellScheduleMeetingTime_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

