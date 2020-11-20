-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Calendar]'
GO
ALTER TABLE [edfi].[Calendar] ADD CONSTRAINT [FK_Calendar_CalendarTypeDescriptor] FOREIGN KEY ([CalendarTypeDescriptorId]) REFERENCES [edfi].[CalendarTypeDescriptor] ([CalendarTypeDescriptorId])
GO
ALTER TABLE [edfi].[Calendar] ADD CONSTRAINT [FK_Calendar_School] FOREIGN KEY ([SchoolId]) REFERENCES [edfi].[School] ([SchoolId])
GO
ALTER TABLE [edfi].[Calendar] ADD CONSTRAINT [FK_Calendar_SchoolYearType] FOREIGN KEY ([SchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO
