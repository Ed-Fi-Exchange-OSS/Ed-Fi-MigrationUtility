-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseIdentificationSystemType_PK] on [edfi].[CourseIdentificationSystemType]'
GO
ALTER TABLE [edfi].[CourseIdentificationSystemType] ADD CONSTRAINT [CourseIdentificationSystemType_PK] PRIMARY KEY CLUSTERED  ([CourseIdentificationSystemTypeId])
GO
PRINT N'Creating index [UX_CourseIdentificationSystemType_Id] on [edfi].[CourseIdentificationSystemType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CourseIdentificationSystemType_Id] ON [edfi].[CourseIdentificationSystemType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[CourseIdentificationSystemType]'
GO
ALTER TABLE [edfi].[CourseIdentificationSystemType] ADD CONSTRAINT [CourseIdentificationSystemType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CourseIdentificationSystemType] ADD CONSTRAINT [CourseIdentificationSystemType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CourseIdentificationSystemType] ADD CONSTRAINT [CourseIdentificationSystemType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

