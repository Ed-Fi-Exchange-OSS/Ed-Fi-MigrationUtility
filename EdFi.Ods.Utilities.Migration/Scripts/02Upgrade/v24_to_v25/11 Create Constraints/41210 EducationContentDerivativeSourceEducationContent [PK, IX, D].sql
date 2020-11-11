-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationContentDerivativeSourceEducationContent_PK] on [edfi].[EducationContentDerivativeSourceEducationContent]'
GO
ALTER TABLE [edfi].[EducationContentDerivativeSourceEducationContent] ADD CONSTRAINT [EducationContentDerivativeSourceEducationContent_PK] PRIMARY KEY CLUSTERED  ([ContentIdentifier], [DerivativeSourceContentIdentifier])
GO
PRINT N'Creating index [FK_EducationContentDerivativeSourceEducationContent_EducationContent] on [edfi].[EducationContentDerivativeSourceEducationContent]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationContentDerivativeSourceEducationContent_EducationContent] ON [edfi].[EducationContentDerivativeSourceEducationContent] ([ContentIdentifier])
GO
PRINT N'Creating index [FK_EducationContentDerivativeSourceEducationContent_EducationContent1] on [edfi].[EducationContentDerivativeSourceEducationContent]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationContentDerivativeSourceEducationContent_EducationContent1] ON [edfi].[EducationContentDerivativeSourceEducationContent] ([DerivativeSourceContentIdentifier])
GO

PRINT N'Adding constraints to [edfi].[EducationContentDerivativeSourceEducationContent]'
GO
ALTER TABLE [edfi].[EducationContentDerivativeSourceEducationContent] ADD CONSTRAINT [EducationContentDerivativeSourceEducationContent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

