-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AcademicSubjectType_PK] on [edfi].[AcademicSubjectType]'
GO
ALTER TABLE [edfi].[AcademicSubjectType] ADD CONSTRAINT [AcademicSubjectType_PK] PRIMARY KEY CLUSTERED  ([AcademicSubjectTypeId])
GO
PRINT N'Creating index [UX_AcademicSubjectType_Id] on [edfi].[AcademicSubjectType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_AcademicSubjectType_Id] ON [edfi].[AcademicSubjectType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[AcademicSubjectType]'
GO
ALTER TABLE [edfi].[AcademicSubjectType] ADD CONSTRAINT [AcademicSubjectType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[AcademicSubjectType] ADD CONSTRAINT [AcademicSubjectType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[AcademicSubjectType] ADD CONSTRAINT [AcademicSubjectType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

