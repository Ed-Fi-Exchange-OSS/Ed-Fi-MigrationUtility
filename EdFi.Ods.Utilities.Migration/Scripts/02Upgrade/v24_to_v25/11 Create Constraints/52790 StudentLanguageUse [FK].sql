-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentLanguageUse]'
GO
ALTER TABLE [edfi].[StudentLanguageUse] ADD CONSTRAINT [FK_StudentLanguageUse_LanguageUseType] FOREIGN KEY ([LanguageUseTypeId]) REFERENCES [edfi].[LanguageUseType] ([LanguageUseTypeId])
GO
ALTER TABLE [edfi].[StudentLanguageUse] ADD CONSTRAINT [FK_StudentLanguageUse_StudentLanguage] FOREIGN KEY ([StudentUSI], [LanguageDescriptorId]) REFERENCES [edfi].[StudentLanguage] ([StudentUSI], [LanguageDescriptorId]) ON DELETE CASCADE
GO
