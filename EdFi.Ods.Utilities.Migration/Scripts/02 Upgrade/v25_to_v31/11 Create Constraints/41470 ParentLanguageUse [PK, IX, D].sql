-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ParentLanguageUse_PK] on [edfi].[ParentLanguageUse]'
GO
ALTER TABLE [edfi].[ParentLanguageUse] ADD CONSTRAINT [ParentLanguageUse_PK] PRIMARY KEY CLUSTERED  ([LanguageDescriptorId], [LanguageUseDescriptorId], [ParentUSI])
GO

PRINT N'Creating index [FK_ParentLanguageUse_ParentLanguage] on [edfi].[ParentLanguageUse]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentLanguageUse_ParentLanguage] ON [edfi].[ParentLanguageUse] ([LanguageDescriptorId], [ParentUSI])
GO

PRINT N'Creating index [FK_ParentLanguageUse_LanguageUseDescriptor] on [edfi].[ParentLanguageUse]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentLanguageUse_LanguageUseDescriptor] ON [edfi].[ParentLanguageUse] ([LanguageUseDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[ParentLanguageUse]'
GO
ALTER TABLE [edfi].[ParentLanguageUse] ADD CONSTRAINT [ParentLanguageUse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
