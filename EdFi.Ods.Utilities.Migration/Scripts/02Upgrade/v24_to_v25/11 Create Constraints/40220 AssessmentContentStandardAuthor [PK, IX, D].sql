-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentContentStandardAuthor_PK] on [edfi].[AssessmentContentStandardAuthor]'
GO
ALTER TABLE [edfi].[AssessmentContentStandardAuthor] ADD CONSTRAINT [AssessmentContentStandardAuthor_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentifier], [Author], [Namespace])
GO
PRINT N'Creating index [FK_AssessmentContentStandardAuthor_AssessmentContentStandard] on [edfi].[AssessmentContentStandardAuthor]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentContentStandardAuthor_AssessmentContentStandard] ON [edfi].[AssessmentContentStandardAuthor] ([AssessmentIdentifier], [Namespace])
GO

PRINT N'Adding constraints to [edfi].[AssessmentContentStandardAuthor]'
GO
ALTER TABLE [edfi].[AssessmentContentStandardAuthor] ADD CONSTRAINT [AssessmentContentStandardAuthor_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

