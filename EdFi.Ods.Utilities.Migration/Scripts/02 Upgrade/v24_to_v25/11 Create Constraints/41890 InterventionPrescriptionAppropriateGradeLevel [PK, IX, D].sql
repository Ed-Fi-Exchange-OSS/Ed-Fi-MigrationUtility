-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionPrescriptionAppropriateGradeLevel_PK] on [edfi].[InterventionPrescriptionAppropriateGradeLevel]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionAppropriateGradeLevel] ADD CONSTRAINT [InterventionPrescriptionAppropriateGradeLevel_PK] PRIMARY KEY CLUSTERED  ([InterventionPrescriptionIdentificationCode], [EducationOrganizationId], [GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_InterventionPrescriptionAppropriateGradeLevel_GradeLevelDescriptor] on [edfi].[InterventionPrescriptionAppropriateGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPrescriptionAppropriateGradeLevel_GradeLevelDescriptor] ON [edfi].[InterventionPrescriptionAppropriateGradeLevel] ([GradeLevelDescriptorId])
GO
PRINT N'Creating index [FK_InterventionPrescriptionAppropriateGradeLevel_InterventionPrescription] on [edfi].[InterventionPrescriptionAppropriateGradeLevel]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPrescriptionAppropriateGradeLevel_InterventionPrescription] ON [edfi].[InterventionPrescriptionAppropriateGradeLevel] ([InterventionPrescriptionIdentificationCode], [EducationOrganizationId])
GO

PRINT N'Adding constraints to [edfi].[InterventionPrescriptionAppropriateGradeLevel]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionAppropriateGradeLevel] ADD CONSTRAINT [InterventionPrescriptionAppropriateGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

