-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationContentDerivativeSourceURI_PK] on [edfi].[EducationContentDerivativeSourceURI]'
GO
ALTER TABLE [edfi].[EducationContentDerivativeSourceURI] ADD CONSTRAINT [EducationContentDerivativeSourceURI_PK] PRIMARY KEY CLUSTERED  ([ContentIdentifier], [URI])
GO
PRINT N'Creating index [FK_EducationContentDerivativeSourceURI_EducationContent] on [edfi].[EducationContentDerivativeSourceURI]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationContentDerivativeSourceURI_EducationContent] ON [edfi].[EducationContentDerivativeSourceURI] ([ContentIdentifier])
GO

PRINT N'Adding constraints to [edfi].[EducationContentDerivativeSourceURI]'
GO
ALTER TABLE [edfi].[EducationContentDerivativeSourceURI] ADD CONSTRAINT [EducationContentDerivativeSourceURI_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

