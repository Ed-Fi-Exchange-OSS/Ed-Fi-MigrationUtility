-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [BellScheduleGradeLevel_PK] on [edfi].[BellScheduleGradeLevel]'
GO
ALTER TABLE [edfi].[BellScheduleGradeLevel] ADD CONSTRAINT [BellScheduleGradeLevel_PK] PRIMARY KEY CLUSTERED  ([BellScheduleName], [GradeLevelDescriptorId], [SchoolId])
GO

PRINT N'Creating index [FK_BellScheduleGradeLevel_BellSchedule] on [edfi].[BellScheduleGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_BellScheduleGradeLevel_BellSchedule] ON [edfi].[BellScheduleGradeLevel] ([BellScheduleName], [SchoolId])
GO

PRINT N'Creating index [FK_BellScheduleGradeLevel_GradeLevelDescriptor] on [edfi].[BellScheduleGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_BellScheduleGradeLevel_GradeLevelDescriptor] ON [edfi].[BellScheduleGradeLevel] ([GradeLevelDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[BellScheduleGradeLevel]'
GO
ALTER TABLE [edfi].[BellScheduleGradeLevel] ADD CONSTRAINT [BellScheduleGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
