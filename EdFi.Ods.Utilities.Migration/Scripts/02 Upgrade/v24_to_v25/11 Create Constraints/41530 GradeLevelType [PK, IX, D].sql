-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [GradeLevelType_PK] on [edfi].[GradeLevelType]'
GO
ALTER TABLE [edfi].[GradeLevelType] ADD CONSTRAINT [GradeLevelType_PK] PRIMARY KEY CLUSTERED  ([GradeLevelTypeId])
GO
PRINT N'Creating index [UX_GradeLevelType_Id] on [edfi].[GradeLevelType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_GradeLevelType_Id] ON [edfi].[GradeLevelType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[GradeLevelType]'
GO
ALTER TABLE [edfi].[GradeLevelType] ADD CONSTRAINT [GradeLevelType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[GradeLevelType] ADD CONSTRAINT [GradeLevelType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[GradeLevelType] ADD CONSTRAINT [GradeLevelType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

