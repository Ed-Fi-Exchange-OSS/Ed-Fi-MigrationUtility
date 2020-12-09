-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InteractivityStyleType_PK] on [edfi].[InteractivityStyleType]'
GO
ALTER TABLE [edfi].[InteractivityStyleType] ADD CONSTRAINT [InteractivityStyleType_PK] PRIMARY KEY CLUSTERED  ([InteractivityStyleTypeId])
GO
PRINT N'Creating index [UX_InteractivityStyleType_Id] on [edfi].[InteractivityStyleType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_InteractivityStyleType_Id] ON [edfi].[InteractivityStyleType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[InteractivityStyleType]'
GO
ALTER TABLE [edfi].[InteractivityStyleType] ADD CONSTRAINT [InteractivityStyleType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[InteractivityStyleType] ADD CONSTRAINT [InteractivityStyleType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[InteractivityStyleType] ADD CONSTRAINT [InteractivityStyleType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

