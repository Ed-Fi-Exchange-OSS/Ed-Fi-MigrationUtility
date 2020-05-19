-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionPrescriptionDiagnosis_PK] on [edfi].[InterventionPrescriptionDiagnosis]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionDiagnosis] ADD CONSTRAINT [InterventionPrescriptionDiagnosis_PK] PRIMARY KEY CLUSTERED  ([DiagnosisDescriptorId], [EducationOrganizationId], [InterventionPrescriptionIdentificationCode])
GO

PRINT N'Creating index [FK_InterventionPrescriptionDiagnosis_DiagnosisDescriptor] on [edfi].[InterventionPrescriptionDiagnosis]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPrescriptionDiagnosis_DiagnosisDescriptor] ON [edfi].[InterventionPrescriptionDiagnosis] ([DiagnosisDescriptorId])
GO

PRINT N'Creating index [FK_InterventionPrescriptionDiagnosis_InterventionPrescription] on [edfi].[InterventionPrescriptionDiagnosis]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionPrescriptionDiagnosis_InterventionPrescription] ON [edfi].[InterventionPrescriptionDiagnosis] ([EducationOrganizationId], [InterventionPrescriptionIdentificationCode])
GO

PRINT N'Adding constraints to [edfi].[InterventionPrescriptionDiagnosis]'
GO
ALTER TABLE [edfi].[InterventionPrescriptionDiagnosis] ADD CONSTRAINT [InterventionPrescriptionDiagnosis_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
