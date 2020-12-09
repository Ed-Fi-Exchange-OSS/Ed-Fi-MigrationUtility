-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [Calendar_PK] on [edfi].[Calendar]'
GO
ALTER TABLE [edfi].[Calendar] ADD CONSTRAINT [Calendar_PK] PRIMARY KEY CLUSTERED  ([CalendarCode], [SchoolId], [SchoolYear])
GO

PRINT N'Creating index [UX_Calendar_Id] on [edfi].[Calendar]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_Calendar_Id] ON [edfi].[Calendar] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_Calendar_CalendarTypeDescriptor] on [edfi].[Calendar]'
GO
CREATE NONCLUSTERED INDEX [FK_Calendar_CalendarTypeDescriptor] ON [edfi].[Calendar] ([CalendarTypeDescriptorId])
GO

PRINT N'Creating index [FK_Calendar_School] on [edfi].[Calendar]'
GO
CREATE NONCLUSTERED INDEX [FK_Calendar_School] ON [edfi].[Calendar] ([SchoolId])
GO

PRINT N'Creating index [FK_Calendar_SchoolYearType] on [edfi].[Calendar]'
GO
CREATE NONCLUSTERED INDEX [FK_Calendar_SchoolYearType] ON [edfi].[Calendar] ([SchoolYear])
GO

PRINT N'Adding constraints to [edfi].[Calendar]'
GO
ALTER TABLE [edfi].[Calendar] ADD CONSTRAINT [Calendar_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[Calendar] ADD CONSTRAINT [Calendar_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[Calendar] ADD CONSTRAINT [Calendar_DF_Id] DEFAULT (newid()) FOR [Id]
GO
