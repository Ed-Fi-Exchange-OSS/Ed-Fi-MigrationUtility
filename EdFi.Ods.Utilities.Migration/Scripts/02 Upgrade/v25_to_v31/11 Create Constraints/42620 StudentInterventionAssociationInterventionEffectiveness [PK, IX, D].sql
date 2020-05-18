-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentInterventionAssociationInterventionEffectiveness_PK] on [edfi].[StudentInterventionAssociationInterventionEffectiveness]'
GO
ALTER TABLE [edfi].[StudentInterventionAssociationInterventionEffectiveness] ADD CONSTRAINT [StudentInterventionAssociationInterventionEffectiveness_PK] PRIMARY KEY CLUSTERED  ([DiagnosisDescriptorId], [EducationOrganizationId], [GradeLevelDescriptorId], [InterventionIdentificationCode], [PopulationServedDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentInterventionAssociationInterventionEffectiveness_DiagnosisDescriptor] on [edfi].[StudentInterventionAssociationInterventionEffectiveness]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentInterventionAssociationInterventionEffectiveness_DiagnosisDescriptor] ON [edfi].[StudentInterventionAssociationInterventionEffectiveness] ([DiagnosisDescriptorId])
GO

PRINT N'Creating index [FK_StudentInterventionAssociationInterventionEffectiveness_StudentInterventionAssociation] on [edfi].[StudentInterventionAssociationInterventionEffectiveness]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentInterventionAssociationInterventionEffectiveness_StudentInterventionAssociation] ON [edfi].[StudentInterventionAssociationInterventionEffectiveness] ([EducationOrganizationId], [InterventionIdentificationCode], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentInterventionAssociationInterventionEffectiveness_GradeLevelDescriptor] on [edfi].[StudentInterventionAssociationInterventionEffectiveness]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentInterventionAssociationInterventionEffectiveness_GradeLevelDescriptor] ON [edfi].[StudentInterventionAssociationInterventionEffectiveness] ([GradeLevelDescriptorId])
GO

PRINT N'Creating index [FK_StudentInterventionAssociationInterventionEffectiveness_InterventionEffectivenessRatingDescriptor] on [edfi].[StudentInterventionAssociationInterventionEffectiveness]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentInterventionAssociationInterventionEffectiveness_InterventionEffectivenessRatingDescriptor] ON [edfi].[StudentInterventionAssociationInterventionEffectiveness] ([InterventionEffectivenessRatingDescriptorId])
GO

PRINT N'Creating index [FK_StudentInterventionAssociationInterventionEffectiveness_PopulationServedDescriptor] on [edfi].[StudentInterventionAssociationInterventionEffectiveness]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentInterventionAssociationInterventionEffectiveness_PopulationServedDescriptor] ON [edfi].[StudentInterventionAssociationInterventionEffectiveness] ([PopulationServedDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentInterventionAssociationInterventionEffectiveness]'
GO
ALTER TABLE [edfi].[StudentInterventionAssociationInterventionEffectiveness] ADD CONSTRAINT [StudentInterventionAssociationInterventionEffectiveness_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
