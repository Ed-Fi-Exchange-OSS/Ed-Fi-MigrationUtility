-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseDefinedByType_PK] on [edfi].[CourseDefinedByType]'
GO
ALTER TABLE [edfi].[CourseDefinedByType] ADD CONSTRAINT [CourseDefinedByType_PK] PRIMARY KEY CLUSTERED  ([CourseDefinedByTypeId])
GO
PRINT N'Creating index [UX_CourseDefinedByType_Id] on [edfi].[CourseDefinedByType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CourseDefinedByType_Id] ON [edfi].[CourseDefinedByType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[CourseDefinedByType]'
GO
ALTER TABLE [edfi].[CourseDefinedByType] ADD CONSTRAINT [CourseDefinedByType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CourseDefinedByType] ADD CONSTRAINT [CourseDefinedByType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CourseDefinedByType] ADD CONSTRAINT [CourseDefinedByType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

