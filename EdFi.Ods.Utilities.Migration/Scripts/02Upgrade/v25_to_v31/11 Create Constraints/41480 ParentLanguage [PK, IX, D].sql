-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ParentLanguage_PK] on [edfi].[ParentLanguage]'
GO
ALTER TABLE [edfi].[ParentLanguage] ADD CONSTRAINT [ParentLanguage_PK] PRIMARY KEY CLUSTERED  ([LanguageDescriptorId], [ParentUSI])
GO

PRINT N'Creating index [FK_ParentLanguage_LanguageDescriptor] on [edfi].[ParentLanguage]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentLanguage_LanguageDescriptor] ON [edfi].[ParentLanguage] ([LanguageDescriptorId])
GO

PRINT N'Creating index [FK_ParentLanguage_Parent] on [edfi].[ParentLanguage]'
GO
CREATE NONCLUSTERED INDEX [FK_ParentLanguage_Parent] ON [edfi].[ParentLanguage] ([ParentUSI])
GO

PRINT N'Adding constraints to [edfi].[ParentLanguage]'
GO
ALTER TABLE [edfi].[ParentLanguage] ADD CONSTRAINT [ParentLanguage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
