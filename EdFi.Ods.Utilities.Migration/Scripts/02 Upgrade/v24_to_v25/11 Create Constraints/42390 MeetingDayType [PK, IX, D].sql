-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [MeetingDayType_PK] on [edfi].[MeetingDayType]'
GO
ALTER TABLE [edfi].[MeetingDayType] ADD CONSTRAINT [MeetingDayType_PK] PRIMARY KEY CLUSTERED  ([MeetingDayTypeId])
GO
PRINT N'Creating index [UX_MeetingDayType_Id] on [edfi].[MeetingDayType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_MeetingDayType_Id] ON [edfi].[MeetingDayType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[MeetingDayType]'
GO
ALTER TABLE [edfi].[MeetingDayType] ADD CONSTRAINT [MeetingDayType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[MeetingDayType] ADD CONSTRAINT [MeetingDayType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[MeetingDayType] ADD CONSTRAINT [MeetingDayType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

