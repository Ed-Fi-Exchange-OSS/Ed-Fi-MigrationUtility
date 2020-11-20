-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentLanguage_PK] on [edfi].[StudentLanguage]'
GO
ALTER TABLE [edfi].[StudentLanguage] ADD CONSTRAINT [StudentLanguage_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [LanguageDescriptorId])
GO
PRINT N'Creating index [FK_StudentLanguage_LanguageDescriptor] on [edfi].[StudentLanguage]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentLanguage_LanguageDescriptor] ON [edfi].[StudentLanguage] ([LanguageDescriptorId])
GO
PRINT N'Creating index [FK_StudentLanguage_Student] on [edfi].[StudentLanguage]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentLanguage_Student] ON [edfi].[StudentLanguage] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentLanguage]'
GO
ALTER TABLE [edfi].[StudentLanguage] ADD CONSTRAINT [StudentLanguage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

