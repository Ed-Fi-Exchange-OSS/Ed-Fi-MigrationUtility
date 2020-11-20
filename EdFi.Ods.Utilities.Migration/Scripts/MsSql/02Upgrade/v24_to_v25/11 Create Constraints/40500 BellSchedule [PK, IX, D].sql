-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [BellSchedule_PK] on [edfi].[BellSchedule]'
GO
ALTER TABLE [edfi].[BellSchedule] ADD CONSTRAINT [BellSchedule_PK] PRIMARY KEY CLUSTERED  ([BellScheduleName], [GradeLevelDescriptorId], [SchoolId], [Date])
GO
PRINT N'Creating index [UX_BellSchedule_Id] on [edfi].[BellSchedule]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_BellSchedule_Id] ON [edfi].[BellSchedule] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_BellSchedule_GradeLevelDescriptor] on [edfi].[BellSchedule]'
GO
CREATE NONCLUSTERED INDEX [FK_BellSchedule_GradeLevelDescriptor] ON [edfi].[BellSchedule] ([GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_BellSchedule_CalendarDate] on [edfi].[BellSchedule]'
GO
CREATE NONCLUSTERED INDEX [FK_BellSchedule_CalendarDate] ON [edfi].[BellSchedule] ([SchoolId], [Date])
GO

PRINT N'Adding constraints to [edfi].[BellSchedule]'
GO
ALTER TABLE [edfi].[BellSchedule] ADD CONSTRAINT [BellSchedule_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[BellSchedule] ADD CONSTRAINT [BellSchedule_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[BellSchedule] ADD CONSTRAINT [BellSchedule_DF_Id] DEFAULT (newid()) FOR [Id]
GO

