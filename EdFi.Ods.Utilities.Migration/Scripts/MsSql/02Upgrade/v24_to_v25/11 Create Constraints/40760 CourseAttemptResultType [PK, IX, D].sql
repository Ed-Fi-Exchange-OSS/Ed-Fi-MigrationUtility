-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseAttemptResultType_PK] on [edfi].[CourseAttemptResultType]'
GO
ALTER TABLE [edfi].[CourseAttemptResultType] ADD CONSTRAINT [CourseAttemptResultType_PK] PRIMARY KEY CLUSTERED  ([CourseAttemptResultTypeId])
GO
PRINT N'Creating index [UX_CourseAttemptResultType_Id] on [edfi].[CourseAttemptResultType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_CourseAttemptResultType_Id] ON [edfi].[CourseAttemptResultType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[CourseAttemptResultType]'
GO
ALTER TABLE [edfi].[CourseAttemptResultType] ADD CONSTRAINT [CourseAttemptResultType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[CourseAttemptResultType] ADD CONSTRAINT [CourseAttemptResultType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[CourseAttemptResultType] ADD CONSTRAINT [CourseAttemptResultType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

