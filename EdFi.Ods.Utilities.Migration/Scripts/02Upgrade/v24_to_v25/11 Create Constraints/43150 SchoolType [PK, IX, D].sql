-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SchoolType_PK] on [edfi].[SchoolType]'
GO
ALTER TABLE [edfi].[SchoolType] ADD CONSTRAINT [SchoolType_PK] PRIMARY KEY CLUSTERED  ([SchoolTypeId])
GO
PRINT N'Creating index [UX_SchoolType_Id] on [edfi].[SchoolType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_SchoolType_Id] ON [edfi].[SchoolType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[SchoolType]'
GO
ALTER TABLE [edfi].[SchoolType] ADD CONSTRAINT [SchoolType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[SchoolType] ADD CONSTRAINT [SchoolType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[SchoolType] ADD CONSTRAINT [SchoolType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

