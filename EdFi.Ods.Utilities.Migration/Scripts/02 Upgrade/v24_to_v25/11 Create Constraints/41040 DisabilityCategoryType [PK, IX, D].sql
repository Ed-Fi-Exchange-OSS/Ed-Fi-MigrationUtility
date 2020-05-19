-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [DisabilityCategoryType_PK] on [edfi].[DisabilityCategoryType]'
GO
ALTER TABLE [edfi].[DisabilityCategoryType] ADD CONSTRAINT [DisabilityCategoryType_PK] PRIMARY KEY CLUSTERED  ([DisabilityCategoryTypeId])
GO
PRINT N'Creating index [UX_DisabilityCategoryType_Id] on [edfi].[DisabilityCategoryType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_DisabilityCategoryType_Id] ON [edfi].[DisabilityCategoryType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[DisabilityCategoryType]'
GO
ALTER TABLE [edfi].[DisabilityCategoryType] ADD CONSTRAINT [DisabilityCategoryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[DisabilityCategoryType] ADD CONSTRAINT [DisabilityCategoryType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[DisabilityCategoryType] ADD CONSTRAINT [DisabilityCategoryType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

