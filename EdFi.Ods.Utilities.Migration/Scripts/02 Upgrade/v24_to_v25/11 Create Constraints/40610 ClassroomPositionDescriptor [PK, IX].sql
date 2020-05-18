-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ClassroomPositionDescriptor_PK] on [edfi].[ClassroomPositionDescriptor]'
GO
ALTER TABLE [edfi].[ClassroomPositionDescriptor] ADD CONSTRAINT [ClassroomPositionDescriptor_PK] PRIMARY KEY CLUSTERED  ([ClassroomPositionDescriptorId])
GO
PRINT N'Creating index [FK_ClassroomPositionDescriptor_Descriptor] on [edfi].[ClassroomPositionDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_ClassroomPositionDescriptor_Descriptor] ON [edfi].[ClassroomPositionDescriptor] ([ClassroomPositionDescriptorId])
GO
PRINT N'Creating index [FK_ClassroomPositionDescriptor_ClassroomPositionType] on [edfi].[ClassroomPositionDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_ClassroomPositionDescriptor_ClassroomPositionType] ON [edfi].[ClassroomPositionDescriptor] ([ClassroomPositionTypeId])
GO

