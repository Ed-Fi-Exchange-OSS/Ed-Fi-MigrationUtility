-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionStudyInterventionEffectiveness_PK] on [edfi].[InterventionStudyInterventionEffectiveness]'
GO
ALTER TABLE [edfi].[InterventionStudyInterventionEffectiveness] ADD CONSTRAINT [InterventionStudyInterventionEffectiveness_PK] PRIMARY KEY CLUSTERED  ([InterventionStudyIdentificationCode], [EducationOrganizationId], [DiagnosisDescriptorId], [PopulationServedTypeId], [GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_InterventionStudyInterventionEffectiveness_DiagnosisDescriptor] on [edfi].[InterventionStudyInterventionEffectiveness]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudyInterventionEffectiveness_DiagnosisDescriptor] ON [edfi].[InterventionStudyInterventionEffectiveness] ([DiagnosisDescriptorId])
GO
PRINT N'Creating index [FK_InterventionStudyInterventionEffectiveness_GradeLevelDescriptor] on [edfi].[InterventionStudyInterventionEffectiveness]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudyInterventionEffectiveness_GradeLevelDescriptor] ON [edfi].[InterventionStudyInterventionEffectiveness] ([GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_InterventionStudyInterventionEffectiveness_InterventionEffectivenessRatingType] on [edfi].[InterventionStudyInterventionEffectiveness]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudyInterventionEffectiveness_InterventionEffectivenessRatingType] ON [edfi].[InterventionStudyInterventionEffectiveness] ([InterventionEffectivenessRatingTypeId])
GO
PRINT N'Creating index [FK_InterventionStudyInterventionEffectiveness_InterventionStudy] on [edfi].[InterventionStudyInterventionEffectiveness]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudyInterventionEffectiveness_InterventionStudy] ON [edfi].[InterventionStudyInterventionEffectiveness] ([InterventionStudyIdentificationCode], [EducationOrganizationId])
GO
PRINT N'Creating index [FK_InterventionStudyInterventionEffectiveness_PopulationServedType] on [edfi].[InterventionStudyInterventionEffectiveness]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudyInterventionEffectiveness_PopulationServedType] ON [edfi].[InterventionStudyInterventionEffectiveness] ([PopulationServedTypeId])
GO

PRINT N'Adding constraints to [edfi].[InterventionStudyInterventionEffectiveness]'
GO
ALTER TABLE [edfi].[InterventionStudyInterventionEffectiveness] ADD CONSTRAINT [InterventionStudyInterventionEffectiveness_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

