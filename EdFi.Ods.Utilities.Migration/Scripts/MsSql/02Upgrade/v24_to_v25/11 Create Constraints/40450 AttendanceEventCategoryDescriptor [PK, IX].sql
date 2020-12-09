-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AttendanceEventCategoryDescriptor_PK] on [edfi].[AttendanceEventCategoryDescriptor]'
GO
ALTER TABLE [edfi].[AttendanceEventCategoryDescriptor] ADD CONSTRAINT [AttendanceEventCategoryDescriptor_PK] PRIMARY KEY CLUSTERED  ([AttendanceEventCategoryDescriptorId])
GO
PRINT N'Creating index [FK_AttendanceEventCategoryDescriptor_Descriptor] on [edfi].[AttendanceEventCategoryDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_AttendanceEventCategoryDescriptor_Descriptor] ON [edfi].[AttendanceEventCategoryDescriptor] ([AttendanceEventCategoryDescriptorId])
GO
PRINT N'Creating index [FK_AttendanceEventCategoryDescriptor_AttendanceEventCategoryType] on [edfi].[AttendanceEventCategoryDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_AttendanceEventCategoryDescriptor_AttendanceEventCategoryType] ON [edfi].[AttendanceEventCategoryDescriptor] ([AttendanceEventCategoryTypeId])
GO

