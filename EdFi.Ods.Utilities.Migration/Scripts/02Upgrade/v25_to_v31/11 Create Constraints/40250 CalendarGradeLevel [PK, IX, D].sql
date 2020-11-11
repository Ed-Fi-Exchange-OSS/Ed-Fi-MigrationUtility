-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CalendarGradeLevel_PK] on [edfi].[CalendarGradeLevel]'
GO
ALTER TABLE [edfi].[CalendarGradeLevel] ADD CONSTRAINT [CalendarGradeLevel_PK] PRIMARY KEY CLUSTERED  ([CalendarCode], [GradeLevelDescriptorId], [SchoolId], [SchoolYear])
GO

PRINT N'Creating index [FK_CalendarGradeLevel_Calendar] on [edfi].[CalendarGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_CalendarGradeLevel_Calendar] ON [edfi].[CalendarGradeLevel] ([CalendarCode], [SchoolId], [SchoolYear])
GO

PRINT N'Creating index [FK_CalendarGradeLevel_GradeLevelDescriptor] on [edfi].[CalendarGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_CalendarGradeLevel_GradeLevelDescriptor] ON [edfi].[CalendarGradeLevel] ([GradeLevelDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[CalendarGradeLevel]'
GO
ALTER TABLE [edfi].[CalendarGradeLevel] ADD CONSTRAINT [CalendarGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
