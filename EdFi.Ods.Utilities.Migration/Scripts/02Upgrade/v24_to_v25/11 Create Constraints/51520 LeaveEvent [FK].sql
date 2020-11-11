-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[LeaveEvent]'
GO
ALTER TABLE [edfi].[LeaveEvent] ADD CONSTRAINT [FK_LeaveEvent_LeaveEventCategoryType] FOREIGN KEY ([LeaveEventCategoryTypeId]) REFERENCES [edfi].[LeaveEventCategoryType] ([LeaveEventCategoryTypeId])
GO
ALTER TABLE [edfi].[LeaveEvent] ADD CONSTRAINT [FK_LeaveEvent_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI])
GO
