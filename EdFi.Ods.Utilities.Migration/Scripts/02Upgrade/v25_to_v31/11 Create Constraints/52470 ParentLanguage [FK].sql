-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ParentLanguage]'
GO
ALTER TABLE [edfi].[ParentLanguage] ADD CONSTRAINT [FK_ParentLanguage_LanguageDescriptor] FOREIGN KEY ([LanguageDescriptorId]) REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO
ALTER TABLE [edfi].[ParentLanguage] ADD CONSTRAINT [FK_ParentLanguage_Parent] FOREIGN KEY ([ParentUSI]) REFERENCES [edfi].[Parent] ([ParentUSI]) ON DELETE CASCADE
GO
