-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[BellScheduleClassPeriod]'
GO
ALTER TABLE [edfi].[BellScheduleClassPeriod] ADD CONSTRAINT [FK_BellScheduleClassPeriod_BellSchedule] FOREIGN KEY ([BellScheduleName], [SchoolId]) REFERENCES [edfi].[BellSchedule] ([BellScheduleName], [SchoolId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[BellScheduleClassPeriod] ADD CONSTRAINT [FK_BellScheduleClassPeriod_ClassPeriod] FOREIGN KEY ([ClassPeriodName], [SchoolId]) REFERENCES [edfi].[ClassPeriod] ([ClassPeriodName], [SchoolId]) ON UPDATE CASCADE
GO
