-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LevelDescriptor_PK] on [edfi].[LevelDescriptor]'
GO
ALTER TABLE [edfi].[LevelDescriptor] ADD CONSTRAINT [LevelDescriptor_PK] PRIMARY KEY CLUSTERED  ([LevelDescriptorId])
GO
PRINT N'Creating index [FK_LevelDescriptor_Descriptor] on [edfi].[LevelDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_LevelDescriptor_Descriptor] ON [edfi].[LevelDescriptor] ([LevelDescriptorId])
GO

