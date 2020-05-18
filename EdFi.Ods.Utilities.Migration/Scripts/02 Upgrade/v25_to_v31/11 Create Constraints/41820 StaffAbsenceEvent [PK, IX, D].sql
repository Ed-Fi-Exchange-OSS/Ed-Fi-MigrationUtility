-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StaffAbsenceEvent_PK] on [edfi].[StaffAbsenceEvent]'
GO
ALTER TABLE [edfi].[StaffAbsenceEvent] ADD CONSTRAINT [StaffAbsenceEvent_PK] PRIMARY KEY CLUSTERED  ([AbsenceEventCategoryDescriptorId], [EventDate], [StaffUSI])
GO

PRINT N'Creating index [UX_StaffAbsenceEvent_Id] on [edfi].[StaffAbsenceEvent]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StaffAbsenceEvent_Id] ON [edfi].[StaffAbsenceEvent] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_StaffAbsenceEvent_AbsenceEventCategoryDescriptor] on [edfi].[StaffAbsenceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffAbsenceEvent_AbsenceEventCategoryDescriptor] ON [edfi].[StaffAbsenceEvent] ([AbsenceEventCategoryDescriptorId])
GO

PRINT N'Creating index [FK_StaffAbsenceEvent_Staff] on [edfi].[StaffAbsenceEvent]'
GO
CREATE NONCLUSTERED INDEX [FK_StaffAbsenceEvent_Staff] ON [edfi].[StaffAbsenceEvent] ([StaffUSI])
GO

PRINT N'Adding constraints to [edfi].[StaffAbsenceEvent]'
GO
ALTER TABLE [edfi].[StaffAbsenceEvent] ADD CONSTRAINT [StaffAbsenceEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StaffAbsenceEvent] ADD CONSTRAINT [StaffAbsenceEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StaffAbsenceEvent] ADD CONSTRAINT [StaffAbsenceEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
