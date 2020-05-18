-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [DisciplineDescriptor_PK] on [edfi].[DisciplineDescriptor]'
GO
ALTER TABLE [edfi].[DisciplineDescriptor] ADD CONSTRAINT [DisciplineDescriptor_PK] PRIMARY KEY CLUSTERED  ([DisciplineDescriptorId])
GO
PRINT N'Creating index [FK_DisciplineDescriptor_Descriptor] on [edfi].[DisciplineDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineDescriptor_Descriptor] ON [edfi].[DisciplineDescriptor] ([DisciplineDescriptorId])
GO
PRINT N'Creating index [FK_DisciplineDescriptor_DisciplineType] on [edfi].[DisciplineDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_DisciplineDescriptor_DisciplineType] ON [edfi].[DisciplineDescriptor] ([DisciplineTypeId])
GO

