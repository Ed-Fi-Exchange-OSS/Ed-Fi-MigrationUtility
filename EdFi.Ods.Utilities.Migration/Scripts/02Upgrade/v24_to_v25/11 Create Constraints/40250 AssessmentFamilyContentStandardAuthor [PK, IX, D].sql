-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentFamilyContentStandardAuthor_PK] on [edfi].[AssessmentFamilyContentStandardAuthor]'
GO
ALTER TABLE [edfi].[AssessmentFamilyContentStandardAuthor] ADD CONSTRAINT [AssessmentFamilyContentStandardAuthor_PK] PRIMARY KEY CLUSTERED  ([AssessmentFamilyTitle], [Author])
GO
PRINT N'Creating index [FK_AssessmentFamilyContentStandardAuthor_AssessmentFamilyContentStandard] on [edfi].[AssessmentFamilyContentStandardAuthor]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentFamilyContentStandardAuthor_AssessmentFamilyContentStandard] ON [edfi].[AssessmentFamilyContentStandardAuthor] ([AssessmentFamilyTitle])
GO

PRINT N'Adding constraints to [edfi].[AssessmentFamilyContentStandardAuthor]'
GO
ALTER TABLE [edfi].[AssessmentFamilyContentStandardAuthor] ADD CONSTRAINT [AssessmentFamilyContentStandardAuthor_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

