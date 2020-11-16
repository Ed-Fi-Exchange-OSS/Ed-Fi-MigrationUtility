-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[CalendarGradeLevel]'
GO
ALTER TABLE [edfi].[CalendarGradeLevel] ADD CONSTRAINT [FK_CalendarGradeLevel_Calendar] FOREIGN KEY ([CalendarCode], [SchoolId], [SchoolYear]) REFERENCES [edfi].[Calendar] ([CalendarCode], [SchoolId], [SchoolYear]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[CalendarGradeLevel] ADD CONSTRAINT [FK_CalendarGradeLevel_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId]) REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO
