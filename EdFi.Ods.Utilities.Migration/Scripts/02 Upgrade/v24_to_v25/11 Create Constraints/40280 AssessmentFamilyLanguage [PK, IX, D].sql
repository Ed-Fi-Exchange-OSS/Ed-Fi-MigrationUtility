-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentFamilyLanguage_PK] on [edfi].[AssessmentFamilyLanguage]'
GO
ALTER TABLE [edfi].[AssessmentFamilyLanguage] ADD CONSTRAINT [AssessmentFamilyLanguage_PK] PRIMARY KEY CLUSTERED  ([AssessmentFamilyTitle], [LanguageDescriptorId])
GO
PRINT N'Creating index [FK_AssessmentFamilyLanguage_AssessmentFamily] on [edfi].[AssessmentFamilyLanguage]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentFamilyLanguage_AssessmentFamily] ON [edfi].[AssessmentFamilyLanguage] ([AssessmentFamilyTitle])
GO
PRINT N'Creating index [FK_AssessmentFamilyLanguage_LanguageDescriptor] on [edfi].[AssessmentFamilyLanguage]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentFamilyLanguage_LanguageDescriptor] ON [edfi].[AssessmentFamilyLanguage] ([LanguageDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[AssessmentFamilyLanguage]'
GO
ALTER TABLE [edfi].[AssessmentFamilyLanguage] ADD CONSTRAINT [AssessmentFamilyLanguage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

