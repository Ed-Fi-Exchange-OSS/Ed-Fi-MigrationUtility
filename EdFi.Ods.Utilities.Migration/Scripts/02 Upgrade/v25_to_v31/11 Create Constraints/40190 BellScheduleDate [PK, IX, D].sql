-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [BellScheduleDate_PK] on [edfi].[BellScheduleDate]'
GO
ALTER TABLE [edfi].[BellScheduleDate] ADD CONSTRAINT [BellScheduleDate_PK] PRIMARY KEY CLUSTERED  ([BellScheduleName], [Date], [SchoolId])
GO

PRINT N'Creating index [FK_BellScheduleDate_BellSchedule] on [edfi].[BellScheduleDate]'
GO
CREATE NONCLUSTERED INDEX [FK_BellScheduleDate_BellSchedule] ON [edfi].[BellScheduleDate] ([BellScheduleName], [SchoolId])
GO

PRINT N'Adding constraints to [edfi].[BellScheduleDate]'
GO
ALTER TABLE [edfi].[BellScheduleDate] ADD CONSTRAINT [BellScheduleDate_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
