-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationContentLanguage_PK] on [edfi].[EducationContentLanguage]'
GO
ALTER TABLE [edfi].[EducationContentLanguage] ADD CONSTRAINT [EducationContentLanguage_PK] PRIMARY KEY CLUSTERED  ([ContentIdentifier], [LanguageDescriptorId])
GO
PRINT N'Creating index [FK_EducationContentLanguage_EducationContent] on [edfi].[EducationContentLanguage]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationContentLanguage_EducationContent] ON [edfi].[EducationContentLanguage] ([ContentIdentifier])
GO
PRINT N'Creating index [FK_EducationContentLanguage_LanguageDescriptor] on [edfi].[EducationContentLanguage]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationContentLanguage_LanguageDescriptor] ON [edfi].[EducationContentLanguage] ([LanguageDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[EducationContentLanguage]'
GO
ALTER TABLE [edfi].[EducationContentLanguage] ADD CONSTRAINT [EducationContentLanguage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

