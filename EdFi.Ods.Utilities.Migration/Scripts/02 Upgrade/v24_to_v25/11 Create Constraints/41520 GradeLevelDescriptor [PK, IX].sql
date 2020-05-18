-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GradeLevelDescriptor_PK] on [edfi].[GradeLevelDescriptor]'
GO
ALTER TABLE [edfi].[GradeLevelDescriptor] ADD CONSTRAINT [GradeLevelDescriptor_PK] PRIMARY KEY CLUSTERED  ([GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_GradeLevelDescriptor_Descriptor] on [edfi].[GradeLevelDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_GradeLevelDescriptor_Descriptor] ON [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_GradeLevelDescriptor_GradeLevelType] on [edfi].[GradeLevelDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_GradeLevelDescriptor_GradeLevelType] ON [edfi].[GradeLevelDescriptor] ([GradeLevelTypeId])
GO

