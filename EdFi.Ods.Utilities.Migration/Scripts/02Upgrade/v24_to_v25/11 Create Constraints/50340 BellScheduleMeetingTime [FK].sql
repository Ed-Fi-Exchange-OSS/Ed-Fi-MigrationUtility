-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[BellScheduleMeetingTime]'
GO
ALTER TABLE [edfi].[BellScheduleMeetingTime] ADD CONSTRAINT [FK_BellScheduleMeetingTime_BellSchedule] FOREIGN KEY ([BellScheduleName], [GradeLevelDescriptorId], [SchoolId], [Date]) REFERENCES [edfi].[BellSchedule] ([BellScheduleName], [GradeLevelDescriptorId], [SchoolId], [Date]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[BellScheduleMeetingTime] ADD CONSTRAINT [FK_BellScheduleMeetingTime_ClassPeriod] FOREIGN KEY ([SchoolId], [ClassPeriodName]) REFERENCES [edfi].[ClassPeriod] ([SchoolId], [ClassPeriodName]) ON UPDATE CASCADE
GO
