-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionPrescriptionLearningResourceMetadataURI_PK] on [edfi].[InterventionPrescriptionLearningResourceMetadataURI]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionLearningResourceMetadataURI] ADD CONSTRAINT [InterventionPrescriptionLearningResourceMetadataURI_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [InterventionPrescriptionIdentificationCode], [LearningResourceMetadataURI])
GO

PRINT N'Creating index [FK_InterventionPrescriptionLearningResourceMetadataURI_InterventionPrescription] on [edfi].[InterventionPrescriptionLearningResourceMetadataURI]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPrescriptionLearningResourceMetadataURI_InterventionPrescription] ON [edfi].[InterventionPrescriptionLearningResourceMetadataURI] ([EducationOrganizationId], [InterventionPrescriptionIdentificationCode])
GO

PRINT N'Adding constraints to [edfi].[InterventionPrescriptionLearningResourceMetadataURI]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionLearningResourceMetadataURI] ADD CONSTRAINT [InterventionPrescriptionLearningResourceMetadataURI_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
