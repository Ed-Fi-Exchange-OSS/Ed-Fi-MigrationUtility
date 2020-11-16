-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EducationContentDerivativeSourceLearningResourceMetadataURI_PK] on [edfi].[EducationContentDerivativeSourceLearningResourceMetadataURI]'
GO
ALTER TABLE [edfi].[EducationContentDerivativeSourceLearningResourceMetadataURI] ADD CONSTRAINT [EducationContentDerivativeSourceLearningResourceMetadataURI_PK] PRIMARY KEY CLUSTERED  ([ContentIdentifier], [LearningResourceMetadataURI])
GO
PRINT N'Creating index [FK_EducationContentDerivativeSourceLearningResourceMetadataURI_EducationContent] on [edfi].[EducationContentDerivativeSourceLearningResourceMetadataURI]'
GO
CREATE NONCLUSTERED INDEX [FK_EducationContentDerivativeSourceLearningResourceMetadataURI_EducationContent] ON [edfi].[EducationContentDerivativeSourceLearningResourceMetadataURI] ([ContentIdentifier])
GO

PRINT N'Adding constraints to [edfi].[EducationContentDerivativeSourceLearningResourceMetadataURI]'
GO
ALTER TABLE [edfi].[EducationContentDerivativeSourceLearningResourceMetadataURI] ADD CONSTRAINT [EducationContentDerivativeSourceLearningResourceMetadataURI_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

