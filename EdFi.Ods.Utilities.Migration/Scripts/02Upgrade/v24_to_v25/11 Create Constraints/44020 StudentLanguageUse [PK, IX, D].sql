-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentLanguageUse_PK] on [edfi].[StudentLanguageUse]'
GO
ALTER TABLE [edfi].[StudentLanguageUse] ADD CONSTRAINT [StudentLanguageUse_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [LanguageDescriptorId], [LanguageUseTypeId])
GO
PRINT N'Creating index [FK_StudentLanguageUse_LanguageUseType] on [edfi].[StudentLanguageUse]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentLanguageUse_LanguageUseType] ON [edfi].[StudentLanguageUse] ([LanguageUseTypeId])
GO
PRINT N'Creating index [FK_StudentLanguageUse_StudentLanguage] on [edfi].[StudentLanguageUse]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentLanguageUse_StudentLanguage] ON [edfi].[StudentLanguageUse] ([StudentUSI], [LanguageDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentLanguageUse]'
GO
ALTER TABLE [edfi].[StudentLanguageUse] ADD CONSTRAINT [StudentLanguageUse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

