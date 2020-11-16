-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [BehaviorType_PK] on [edfi].[BehaviorType]'
GO
ALTER TABLE [edfi].[BehaviorType] ADD CONSTRAINT [BehaviorType_PK] PRIMARY KEY CLUSTERED  ([BehaviorTypeId])
GO
PRINT N'Creating index [UX_BehaviorType_Id] on [edfi].[BehaviorType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_BehaviorType_Id] ON [edfi].[BehaviorType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[BehaviorType]'
GO
ALTER TABLE [edfi].[BehaviorType] ADD CONSTRAINT [BehaviorType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[BehaviorType] ADD CONSTRAINT [BehaviorType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[BehaviorType] ADD CONSTRAINT [BehaviorType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

