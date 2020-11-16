-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[InterventionStudyLearningResourceMetadataURI]'
GO
ALTER TABLE [edfi].[InterventionStudyLearningResourceMetadataURI] ADD CONSTRAINT [FK_InterventionStudyLearningResourceMetadataURI_InterventionStudy] FOREIGN KEY ([EducationOrganizationId], [InterventionStudyIdentificationCode]) REFERENCES [edfi].[InterventionStudy] ([EducationOrganizationId], [InterventionStudyIdentificationCode]) ON DELETE CASCADE
GO
