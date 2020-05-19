-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LocalEducationAgencyCategoryType_PK] on [edfi].[LocalEducationAgencyCategoryType]'
GO
ALTER TABLE [edfi].[LocalEducationAgencyCategoryType] ADD CONSTRAINT [LocalEducationAgencyCategoryType_PK] PRIMARY KEY CLUSTERED  ([LocalEducationAgencyCategoryTypeId])
GO
PRINT N'Creating index [UX_LocalEducationAgencyCategoryType_Id] on [edfi].[LocalEducationAgencyCategoryType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_LocalEducationAgencyCategoryType_Id] ON [edfi].[LocalEducationAgencyCategoryType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[LocalEducationAgencyCategoryType]'
GO
ALTER TABLE [edfi].[LocalEducationAgencyCategoryType] ADD CONSTRAINT [LocalEducationAgencyCategoryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[LocalEducationAgencyCategoryType] ADD CONSTRAINT [LocalEducationAgencyCategoryType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[LocalEducationAgencyCategoryType] ADD CONSTRAINT [LocalEducationAgencyCategoryType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

