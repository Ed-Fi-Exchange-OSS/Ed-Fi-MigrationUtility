-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentLanguage_PK] on [edfi].[AssessmentLanguage]'
GO
ALTER TABLE [edfi].[AssessmentLanguage] ADD CONSTRAINT [AssessmentLanguage_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [LanguageDescriptorId], [Namespace])
GO
PRINT N'Creating index [FK_AssessmentLanguage_Assessment] on [edfi].[AssessmentLanguage]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentLanguage_Assessment] ON [edfi].[AssessmentLanguage] ([AssessmentIdentifier], [Namespace])
GO
PRINT N'Creating index [FK_AssessmentLanguage_LanguageDescriptor] on [edfi].[AssessmentLanguage]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentLanguage_LanguageDescriptor] ON [edfi].[AssessmentLanguage] ([LanguageDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[AssessmentLanguage]'
GO
ALTER TABLE [edfi].[AssessmentLanguage] ADD CONSTRAINT [AssessmentLanguage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

