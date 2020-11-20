-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseIdentificationSystemDescriptor_PK] on [edfi].[CourseIdentificationSystemDescriptor]'
GO
ALTER TABLE [edfi].[CourseIdentificationSystemDescriptor] ADD CONSTRAINT [CourseIdentificationSystemDescriptor_PK] PRIMARY KEY CLUSTERED  ([CourseIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_CourseIdentificationSystemDescriptor_Descriptor] on [edfi].[CourseIdentificationSystemDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseIdentificationSystemDescriptor_Descriptor] ON [edfi].[CourseIdentificationSystemDescriptor] ([CourseIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_CourseIdentificationSystemDescriptor_CourseIdentificationSystemType] on [edfi].[CourseIdentificationSystemDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseIdentificationSystemDescriptor_CourseIdentificationSystemType] ON [edfi].[CourseIdentificationSystemDescriptor] ([CourseIdentificationSystemTypeId])
GO

