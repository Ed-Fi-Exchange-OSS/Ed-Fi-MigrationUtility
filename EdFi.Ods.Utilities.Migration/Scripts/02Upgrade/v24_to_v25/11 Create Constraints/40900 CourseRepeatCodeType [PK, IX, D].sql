-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseRepeatCodeType_PK] on [edfi].[CourseRepeatCodeType]'
GO
ALTER TABLE [edfi].[CourseRepeatCodeType] ADD CONSTRAINT [CourseRepeatCodeType_PK] PRIMARY KEY CLUSTERED  ([CourseRepeatCodeTypeId])
GO
PRINT N'Creating index [UX_CourseRepeatCodeType_Id] on [edfi].[CourseRepeatCodeType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CourseRepeatCodeType_Id] ON [edfi].[CourseRepeatCodeType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[CourseRepeatCodeType]'
GO
ALTER TABLE [edfi].[CourseRepeatCodeType] ADD CONSTRAINT [CourseRepeatCodeType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CourseRepeatCodeType] ADD CONSTRAINT [CourseRepeatCodeType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CourseRepeatCodeType] ADD CONSTRAINT [CourseRepeatCodeType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

