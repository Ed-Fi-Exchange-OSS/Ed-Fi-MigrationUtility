-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LeaveEvent_PK] on [edfi].[LeaveEvent]'
GO
ALTER TABLE [edfi].[LeaveEvent] ADD CONSTRAINT [LeaveEvent_PK] PRIMARY KEY CLUSTERED  ([StaffUSI], [EventDate], [LeaveEventCategoryTypeId])
GO
PRINT N'Creating index [UX_LeaveEvent_Id] on [edfi].[LeaveEvent]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_LeaveEvent_Id] ON [edfi].[LeaveEvent] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_LeaveEvent_LeaveEventCategoryType] on [edfi].[LeaveEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_LeaveEvent_LeaveEventCategoryType] ON [edfi].[LeaveEvent] ([LeaveEventCategoryTypeId])
GO
PRINT N'Creating index [FK_LeaveEvent_Staff] on [edfi].[LeaveEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_LeaveEvent_Staff] ON [edfi].[LeaveEvent] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[LeaveEvent]'
GO
ALTER TABLE [edfi].[LeaveEvent] ADD CONSTRAINT [LeaveEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[LeaveEvent] ADD CONSTRAINT [LeaveEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[LeaveEvent] ADD CONSTRAINT [LeaveEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO

