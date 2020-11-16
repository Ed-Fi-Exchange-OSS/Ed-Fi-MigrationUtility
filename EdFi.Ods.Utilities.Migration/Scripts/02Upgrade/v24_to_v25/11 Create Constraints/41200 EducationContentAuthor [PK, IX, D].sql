-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationContentAuthor_PK] on [edfi].[EducationContentAuthor]'
GO
ALTER TABLE [edfi].[EducationContentAuthor] ADD CONSTRAINT [EducationContentAuthor_PK] PRIMARY KEY CLUSTERED  ([ContentIdentifier], [Author])
GO
PRINT N'Creating index [FK_EducationContentAuthor_EducationContent] on [edfi].[EducationContentAuthor]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationContentAuthor_EducationContent] ON [edfi].[EducationContentAuthor] ([ContentIdentifier])
GO

PRINT N'Adding constraints to [edfi].[EducationContentAuthor]'
GO
ALTER TABLE [edfi].[EducationContentAuthor] ADD CONSTRAINT [EducationContentAuthor_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

