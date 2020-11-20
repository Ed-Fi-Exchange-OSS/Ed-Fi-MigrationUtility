-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ClassPeriodMeetingTime_PK] on [edfi].[ClassPeriodMeetingTime]'
GO
ALTER TABLE [edfi].[ClassPeriodMeetingTime] ADD CONSTRAINT [ClassPeriodMeetingTime_PK] PRIMARY KEY CLUSTERED  ([ClassPeriodName], [EndTime], [SchoolId], [StartTime])
GO

PRINT N'Creating index [FK_ClassPeriodMeetingTime_ClassPeriod] on [edfi].[ClassPeriodMeetingTime]'
GO
CREATE NONCLUSTERED INDEX [FK_ClassPeriodMeetingTime_ClassPeriod] ON [edfi].[ClassPeriodMeetingTime] ([ClassPeriodName], [SchoolId])
GO

PRINT N'Adding constraints to [edfi].[ClassPeriodMeetingTime]'
GO
ALTER TABLE [edfi].[ClassPeriodMeetingTime] ADD CONSTRAINT [ClassPeriodMeetingTime_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
