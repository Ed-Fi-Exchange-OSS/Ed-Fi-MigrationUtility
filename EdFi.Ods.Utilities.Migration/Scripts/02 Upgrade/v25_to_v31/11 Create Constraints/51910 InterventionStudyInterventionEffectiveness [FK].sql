-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[InterventionStudyInterventionEffectiveness]'
GO
ALTER TABLE [edfi].[InterventionStudyInterventionEffectiveness] ADD CONSTRAINT [FK_InterventionStudyInterventionEffectiveness_DiagnosisDescriptor] FOREIGN KEY ([DiagnosisDescriptorId]) REFERENCES [edfi].[DiagnosisDescriptor] ([DiagnosisDescriptorId])
GO
ALTER TABLE [edfi].[InterventionStudyInterventionEffectiveness] ADD CONSTRAINT [FK_InterventionStudyInterventionEffectiveness_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId]) REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO
ALTER TABLE [edfi].[InterventionStudyInterventionEffectiveness] ADD CONSTRAINT [FK_InterventionStudyInterventionEffectiveness_InterventionEffectivenessRatingDescriptor] FOREIGN KEY ([InterventionEffectivenessRatingDescriptorId]) REFERENCES [edfi].[InterventionEffectivenessRatingDescriptor] ([InterventionEffectivenessRatingDescriptorId])
GO
ALTER TABLE [edfi].[InterventionStudyInterventionEffectiveness] ADD CONSTRAINT [FK_InterventionStudyInterventionEffectiveness_InterventionStudy] FOREIGN KEY ([EducationOrganizationId], [InterventionStudyIdentificationCode]) REFERENCES [edfi].[InterventionStudy] ([EducationOrganizationId], [InterventionStudyIdentificationCode]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[InterventionStudyInterventionEffectiveness] ADD CONSTRAINT [FK_InterventionStudyInterventionEffectiveness_PopulationServedDescriptor] FOREIGN KEY ([PopulationServedDescriptorId]) REFERENCES [edfi].[PopulationServedDescriptor] ([PopulationServedDescriptorId])
GO
