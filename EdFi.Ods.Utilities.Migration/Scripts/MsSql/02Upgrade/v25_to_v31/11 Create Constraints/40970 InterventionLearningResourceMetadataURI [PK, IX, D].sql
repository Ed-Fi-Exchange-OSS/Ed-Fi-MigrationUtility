-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionLearningResourceMetadataURI_PK] on [edfi].[InterventionLearningResourceMetadataURI]'
GO
ALTER TABLE [edfi].[InterventionLearningResourceMetadataURI] ADD CONSTRAINT [InterventionLearningResourceMetadataURI_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [InterventionIdentificationCode], [LearningResourceMetadataURI])
GO

PRINT N'Creating index [FK_InterventionLearningResourceMetadataURI_Intervention] on [edfi].[InterventionLearningResourceMetadataURI]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionLearningResourceMetadataURI_Intervention] ON [edfi].[InterventionLearningResourceMetadataURI] ([EducationOrganizationId], [InterventionIdentificationCode])
GO

PRINT N'Adding constraints to [edfi].[InterventionLearningResourceMetadataURI]'
GO
ALTER TABLE [edfi].[InterventionLearningResourceMetadataURI] ADD CONSTRAINT [InterventionLearningResourceMetadataURI_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
