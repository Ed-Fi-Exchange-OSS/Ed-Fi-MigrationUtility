-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionStudyLearningResourceMetadataURI_PK] on [edfi].[InterventionStudyLearningResourceMetadataURI]'
GO
ALTER TABLE [edfi].[InterventionStudyLearningResourceMetadataURI] ADD CONSTRAINT [InterventionStudyLearningResourceMetadataURI_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [InterventionStudyIdentificationCode], [LearningResourceMetadataURI])
GO

PRINT N'Creating index [FK_InterventionStudyLearningResourceMetadataURI_InterventionStudy] on [edfi].[InterventionStudyLearningResourceMetadataURI]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudyLearningResourceMetadataURI_InterventionStudy] ON [edfi].[InterventionStudyLearningResourceMetadataURI] ([EducationOrganizationId], [InterventionStudyIdentificationCode])
GO

PRINT N'Adding constraints to [edfi].[InterventionStudyLearningResourceMetadataURI]'
GO
ALTER TABLE [edfi].[InterventionStudyLearningResourceMetadataURI] ADD CONSTRAINT [InterventionStudyLearningResourceMetadataURI_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
